import std/[
  os,
  algorithm,
  times,
  sets,
  memfiles,
  tables,
  options,
  strutils,
]

import crunchy
import zstd/[compress, decompress]

import blockstore
import crypto


const
  dbSize* = 1_000_000 # 1 million entries per database
  internalSmallBlockSize = 4096
  filedbExt = ".filedb"

const
  shiftIsInSmallBlock = 15
  maskIsInSmallBlock = 1 shl shiftIsInSmallBlock

  shiftIsCompressed = 14
  maskIsCompressed = 1 shl shiftIsCompressed

  shiftBlockOffset = 11
  maskBlockOffset = (1 shl (shiftBlockOffset + 1)) - 1


# TODO: Construct a flat hash index to be stored in a file later. Hash -> FileIndex to check for file existence quicker
#       Current plan for the structure would be to imply a tree of 2 subdivisions per crc32 byte with the implied leaf nodes acting as heads for linked lists
#       May be turned into a full tree if this isn't fast enough

type
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

  FileDbChunk* = object
    raw*: ptr array[dbSize, FileEntry]
    selfManaged: bool
    # salt and password hash are appended to the end of the chunk
    salt: Salt
    pwHash: PwHash
    path: string

  FileDb* = object
    store*: BlockStore
    chunks*: seq[FileDbChunk]
    smallFileQueue: seq[SmallFileInfo]
    dbPath*: string
    knownCrcs: HashSet[uint32]
    knownHashes: HashSet[array[32, byte]] # TODO: Replace with something more efficient?
    nextEntryIndex: FileIndex
    masterKey: MasterKey
    pwHash: PwHash


doAssert sizeof(FileEntry) == 54, "was " & $(sizeof(FileEntry))


proc `=destroy`(db: FileDb) =
  for chunk in db.chunks:
    if chunk.selfManaged and chunk.raw != nil:
      dealloc(chunk.raw)


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
  var highestBlockId = 0
  for i in 0 ..< dbSize:
    if db.chunks[0].raw[i].fileSize == 0:
      return BlockId(highestBlockId + 1)
    elif db.chunks[0].raw[i].blockId.int > highestBlockId:
      highestBlockId = db.chunks[0].raw[i].blockId.int
  raiseAssert "Failed to find a block id"

proc searchTailIndex(db: FileDb): FileIndex =
  for i in 0 ..< dbSize:
    if db.chunks[0].raw[i].fileSize == 0:
      return i
  raiseAssert "Failed to find tail index"

proc advanceFileIndex(db: var FileDb): FileIndex =
  result = db.nextEntryIndex
  inc db.nextEntryIndex


proc submitFileToStore(db: var FileDb, data: openArray[byte]): BlockId =
  # TODO: Use memfiles here too?
  result = db.store.requestBlockId()
  let encryptedData = db.masterKey.encryptData(result.SubkeyId, data)
  db.store.submitRawBlockToStore(result, encryptedData)

proc loadBlockFromStore(db: FileDb, blockId: BlockId): seq[byte] =
  var inData = db.store.loadRawBlockFromStore(blockId)
  db.masterKey.decryptData(blockId.SubkeyId, inData.toOpenArrayByte(inData.low, inData.high))

# TODO: Maybe return slices instead
# TODO: Maybe use intervals instead of offsetsAndSizes
iterator iterOffsetsFromSmallBlock(db: FileDb, blockId: BlockId, offsetsAndSizes: seq[tuple[offset: int, size: int]]): seq[byte] =
  let blockData = db.loadBlockFromStore(blockId)
  for (offset, size) in offsetsAndSizes:
    yield blockData[offset ..< offset + size]

iterator iterSmallBlockDataByIndices(db: FileDb, blockId: BlockId, indices: seq[FileIndex]): seq[byte] =
  # TODO: The series of loops could be optimized into a single one by keeping the block around and acting on it instead
  var offsetsAndSizes = newSeq[tuple[offset, size: int]]()
  for i in indices:
    let entry = db.chunks[0].raw[i]
    if entry.blockId != blockId:
      raiseAssert "Expected files from block " & $blockId & " but got " & $entry.blockId
    if not entry.isInSmallBlock:
      raiseAssert "Expected files from a small block"
    offsetsAndSizes.add((offset : entry.blockOffset().int, size : entry.fileSize().int))
  for data in db.iterOffsetsFromSmallBlock(blockId, offsetsAndSizes):
    yield data

