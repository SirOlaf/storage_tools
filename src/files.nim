import std/[
  os,
  algorithm,
  times,
  sets,
  memfiles,
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

# Every bottom level folder contains 1000 files, mid level folders each contain 100 bottom folders.
# Top level store contains an arbitrary number of mid level folders.
# Thus, every mid level folder will contain a total of 100k files
const
  StoreInnerFolderCount = 100
  StoreInnerFolderFileCount = 1000
  StoreMidFolderFileCount = StoreInnerFolderCount * StoreInnerFolderFileCount


type
  BlockId = uint32
  FileIndex* = int

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
    sourcePath: string
    index: int64
    finalSize: uint64

  FileDb* = object
    entries: ptr array[dbSize, FileEntry]
    smallFileQueue: seq[SmallFileInfo]
    masterKey: MasterKey
    storePath: string
    tmpKnownHashes: HashSet[array[32, byte]] # TODO: REMOVE, ONLY FOR DEBUGGING
    nextBlockId: BlockId
    nextEntryIndex: FileIndex


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



proc getTimestamp(): int {.inline.} = now().utc().toTime().toUnix()

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


proc searchNextBlockId(db: FileDb): BlockId =
  var res = -1
  for i in 0 ..< dbSize:
    if db.entries[i].fileSize == 0:
      return BlockId(res + 1)
    res = i
  raiseAssert "Failed to find a block id"

proc searchTailIndex(db: FileDb): FileIndex =
  for i in 0 ..< dbSize:
    if db.entries[i].fileSize == 0:
      return i
  raiseAssert "Failed to find tail index"

proc advanceBlockId(db: var FileDb): BlockId =
  result = db.nextBlockId
  inc db.nextBlockId

proc advanceFileIndex(db: var FileDb): FileIndex =
  result = db.nextEntryIndex
  inc db.nextEntryIndex


proc calcMidFolderId(blockId: BlockId): int {.inline.} =
  let blockId = blockId.int - 1
  blockId div StoreMidFolderFileCount

proc calcBottomFolderId(blockId: BlockId): int {.inline.} =
  let blockId = blockId.int - 1
  (blockId mod StoreMidFolderFileCount) div StoreInnerFolderFileCount

proc submitFileToStore(db: FileDb, blockId: BlockId, data: openArray[byte]) =
  # TODO: Use memfiles here too?
  let encryptedData = db.masterKey.encryptData(blockId.SubkeyId, data)

  let
    midFolderId = calcMidFolderId(blockId)
    bottomFolderId = calcBottomFolderId(blockId)

  var destDir = db.storePath.joinPath($midFolderId).joinPath($bottomFolderId)
  createDir(destDir)
  writeFile(joinPath(destDir, $blockId), encryptedData)


proc insertFile*(db: var FileDb, filePath: string): FileIndex =
  # TODO: Deduplicate files (and return existing index?)
  var rawPtr = memfiles.open(filePath)
  defer: rawPtr.close()
  if rawPtr.size == 0:
    raiseAssert "Bad file size"

  let
    crc32 = crc32(rawPtr.mem, rawPtr.size)
    sha256 = sha256(rawPtr.mem, rawPtr.size)

  if sha256 in db.tmpKnownHashes:
    return
  db.tmpKnownHashes.incl(sha256)

  var compressedData = compress(cast[ptr UncheckedArray[byte]](rawPtr.mem).toOpenArray(0, rawPtr.size - 1))
  let relevantSize = block:
    let compressedSize = compressedData.len()
    if compressedSize < rawPtr.size:
      compressedSize
    else:
      rawPtr.size
  let shouldCompress = relevantSize < rawPtr.size
  if not shouldCompress:
    compressedData.setLen(0)

  var entry = FileEntry(
    timestamp : getTimestamp().uint64,
    crc32 : crc32,
    sha256 : sha256,
  )
  entry.isInSmallBlock = relevantSize.uint < smallBlockSize() div 2
  entry.fileSize = relevantSize.uint
  entry.isCompressed = shouldCompress
  result = db.advanceFileIndex()

  if relevantSize.uint < smallBlockSize() div 2:
    db.smallFileQueue.add(SmallFileInfo(
      sourcePath : filePath,
      index : result,
      finalSize : relevantSize.uint,
    ))
  else:
    entry.blockId = db.advanceBlockId()
    db.submitFileToStore(
      entry.blockid,
      (
        if shouldCompress:
          compressedData.toOpenArray(compressedData.low, compressedData.high)
        else:
          cast[ptr UncheckedArray[byte]](rawPtr.mem).toOpenArray(0, rawPtr.size - 1)
      ),
    )
  db.entries[result] = entry

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

  var blockId = db.advanceBlockId()
  for bucket in filledBuckets:
    var page = newSeq[byte](smallBlockSize())
    var pageOffset = 0u64
    for info in bucket[1]:
      let sourceData = readFile(info.sourcePath)
      let outData = compress(sourceData.toOpenArrayByte(sourceData.low, sourceData.high))
      copyMem(addr page[pageOffset], addr outData[0], outData.len())

      db.entries[info.index].rawBlockOffset = pageOffset.uint16
      db.entries[info.index].blockId = blockid
      inc pageOffset, db.entries[info.index].fileSize

    db.submitFileToStore(blockId, page.toOpenArray(page.low, pageOffset.int - 1))

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

  var db = FileDb(
    entries : addr dbRaw,
    storePath : "/tmp/storage_tools/db/store",
    masterKey : deriveMasterKey("test", generateSalt())
  )
  db.nextBlockId = db.searchNextBlockId()
  db.nextEntryIndex = db.searchTailIndex()

  createDir(db.storePath)

  var startTime = cpuTime()

  for i in 0 ..< 900_000:
    db.entries[i] = FileEntry(internalFileSize : 1000)
  db.nextBlockId = db.searchNextBlockId()
  db.nextEntryIndex = db.searchTailIndex()

  db.transaction:
    for x in walkDirRec("."):
      if getFileSize(x) > 0:
        discard db.insertFile(x)

  var totalFiles = 0
  for i in 0 ..< dbSize:
    if db.entries[i].fileSize == 0:
      totalFiles = i
      break
  #  echo db.entries[i], " ", db.entries[i].isInSmallBlock, " ", db.entries[i].isCompressed, " ", db.entries[i].fileSize.int64.formatSize(), " ", db.entries[i].blockOffset

  echo "insert count: ", totalFiles
  echo "time: ", $(cpuTime() - startTime)
  #writeFile("/tmp/storage_tools/db/1.filedb", cast[ptr array[sizeof(dbRaw), byte]](addr dbRaw)[])
