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
  maskIsInSmallBlock: uint16 = 1 shl shiftIsInSmallBlock

  shiftIsCompressed = 14
  maskIsCompressed: uint16 = 1 shl shiftIsCompressed

  shiftBlockOffset = 12
  maskBlockOffset: uint16 = (1 shl shiftBlockOffset) - 1


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
    internalFileSize: uint32 # may be extended by blockOffset for a total of 44 bits after extension
    internalBlockOffset: uint16 # only need 12 bits for storage, offset into a block of size smallBlockSize otherwise 0
      # mask 1 << 15: isInSmallBlock, if 0, 12 lsb are used as the lsb for fileSize
      # mask 1 << 14: isCompressed
      # mask 1 << 13: reserved
      # mask 1 << 12: reserved
      # bits 11 to 0: For small files an offset into a block, otherwise used to extend internalFileSize to 44 bits.

  SmallFileInfo = object
    sourcePath: string
    index: int64
    finalSize: uint64

  FileEntryArray = array[dbSize, FileEntry]
  RawChunks = object
    raw: seq[ptr FileEntryArray]
  FileDb* = object
    store*: BlockStore
    rawChunks: RawChunks
    smallFileQueue: seq[SmallFileInfo]
    dbPath*: string
    knownCrcs: HashSet[uint32]
    knownHashes: HashSet[array[32, byte]] # TODO: Replace with something more efficient?
    nextEntryIndex: FileIndex
    masterKey: MasterKey
    # salt and password hash are appended to the end of the first chunk
    salt: Salt
    pwHash: PwHash


static: doAssert sizeof(FileEntry) == 54, "was " & $(sizeof(FileEntry))


proc `=destroy`(db: FileDb) =
  for i in 0 ..< db.rawChunks.raw.len():
    dealloc(db.rawChunks.raw[i])


proc smallBlockSize(): uint64 {.inline.} = internalSmallBlockSize - secretstreamOverhead()


proc isInSmallBlock*(entry: FileEntry): bool {.inline.} =
  (entry.internalBlockOffset and maskIsInSmallBlock) != 0

proc `isInSmallBlock=`(entry: var FileEntry, x: bool) {.inline.} =
  entry.internalBlockOffset = entry.internalBlockOffset and (not maskIsInSmallBlock)
  if x:
    entry.internalBlockOffset = entry.internalBlockOffset or maskIsInSmallBlock


proc isCompressed*(entry: FileEntry): bool {.inline.} =
  (entry.internalBlockOffset and maskIsCompressed) != 0

proc `isCompressed=`(entry: var FileEntry, x: bool) {.inline.} =
  entry.internalBlockOffset = entry.internalBlockOffset and (not maskIsCompressed)
  if x:
    entry.internalBlockOffset = entry.internalBlockOffset or maskIsCompressed


proc rawBlockOffset(entry: FileEntry): uint16 {.inline.} =
  entry.internalBlockOffset and maskBlockOffset

proc `rawBlockOffset=`(entry: var FileEntry, x: uint16) {.inline.} =
  doAssert (x and maskBlockOffset) == x, $x
  entry.internalBlockOffset = entry.internalBlockOffset and (not maskBlockOffset)
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


proc responsibleChunkIdx(fileIdx: FileIndex): int {.inline.} =
  fileIdx div dbSize

proc localFileIdx(fileIdx: FileIndex): int {.inline.} =
  fileIdx mod dbSize

proc `[]`*(db: FileDb, fileIdx: FileIndex): FileEntry =
  db.rawChunks.raw[fileIdx.responsibleChunkIdx()][fileIdx.localFileIdx()]

proc `[]`(db: var FileDb, fileIdx: FileIndex): var FileEntry =
  db.rawChunks.raw[fileIdx.responsibleChunkIdx()][fileIdx.localFileIdx()]

iterator iterAllFileEntries*(db: FileDb): FileEntry =
  for i in 0 ..< db.rawChunks.raw.len():
    for j in 0 ..< dbSize:
      if db.rawChunks.raw[i][j].fileSize() == 0:
        # This is ONLY proper if the chunks are fully saturated, as should be the case in normal usage
        break
      yield db.rawChunks.raw[i][j]

