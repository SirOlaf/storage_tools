import std/[
  os,
  strutils,
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

  BottomLevelMetaEntry = object
    id: BlockId # store id to allow archive reconstruction+data integrity using a partial block store
    sha256: array[32, byte]

  BlockStore* = object
    path*: string
    nextBlockId*: BlockId



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


proc putBottomLevelMeta(x: var UpfileWriter, meta: BottomLevelMetaEntry) =
  x.entity:
    x.group "low":
      x.field "id", $meta.id
      x.field "sha", meta.sha256.toHex()

proc takeBottomLevelMetaEntry(p: var StrSlice): BottomLevelMetaEntry =
  result = BottomLevelMetaEntry()
  p.fieldLoop(groupName):
    case groupName
    of "low":
      p.fieldLoop(fieldName):
        case fieldName
        of "id":
          result.id = p.takeInt().uint32
          p.expectChar(';')
        of "sha":
          let buff = p.takeString().parseHexStr()
          copyMem(addr result.sha256[0], addr buff[0], result.sha256.len())
          p.expectChar(';')
        else:
          raiseAssert "Unexpected low field: " & fieldName
    else:
      raiseAssert "Unexpected bottom meta group: " & groupName

iterator iterBottomMeta*(data: openArray[char]): BottomLevelMetaEntry =
  if data.len() > 0:
    var p = data.toSlice()
    p.skipWhitespace()
    while not p.atEof():
      yield p.takeBottomLevelMetaEntry()
      p.skipWhitespace()


proc requestBlockId*(store: var BlockStore): BlockId =
  store.advanceBlockId()

proc submitRawBlockToStore*(store: var BlockStore, blockId: BlockId, raw: openArray[byte]) =
  let bottomDirPath = store.blockIdToStoreDir(blockId)
  createDir(bottomDirPath)

  writeFile(store.blockIdToStorePath(blockId), raw)

proc loadRawBlockFromStore*(store: BlockStore, blockId: BlockId): string =
  readFile(store.blockIdToStorePath(blockId))

proc save*(store: BlockStore) =
  discard


when isMainModule:
  import std/[sugar,]

  var x = UpfileWriter(pretty : true)
  x.putBottomLevelMeta(BottomLevelMetaEntry(
    sha256 : sha256("test"),
    id : 1,
  ))
  x.putBottomLevelMeta(BottomLevelMetaEntry(
    sha256 : sha256("test2"),
    id : 2,
  ))

  echo x.buff
  echo x.buff.takeNthEntityInUpfile(0).dup().takeBottomLevelMetaEntry()
  echo x.buff.takeNthEntityInUpfile(1).dup().takeBottomLevelMetaEntry()
