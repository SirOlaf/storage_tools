import std/[
  memfiles,
  os,
  strutils,
  sets,
]

import crunchy


type
  FileInfo* = object
    ## Stored in order `originalName, virtualPath, hash`
    hash*: string
    originalName*: string
    virtualPath*: string ## Virtual paths are used for compatibility with real paths on the storage destination.
    decryptionKey*: string

  FileIndex* = object
    name: string
    files: HashSet[FileInfo]


const
  indexSeparator = " {<|>} "
  fileColumns = 4


proc renameFileToSha256(filePath: string): tuple[hash: string, path: string] =
  var filePtr = memfiles.open(filePath, fmRead)
  let hash = crunchy.sha256(filePtr.mem, filePtr.size).toHex()
  filePtr.close()
  let newPath = filePath.splitPath().head.joinPath(hash)
  moveFile(filePath, newPath)
  (newPath, hash)


proc loadIndex*(path: string): FileIndex =
  let contents: seq[string] = readFile(path).splitLines()
  let fileNum = contents[0].parseInt()
  if fileNum != contents.len() - 1:
    raiseAssert "Inconsistent file number found in index."
  var files = initHashSet[FileInfo]()
  for i in 1 ..< contents.len():
    let parts = contents[i].split(indexSeparator)
    if parts.len() != fileColumns:
      raiseAssert "Bad line in index:\n" & contents[i]
    let (originalName, virtualPath, hash, decryptionKey) = (parts[0], parts[1], parts[2], parts[3])
    files.incl(FileInfo(
      hash : hash,
      originalName : originalName,
      virtualPath : virtualPath,
      decryptionKey : decryptionKey
    ))
  FileIndex(
    name : path.splitFile().name,
    files : files,
  )

proc storeIndex*(self: FileIndex, path: string) =
  var contents = $self.files.len()
  for file in self.files:
    let data = @[file.originalName, file.virtualPath, file.hash, file.decryptionKey]
    doAssert data.len() == fileColumns
    let line = data.join(indexSeparator)
    contents.add("\n" & line)
  writeFile(path, contents)

proc addFile*(self: var FileIndex, file: FileInfo) =
  self.files.incl(file)

proc importFile*(self: var FileIndex; filePath, decryptionKey, virtualPath: string) =
  let originalName = filePath.splitPath().tail
  let (newPath, fileHash) = filePath.renameFileToSha256()
  createDir(self.name)
  moveFile(newPath, self.name.joinPath(fileHash))
  echo "Imported as " & newPath
  self.addFile(FileInfo(
    hash : fileHash,
    virtualPath : virtualPath,
    originalName : originalName,
    decryptionKey : decryptionKey,
  ))


when isMainModule:
  let
    filePath = paramStr(1)
    indexPath = paramStr(2)
    decryptionKey = paramStr(3)
    virtualPath = paramStr(4)

  var index = loadIndex(indexPath)
  index.importFile(filePath, decryptionKey, virtualPath)
  index.storeIndex(indexPath)
