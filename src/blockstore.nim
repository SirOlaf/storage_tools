import std/[
  os,
  strutils,
  options,
]

import crunchy

import upfiles



# Every bottom level folder contains 1000 files, mid level folders each contain 100 bottom folders.
# Top level store contains an arbitrary number of mid level folders.
# Thus, every mid level folder will contain a total of 100k files
const
  StoreInnerFolderCount = 100
  StoreInnerFolderFileCount = 1000
  StoreMidFolderFileCount = StoreInnerFolderCount * StoreInnerFolderFileCount
  hashfileName = "hashes.up"


# Every storage layer contains a metadata file containing hashes.
# The bottom layer stores hashes for every file it contains
# The middle layer stores hashes for every bottom layer metadata file it contains
# The top layer stores hashes for every middle layer metadata file it contains and
#   should be treated the same as the other top level upfiles (archives, metacore, ...)
# A goal of this design is to allow (low overhead) distributing one or more partial file stores to be reassembled or
#   used as is, with every partial store having enough information to verify data integrity as long as
#   the top level upfile is available.


type
  BlockId* = uint32

  HashEntry = object
    id: int # May be a BlockId or a layer folder id (bottom/middle, depending on which level the hash file sits at)
    sha256: array[32, byte]

  BlockStore* = object
    path*: string
    nextBlockId*: BlockId
    activeLayer: Option[tuple[middle: int, bottom: int]]
    activeBottomHashes: seq[HashEntry]
    activeMiddleHashes: seq[HashEntry]
    modifiedMiddleHashes: seq[HashEntry]


proc calcMidFolderId(blockId: BlockId): int {.inline.} =
  let blockId = blockId.int - 1
  blockId div StoreMidFolderFileCount

proc calcBottomFolderId(blockId: BlockId): int {.inline.} =
  let blockId = blockId.int - 1
  (blockId mod StoreMidFolderFileCount) div StoreInnerFolderFileCount


proc advanceBlockId(store: var BlockStore): BlockId =
  result = store.nextBlockId
  inc store.nextBlockId


proc blockIdToStoreDir(store: BlockStore, blockId: BlockId): string =
  let
    midFolderId = calcMidFolderId(blockId)
    bottomFolderId = calcBottomFolderId(blockId)
  store.path.joinPath($midFolderId).joinPath($bottomFolderId)

proc blockIdToStorePath(store: BlockStore, blockId: BlockId): string =
  store.blockIdToStoreDir(blockid).joinPath($blockId)


proc putHashEntry(x: var UpfileWriter, meta: HashEntry) =
  x.entity:
    x.field "id", $meta.id
    x.field "sha", meta.sha256.toHex()

proc putHashEntries(x: var UpfileWriter, entries: openArray[HashEntry]) =
  for meta in entries:
    x.putHashEntry(meta)

proc takeHashEntry(p: var StrSlice): HashEntry =
  result = HashEntry()
  p.fieldLoop(fieldName):
    case fieldName
    of "id":
      result.id = p.takeInt()
      p.expectChar(';')
    of "sha":
      let buff = p.takeString().parseHexStr()
      copyMem(addr result.sha256[0], addr buff[0], result.sha256.len())
      p.expectChar(';')
    else:
      raiseAssert "Unexpected low field: " & fieldName

iterator iterHashEntries*(data: openArray[char]): HashEntry =
  if data.len() > 0:
    var p = data.toSlice()
    p.skipWhitespace()
    while not p.atEof():
      yield p.takeHashEntry()
      p.skipWhitespace()

proc loadHashFile(path: string): seq[HashEntry] =
  result = newSeq[HashEntry]()
  let buff = readFile(path)
  for entry in buff.iterHashEntries():
    result.add(entry)


proc requestBlockId*(store: var BlockStore): BlockId =
  store.advanceBlockId()

proc commitBottomHashFile(store: var BlockStore) =
  let layer = store.activeLayer.get()
  var bottomWriter = UpfileWriter(pretty : true)
  bottomWriter.putHashEntries(store.activeBottomHashes)
  writeFile(store.path.joinPath($layer.middle).joinPath($layer.bottom).joinPath(hashfileName), bottomWriter.buff)
  let hashFileHash = sha256(bottomWriter.buff)
  if store.activeMiddleHashes.len() > 0 and store.activeMiddleHashes[^1].id == layer.bottom:
    # The active middle layer already has a hash for the active bottom layer, update it
    store.activeMiddleHashes[^1].sha256 = hashFileHash
  else:
    store.activeMiddleHashes.add(HashEntry(
      id : layer.bottom,
      sha256 : hashFileHash,
    ))

