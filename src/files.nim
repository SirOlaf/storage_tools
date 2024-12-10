import std/[
  os,
  algorithm,
  times,
  sets,
]

import crunchy
import zstd/[compress, decompress]

import crypto


const
  dbSize* = 1_000_000 # 1 million entries per database
  internalSmallBlockSize = 4096

const
  shiftIsInSmallBlock = 15
  maskIsInSmallBlock = 1 shl shiftIsInSmallBlock

  shiftIsCompressed = 14
  maskIsCompressed = 1 shl shiftIsCompressed

  shiftBlockOffset = 11
  maskBlockOffset = (1 shl (shiftBlockOffset + 1)) - 1


type
  BlockId = uint32

  FileEntry* {.packed.} = object
    timestamp*: uint64
    blockId*: BlockId # used as a filename, multiple entries can have the same id as long as the offset is different
    crc32*: uint32
    sha256*: array[32, byte]
    internalFileSize: uint32 # may be extended by blockOffset
    internalBlockOffset: uint16 # only need 11 bits for storage, offset into a block of size smallBlockSize otherwise 0
      # mask 1 << 15: isInSmallBlock, if 0, 11 lsb are used as the lsb for fileSize
      # mask 1 << 14: isCompressed

  SmallFileInfo = object
    crc32: uint32
    sha256: array[32, byte]
    sourcePath: string
    finalSize: uint64
    shouldCompress: bool

  FileDb* = object
    entries: ptr array[dbSize, FileEntry]
    smallFileQueue: seq[SmallFileInfo]
    masterKey: MasterKey
    storePath: string
    tmpKnownHashes: HashSet[array[32, byte]] # TODO: REMOVE, ONLY FOR DEBUGGING


doAssert sizeof(FileEntry) == 54, "was " & $(sizeof(FileEntry))


proc smallBlockSize(): uint64 {.inline.} = internalSmallBlockSize - secretstreamOverhead()


proc isInSmallBlock*(entry: FileEntry): bool {.inline.} =
  (entry.internalBlockOffset and maskIsInSmallBlock) != 0

proc `isInSmallBlock=`(entry: var FileEntry, x: bool) {.inline.} =
  entry.internalBlockOffset = entry.internalBlockOffset or (x.uint16 shl shiftIsInSmallBlock)


proc isCompressed*(entry: FileEntry): bool {.inline.} =
  (entry.internalBlockOffset and maskIsCompressed) != 0

proc `isCompressed=`(entry: var FileEntry, x: bool) {.inline.} =
  entry.internalBlockOffset = entry.internalBlockOffset or (x.uint16 shl shiftIsCompressed)


proc rawBlockOffset(entry: FileEntry): uint16 {.inline.} =
  entry.internalBlockOffset and maskBlockOffset

proc `rawBlockOffset=`(entry: var FileEntry, x: uint16) {.inline.} =
  doAssert (x and maskBlockOffset) == x, $x
  entry.internalBlockOffset = entry.internalBlockOffset or (x and maskBlockOffset)

proc blockOffset*(entry: FileEntry): uint16 {.inline.} =
  if entry.isInSmallBlock:
    entry.rawBlockOffset
  else:
    0



proc getTimestamp(): int = now().utc().toTime().toUnix()

proc fileSize*(entry: FileEntry): uint64 {.inline.} =
  if entry.isInSmallBlock:
    entry.internalFileSize.uint64
  else:
    (entry.internalFileSize.uint64 shl shiftBlockOffset) or (entry.rawBlockOffset)

proc `fileSize=`(entry: var FileEntry, x: uint64) {.inline.} =
  if entry.isInSmallBlock:
    entry.internalFileSize = x.uint32
  else:
    entry.rawBlockOffset = (x and maskBlockOffset).uint16
    entry.internalFileSize = (x shr shiftBlockOffset).uint32


proc nextBlockId(db: FileDb): BlockId =
  var res = -1
  for i in 0 ..< dbSize:
    if db.entries[i].fileSize == 0:
      return BlockId(res + 1)
    res = i
  raiseAssert "Failed to find a block id"

proc findTailIndex(db: FileDb): int =
  for i in 0 ..< dbSize:
    if db.entries[i].fileSize == 0:
      return i
  raiseAssert "Failed to find tail index"

proc putDbEntryBigFile(db: var Filedb, crc32: uint32, sha256: array[32, byte], finalSize: uint32, compressed: bool, blockId: BlockId, dbIdx: int) =
  var entry = FileEntry(
    timestamp : getTimestamp().uint64,
    blockId : blockId,
    crc32 : crc32,
    sha256 : sha256,
  )
  entry.isInSmallBlock = false
  entry.fileSize = finalSize
  entry.isCompressed = compressed
  db.entries[dbIdx] = entry