proc searchTailIndex(chunks: RawChunks): FileIndex =
  for i in 0 ..< dbSize:
    if chunks.raw[^1][i].fileSize == 0:
      return chunks.raw.high * dbSize + i
  # The existing chunk is saturated and a new chunk hasn't been allocated yet.
  # Pretend there is a new chunk at the end
  return (chunks.raw.high + 1) * dbSize


proc searchNextBlockId(db: FileDb): BlockId =
  var highest = 0
  for entry in db.iterAllFileEntries():
    if entry.blockId.int > highest.int:
      highest = entry.blockId.int
  (highest + 1).BlockId # next id


proc advanceFileIndex(db: var FileDb): FileIndex =
  if db.nextEntryIndex.responsibleChunkIdx() >= db.rawChunks.raw.len():
    # Allocate a new chunk if the tail is saturated
    db.rawChunks.raw.add(create(array[dbSize, FileEntry]))
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
    let entry = db[i]
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
    let blockId = db[indices[i]].blockId
    if blockId notin blockTable:
      blockTable[blockId] = (indices : @[indices[i]], paths : @[toPaths[i]])
    else:
      blockTable[blockId].indices.add(indices[i])
      blockTable[blockId].paths.add(toPaths[i])
  for blockId, info in blockTable:
    var i = 0
    for data in db.iterSmallBlockDataByIndices(blockId, info.indices):
      if db[info.indices[i]].isCompressed:
        writeFile(info.paths[i][0], data.decompress())
      else:
        writeFile(info.paths[i][0], data)
      setFilePermissions(info.paths[i][0], info.paths[i][1])
      inc i
    doAssert i == info.paths.len()

proc restoreBigFileFromStore*(db: FileDb, index: FileIndex, toPath: string, perms: set[FilePermission]) =
  doAssert db[index].fileSize > 0, $index
  if db[index].isInSmallBlock:
    raiseAssert "Expected a file that isn't part of a small block"
  if db[index].isCompressed:
    writeFile(toPath, db.loadBlockFromStore(db[index].blockId).decompress())
  else:
    writeFile(toPath, db.loadBlockFromStore(db[index].blockId))
  toPath.setFilePermissions(perms)


proc insertFile*(db: var FileDb, filePath: string): FileIndex =
  var rawPtr = memfiles.open(filePath)
  defer: rawPtr.close()
  if rawPtr.size == 0:
    raiseAssert "Bad file size"

  let
    crc32 = crc32(rawPtr.mem, rawPtr.size)
    sha256 = sha256(rawPtr.mem, rawPtr.size)

  if crc32 in db.knownCrcs:
    var i = 0
    for entry in db.iterAllFileEntries():
      if entry.crc32 == crc32 and entry.sha256 == sha256:
        return i
      inc i

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
  entry.isInSmallBlock = relevantSize.uint < smallBlockSize()
  entry.fileSize = relevantSize.uint
  entry.isCompressed = shouldCompress
  result = db.advanceFileIndex()

  if relevantSize.uint < smallBlockSize():
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
  db[result] = entry

proc commit*(db: var FileDb) =
  var
    openBuckets = newSeq[(uint64, seq[SmallFileInfo])]() # (usedSpace, files)
    smallFilesAsc = db.smallFileQueue.sortedByIt(it.finalSize)

  # distribute files in descending order by size
  for i in countdown(smallFilesAsc.high(), 0):
    var placed = false
    for j in 0 ..< openBuckets.len():
      let spaceLeft = smallBlockSize() - openBuckets[j][0]
      if spaceLeft >= smallFilesAsc[i].finalSize:
        openBuckets[j][0] += smallFilesAsc[i].finalSize
        openBuckets[j][1].add(smallFilesAsc[i])
        placed = true
        break
    if not placed:
      openBuckets.add((smallFilesAsc[i].finalSize, @[smallFilesAsc[i]]))

  for bucket in openBuckets:
    var page = newSeq[byte](smallBlockSize())
    var pageOffset = 0u64
    for info in bucket[1]:
      let sourceData = readFile(info.sourcePath)
      if db[info.index].isCompressed:
        let outData = compress(sourceData.toOpenArrayByte(sourceData.low, sourceData.high))
        doAssert outData.len().uint64 == db[info.index].fileSize()
        copyMem(addr page[pageOffset], addr outData[0], outData.len())
      else:
        copyMem(addr page[pageOffset], addr sourceData[0], sourceData.len())

      db[info.index].rawBlockOffset = pageOffset.uint16
      inc pageOffset, db[info.index].fileSize()

    let assignedBlockId = db.submitFileToStore(page.toOpenArray(page.low, pageOffset.int - 1))
    for info in bucket[1]:
      db[info.index].blockId = assignedBlockId

  reset db.smallFileQueue