# TODO: Should the file layer even handle this?
proc restoreSmallFilesFromStore*(db: FileDb, indices: seq[FileIndex], toPaths: seq[(string, set[FilePermission])]) =
  if not indices.len() == toPaths.len():
    raiseAssert "Tried restoring entries to paths with mismatching counts"
  # TODO: This could be replaced by a sort algorithm to save on allocations and indirection (sort by blockId)
  var blockTable = initTable[BlockId, tuple[indices: seq[FileIndex], paths: seq[(string, set[FilePermission])]]]()
  for i in 0 ..< indices.len():
    let blockId = db.chunks[0].raw[indices[i]].blockId
    if blockId notin blockTable:
      blockTable[blockId] = (indices : @[indices[i]], paths : @[toPaths[i]])
    else:
      blockTable[blockId].indices.add(indices[i])
      blockTable[blockId].paths.add(toPaths[i])
  for blockId, info in blockTable:
    var i = 0
    for data in db.iterSmallBlockDataByIndices(blockId, info.indices):
      if db.chunks[0].raw[info.indices[i]].isCompressed:
        writeFile(info.paths[i][0], data.decompress())
      else:
        writeFile(info.paths[i][0], data)
      setFilePermissions(info.paths[i][0], info.paths[i][1])
      inc i
    doAssert i == info.paths.len()

proc restoreBigFileFromStore*(db: FileDb, index: FileIndex, toPath: string, perms: set[FilePermission]) =
  if db.chunks[0].raw[index].isInSmallBlock:
    raiseAssert "Expected a file that isn't part of a small block"
  if db.chunks[0].raw[index].isCompressed:
    writeFile(toPath, db.loadBlockFromStore(db.chunks[0].raw[index].blockId).decompress())
  else:
    writeFile(toPath, db.loadBlockFromStore(db.chunks[0].raw[index].blockId))
  toPath.setFilePermissions(perms)


proc insertFile*(db: var FileDb, filePath: string): FileIndex =
  var rawPtr = memfiles.open(filePath)
  defer: rawPtr.close()
  if rawPtr.size == 0:
    raiseAssert "Bad file size"

  let crc32 = crc32(rawPtr.mem, rawPtr.size)

  var
    computedSha = false
    sha256 = default(array[32, byte])

  if crc32 in db.knownCrcs:
    sha256 = sha256(rawPtr.mem, rawPtr.size)
    computedSha = true
    for i in 0 ..< dbSize:
      if db.chunks[0].raw[i].crc32 == crc32 and db.chunks[0].raw[i].sha256 == sha256:
        return i

  if not computedSha:
    sha256 = sha256(rawPtr.mem, rawPtr.size)
  db.knownCrcs.incl(crc32)
  db.knownHashes.incl(sha256)

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
    entry.blockId = db.submitFileToStore(
      (
        if shouldCompress:
          compressedData.toOpenArray(compressedData.low, compressedData.high)
        else:
          cast[ptr UncheckedArray[byte]](rawPtr.mem).toOpenArray(0, rawPtr.size - 1)
      ),
    )
  db.chunks[0].raw[result] = entry

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

  for bucket in filledBuckets:
    var page = newSeq[byte](smallBlockSize())
    var pageOffset = 0u64
    for info in bucket[1]:
      let sourceData = readFile(info.sourcePath)
      if db.chunks[0].raw[info.index].isCompressed:
        let outData = compress(sourceData.toOpenArrayByte(sourceData.low, sourceData.high))
        copyMem(addr page[pageOffset], addr outData[0], outData.len())
      else:
        copyMem(addr page[pageOffset], addr sourceData[0], sourceData.len())

      db.chunks[0].raw[info.index].rawBlockOffset = pageOffset.uint16
      inc pageOffset, db.chunks[0].raw[info.index].fileSize

    let assignedBlockId = db.submitFileToStore(page.toOpenArray(page.low, pageOffset.int - 1))
    for info in bucket[1]:
      db.chunks[0].raw[info.index].blockId = assignedBlockId

  reset db.smallFileQueue

template transaction*(db: var FileDb, body: untyped): untyped =
  body
  db.commit()


proc allocNewFileDbChunk(path: string, pwHash: PwHash): FileDbChunk =
  let
    salt = generateSalt()
    buff = create(array[dbSize, FileEntry])

  FileDbChunk(
    raw : buff,
    selfManaged : true,
    salt : salt,
    pwHash : pwHash,
    path : path,
  )