proc insertFile*(db: var FileDb, filePath: string) =
  # TODO: Disallow empty files, they should be handled by the archive layer
  let rawData = readFile(filePath)
  if rawData.len() == 0:
    raiseAssert "Bad file size"

  let
    crc32 = rawData.crc32()
    sha256 = rawData.sha256()

  if sha256 in db.tmpKnownHashes:
    return
  db.tmpKnownHashes.incl(sha256)

  let compressedData = compress(rawData)
  let relevantSize = block:
    let compressedSize = compressedData.len()
    if compressedSize < rawData.len():
      compressedSize
    else:
      rawData.len()
  let shouldCompress = relevantSize < rawData.len()

  # TODO: Deduplicate in both branches
  if relevantSize.uint < smallBlockSize() div 2:
    db.smallFileQueue.add(SmallFileInfo(
      crc32 : crc32,
      sha256 : sha256,
      sourcePath : filePath,
      finalSize : relevantSize.uint,
      shouldCompress : shouldCompress,
    ))
  else:
    var entry = FileEntry(
      timestamp : getTimestamp().uint64,
      blockId : db.nextBlockId(),
      crc32 : crc32,
      sha256 : sha256,
    )
    entry.isInSmallBlock = false
    entry.fileSize = relevantSize.uint
    entry.isCompressed = shouldCompress
    db.entries[db.findTailIndex] = entry

    let encryptedData = db.masterKey.encryptData(
      entry.blockId.SubkeyId,
      (
        if shouldCompress:
          compressedData.toOpenArray(compressedData.low, compressedData.high)
        else:
          rawData.toOpenArrayByte(rawData.low, rawData.high)
      ),
    )
    writeFile(joinPath(db.storePath, $entry.blockId), encryptedData)

proc commit*(db: var FileDb) =
  var
    bucket = (0u64, newSeq[SmallFileInfo]())
    filledBuckets = newSeq[(uint64, seq[SmallFileInfo])]()
    smallFiles = db.smallFileQueue.sortedByIt(it.finalSize)

  for i in 0 ..< smallFiles.len():
    if smallFiles[i].finalSize > smallBlockSize() div 2:
      raiseAssert "Invalid file size during commit"
    let spaceLeft = smallBlockSize() - bucket[0]
    if spaceLeft.uint64 >= smallFiles[i].finalSize:
      bucket[0] += smallFiles[i].finalSize
      bucket[1].add(smallFiles[i])
    else:
      filledBuckets.add(bucket)
      bucket = (smallFiles[i].finalSize, @[smallFiles[i]])
  if bucket[0] != 0:
    filledBuckets.add(bucket)

  var
    blockId = db.nextBlockId()
    tailIdx = db.findTailIndex()
  for bucket in filledBuckets:

    var page = newSeq[byte](smallBlockSize())
    var pageOffset = 0u64
    for info in bucket[1]:
      if tailIdx >= dbSize:
        raiseAssert "Database is full. Multifile db is not ready yet"
      let sourceData = readFile(info.sourcePath)
      let outData = compress(sourceData.toOpenArrayByte(sourceData.low, sourceData.high))
      copyMem(addr page[pageOffset], addr outData[0], outData.len())

      var entry = FileEntry(
        timestamp : getTimestamp().uint64,
        blockId : blockId,
        crc32 : info.crc32,
        sha256 : info.sha256,
        internalFileSize : info.finalSize.uint32,
        internalBlockOffset : pageOffset.uint16,
      )
      entry.isInSmallBlock = true
      entry.isCompressed = info.shouldCompress
      db.entries[tailIdx] = entry
      inc pageOffset, info.finalSize
      inc tailIdx

    let encryptedData = db.masterKey.encryptData(
      blockId.SubkeyId,
      page,
    )
    writeFile(joinPath(db.storePath, $blockId), encryptedData)

    inc blockId

  reset db.smallFileQueue

template transaction(db: var FileDb, body: untyped): untyped =
  body
  db.commit()



when isMainModule:
  import std/[
    strutils,
  ]

  #var dbFileData = readFile("/tmp/storage_tools/db/1.filedb")

  var dbRaw = default(array[dbSize, FileEntry])
  #copyMem(addr dbRaw[0], addr dbFileData[0], dbFileData.len())

  var db = FileDb(entries : addr dbRaw, storePath : "/tmp/storage_tools/db/store")
  createDir(db.storePath)

  var i = 0
  db.transaction:
    for x in walkDirRec("."):
      if getFileSize(x) > 0:
        db.insertFile(x)
        inc i

  for i in 0 ..< dbSize:
    if db.entries[i].fileSize == 0:
      break
    echo db.entries[i], " ", db.entries[i].isInSmallBlock, " ", db.entries[i].isCompressed, " ", db.entries[i].fileSize.int64.formatSize(), " ", db.entries[i].blockOffset

  echo "insert count: ", i
  #writeFile("/tmp/storage_tools/db/1.filedb", cast[ptr array[sizeof(dbRaw), byte]](addr dbRaw)[])