template transaction*(db: var FileDb, body: untyped): untyped =
  body
  db.commit()


# TODO: Don't keep password in memory for too long. Change key validation?
proc openFileDb*(dbPath: string, storePath: string, password: string): FileDb =
  if sodiumInit() < 0:
    echo "Sodium failed to init"
    quit(1)
  createDir(storePath)
  let pwHash = hashPassword(password)

  var
    rawChunks = default(RawChunks)
    storedSalt = default(Salt)
    storedPwHash = default(PwHash)
  storedSalt.string.setLen(saltSize)
  for path in walkPattern(dbPath.joinPath("*.filedb")):
    let num = path.splitFile.name.parseInt()
    let i = num - 1 # nums start at 1
    if num > rawChunks.raw.len(): rawChunks.raw.setLen(num)
    let filedbFileData = decompress(readFile(path))
    var buff = create(array[dbSize, FileEntry])
    copyMem(buff, addr filedbFileData[0], sizeof(array[dbSize, FileEntry]))
    rawChunks.raw[i] = buff
    if i == 0:
      copyMem(addr storedSalt.string[0], addr filedbFileData[sizeof(array[dbSize, FileEntry])], saltSize)
      copyMem(addr storedPwHash.asArray()[0], addr filedbFileData[sizeof(array[dbSize, FileEntry]) + saltSize], pwHashSize)

  if rawChunks.raw.len() == 0:
    storedPwHash = pwHash
    storedSalt = generateSalt()
    rawChunks.raw.add(create(array[dbSize, FileEntry]))

  else:
    if not verifyPassword(storedPwHash, password):
      raiseAssert "Wrong password"

  result = FileDb(
    store : BlockStore(
      path : storePath,
    ),
    rawChunks : ensureMove rawChunks,
    dbPath : dbPath,
    masterKey : deriveMasterKey(password, storedSalt),
    knownCrcs : initHashSet[uint32](),
    knownHashes : initHashSet[array[32, byte]](),
    salt : storedSalt,
    pwHash : storedPwHash,
  )
  result.store.nextBlockId = result.searchNextBlockId()
  result.nextEntryIndex = result.rawChunks.searchTailIndex()

  for entry in result.iterAllFileEntries():
    result.knownCrcs.incl(entry.crc32)
    result.knownHashes.incl(entry.sha256)

proc save*(db: var FileDb) =
  doAssert db.smallFileQueue.len() == 0
  db.store.save(some db.dbPath)
  for i in 0 ..< db.rawChunks.raw.len():
    let buffSize = sizeof(array[dbSize, FileEntry]) + (if i == 0: saltSize + pwHashSize else: 0)
    var outBuff = newString(buffSize)
    copyMem(addr outBuff[0], db.rawChunks.raw[i], sizeof(array[dbSize, FileEntry]))
    if i == 0:
      copyMem(addr outBuff[sizeof(array[dbSize, FileEntry])], addr db.salt.string[0], saltSize)
      copyMem(addr outBuff[sizeof(array[dbSize, FileEntry]) + saltSize], addr db.pwHash.asArray()[0], pwHashSize)
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
  for entry in db.iterAllFileEntries():
    inc totalFiles
  #  echo db.entries[i], " ", db.entries[i].isInSmallBlock, " ", db.entries[i].isCompressed, " ", db.entries[i].fileSize.int64.formatSize(), " ", db.entries[i].blockOffset

  echo "insert count: ", totalFiles
  echo "time: ", $(cpuTime() - startTime)
  #db.save()