proc commitMiddleHashFile(store: var BlockStore) =
  let layer = store.activeLayer.get()
  var middleWriter = UpfileWriter(pretty : true)
  middleWriter.putHashEntries(store.activeMiddleHashes)
  let hashFileHash = sha256(middleWriter.buff)
  writeFile(store.path.joinPath($layer.middle).joinPath(hashfileName), middleWriter.buff)
  store.modifiedMiddleHashes.add(HashEntry(
    id : layer.middle,
    sha256 : hashFileHash,
  ))

proc activateHashFiles(store: var BlockStore, blockId: BlockId) =
  let
    middleId = calcMidFolderId(blockId)
    bottomId = calcBottomFolderId(blockId)
    middleDirPath = store.path.joinPath($middleId)
    middleHashPath = middleDirPath.joinPath(hashfileName)
    bottomDirPath = middleDirPath.joinPath($bottomId)
    bottomHashPath = bottomDirPath.joinPath(hashfileName)

  template updateActiveLayer: untyped =
    store.activeLayer = some((middle : middleId, bottom : bottomId))

  template changeBottomLayer(updateActive: static[bool]): untyped =
    when updateActive: updateActiveLayer()
    store.activeBottomHashes.setLen(0)
    if fileExists(bottomHashPath):
      store.activeBottomHashes = bottomHashPath.loadHashFile()

  template changeMiddleLayer(updateActive: static[bool]): untyped =
    when updateActive: updateActiveLayer()
    store.activeMiddleHashes.setLen(0)
    if fileExists(middleHashPath):
      store.activeMiddleHashes = middleHashPath.loadHashFile()

  template changeLayer: untyped =
    updateActiveLayer()
    changeBottomLayer(false)
    changeMiddleLayer(false)

  if store.activeLayer.isNone():
    # activate the layer
    changeLayer()
  else:
    let prev = store.activeLayer.unsafeGet()
    if prev != (middle : middleId, bottom : bottomId):
      store.commitBottomHashFile()
      if prev.middle != middleId:
        # Transition into a new mid folder
        store.commitMiddleHashFile()
        changeLayer()
      else:
        # Transition into a new bottom folder
        # Sanity check. The current system only permits sequential writes
        doAssert prev.bottom != bottomId
        doAssert prev.middle == middleId
        changeBottomLayer(true)


proc pushBlockHash(store: var BlockStore, blockId: BlockId, raw: openArray[byte]) =
  store.activateHashFiles(blockId)
  store.activeBottomHashes.add(HashEntry(
    id : blockId.int,
    sha256 : sha256(raw),
  ))

proc submitRawBlockToStore*(store: var BlockStore, blockId: BlockId, raw: openArray[byte]) =
  let bottomDirPath = store.blockIdToStoreDir(blockId)
  createDir(bottomDirPath)
  store.pushBlockHash(blockId, raw)
  writeFile(store.blockIdToStorePath(blockId), raw)

proc loadRawBlockFromStore*(store: BlockStore, blockId: BlockId): string =
  readFile(store.blockIdToStorePath(blockId))

proc save*(store: var BlockStore, tophashFileDir: Option[string]) =
  if not store.activeLayer.isSome():
    return
  let tophashFilePath = if tophashFileDir.isSome(): tophashFileDir.unsafeGet().joinPath(hashfileName) else: store.path.joinPath(hashfileName)
  store.commitBottomHashFile()
  store.commitMiddleHashFile()
  var topHashes = newSeq[HashEntry]()
  if fileExists(tophashFilePath):
    topHashes = loadHashFile(tophashFilePath)
  for middle in store.modifiedMiddleHashes:
    var found = false
    for i in 0 ..< topHashes.len():
      if topHashes[i].id == middle.id:
        # update the existing hash
        topHashes[i].sha256 = middle.sha256
        found = true
        break
    if found: continue
    # add a new hash
    topHashes.add(HashEntry(
      id : middle.id,
      sha256 : middle.sha256,
    ))
  var topWriter = UpfileWriter(pretty : true)
  topWriter.putHashEntries(topHashes)
  writeFile(tophashFilePath, topWriter.buff)
  store.modifiedMiddleHashes.setLen(0)


when isMainModule:
  import std/[sugar,]

  var x = UpfileWriter(pretty : true)
  x.putHashEntry(HashEntry(
    sha256 : sha256("test"),
    id : 1,
  ))
  x.putHashEntry(HashEntry(
    sha256 : sha256("test2"),
    id : 2,
  ))

  echo x.buff
  echo x.buff.takeNthEntityInUpfile(0).dup().takeHashEntry()
  echo x.buff.takeNthEntityInUpfile(1).dup().takeHashEntry()