proc loadFileDbChunkFromFile(path: string, password: string): FileDbChunk =
  var
    buff = create(array[dbSize, FileEntry])
    fileData = decompress(readFile(path))
    storedSalt = default(Salt)
    storedPwHash = default(PwHash)
  storedSalt.string.setLen(saltSize)

  copyMem(buff, addr fileData[0], sizeof(array[dbSize, FileEntry]))
  copyMem(addr storedSalt.string[0], addr fileData[sizeof(array[dbSize, FileEntry])], saltSize)
  copyMem(addr storedPwHash.asArray()[0], addr fileData[sizeof(array[dbSize, FileEntry]) + saltSize], pwHashSize)
  if not verifyPassword(storedPwHash, password): # TODO: Should the hash be refreshed every time db is saved?
    raiseAssert "Wrong password for filedb chunk " & path

  FileDbChunk(
    raw : buff,
    selfManaged : true,
    salt : storedSalt,
    pwHash : storedPwHash,
    path : path,
  )

# TODO: Don't keep password in memory for too long. Change key validation?
proc openFileDb*(dbPath: string, storePath: string, password: string): FileDb =
  if sodiumInit() < 0:
    echo "Sodium failed to init"
    quit(1)
  createDir(storePath)
  let pwHash = hashPassword(password)

  # TODO: Fully handle multiple db chunks
  var chunks = newSeq[FileDbChunk]()
  for path in walkPattern(dbPath.joinPath("*.filedb")):
    let num = path.splitFile.name.parseInt()
    let i = num - 1 # nums start at 1
    if num > chunks.len(): chunks.setLen(num) # !! We allow gaps here but trying to access a chunk that isn't loaded must error
    chunks[i] = loadFileDbChunkFromFile(dbPath.joinPath($num & filedbExt), password)
  if chunks.len() == 0:
    chunks.add allocNewFileDbChunk(dbPath.joinPath("1.filedb"), pwHash)

  var saltZero = chunks[0].salt # TODO: Derive a fresh master key for each chunk?
  result = FileDb(
    store : BlockStore(
      path : storePath,
    ),
    chunks : ensureMove chunks,
    dbPath : dbPath,
    masterKey : deriveMasterKey(password, saltZero),
    knownCrcs : initHashSet[uint32](),
    knownHashes : initHashSet[array[32, byte]](),
    pwHash : pwHash,
  )
  result.store.nextBlockId = result.searchNextBlockId()
  result.nextEntryIndex = result.searchTailIndex()

  for i in 0 ..< result.nextEntryIndex:
    result.knownCrcs.incl(result.chunks[0].raw[i].crc32)
    result.knownHashes.incl(result.chunks[0].raw[i].sha256)

proc save*(db: var FileDb) =
  db.store.save(some db.dbPath)
  for i in 0 ..< db.chunks.len():
    if db.chunks[i].raw.isNil(): continue # skip chunks that aren't loaded
    var outBuff = newString(sizeof(array[dbSize, FileEntry]) + saltSize + pwHashSize)
    copyMem(addr outBuff[0], db.chunks[i].raw, sizeof(array[dbSize, FileEntry]))
    copyMem(addr outBuff[sizeof(array[dbSize, FileEntry])], addr db.chunks[i].salt.string[0], saltSize)
    copyMem(addr outBuff[sizeof(array[dbSize, FileEntry]) + saltSize], addr db.chunks[i].pwHash.asArray()[0], pwHashSize)

    writeFile(joinPath(db.dbPath, $(i + 1) & filedbExt), compress(outBuff))


when isMainModule:
  import std/[
    strutils,
  ]

  var db = openFileDb(
    "/tmp/storage_tools/db",
    "/tmp/storage_tools/db/store",
    "test",
  )

  var startTime = cpuTime()

  db.transaction:
    for x in walkDirRec("."):
      if getFileSize(x) > 0:
        discard db.insertFile(x)

  var totalFiles = 0
  for i in 0 ..< dbSize:
    if db.chunks[0].raw[i].fileSize == 0:
      totalFiles = i
      break
  #  echo db.entries[i], " ", db.entries[i].isInSmallBlock, " ", db.entries[i].isCompressed, " ", db.entries[i].fileSize.int64.formatSize(), " ", db.entries[i].blockOffset

  echo "insert count: ", totalFiles
  echo "time: ", $(cpuTime() - startTime)
  #db.save()
