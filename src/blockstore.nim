import std/[
  os,
]

import upfiles



# Every bottom level folder contains 1000 files, mid level folders each contain 100 bottom folders.
# Top level store contains an arbitrary number of mid level folders.
# Thus, every mid level folder will contain a total of 100k files
const
  StoreInnerFolderCount = 100
  StoreInnerFolderFileCount = 1000
  StoreMidFolderFileCount = StoreInnerFolderCount * StoreInnerFolderFileCount


type
  BlockId* = uint32
  BlockStore* = object
    path*: string



proc calcMidFolderId(blockId: BlockId): int {.inline.} =
  let blockId = blockId.int - 1
  blockId div StoreMidFolderFileCount

proc calcBottomFolderId(blockId: BlockId): int {.inline.} =
  let blockId = blockId.int - 1
  (blockId mod StoreMidFolderFileCount) div StoreInnerFolderFileCount


proc blockIdToStoreDir(store: BlockStore, blockId: BlockId): string =
  let
    midFolderId = calcMidFolderId(blockId)
    bottomFolderId = calcBottomFolderId(blockId)
  store.path.joinPath($midFolderId).joinPath($bottomFolderId)

proc blockIdToStorePath(store: BlockStore, blockId: BlockId): string =
  store.blockIdToStoreDir(blockid).joinPath($blockId)


proc submitRawBlockToStore*(store: BlockStore, blockId: BlockId, raw: openArray[byte]) =
  createDir(store.blockIdToStoreDir(blockId))
  writeFile(store.blockIdToStorePath(blockId), raw)

proc loadRawBlockFromStore*(store: BlockStore, blockId: BlockId): string =
  readFile(store.blockIdToStorePath(blockId))
