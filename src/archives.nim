import std/[
  json,
  os,
  strutils,
  options,
  algorithm,
  lists,
  sequtils,
  sets,
]

import files


const
  minIntervalLen = 4


type
  ArchiveFilePath* = string
  ArchiveDirPath* = string
  ArchiveIndex* = uint64

  ArchiveInterval* = object
    a*, b*: FileIndex
    paths*: seq[ArchiveFilePath]

  ArchiveSingleFile* = object
    index*: FileIndex
    path*: ArchiveFilePath

  ArchiveEntry* = object
    # TODO: Store info about whether or not the file is part of a small block once the custom format is ready
    # Archive name is not stored here, it should be handled by the metadata layer
    intervals*: seq[ArchiveInterval]
    singles*: seq[ArchiveSingleFile]
    emptyFiles*: seq[ArchiveFilePath]
    emptyDirs*: seq[ArchiveDirPath]

  ArchiveDb* = object
    fileDb: FileDb
    archives: seq[ArchiveEntry]


proc insertArchive*(db: var Archivedb, folderPath: string): ArchiveIndex =
  if not dirExists(folderPath):
    raiseAssert "Invalid directory path"
  let folderPath = absolutePath(folderPath).strip(chars={'/'}, leading=false, trailing=true)

  var archive = ArchiveEntry()

  var emptyDirs = initHashSet[string]()
  var intervals = initDoublyLinkedList[tuple[a, b: FileIndex; paths: DoublyLinkedList[string]]]()
  db.fileDb.transaction:
    for dirPath in walkDirRec(folderPath, yieldFilter={pcDir}, relative=true, skipSpecial=true):
      emptyDirs.incl(dirPath)

    for filePath in walkDirRec(folderPath, relative=true, skipSpecial=true):
      for p in filePath.parentDirs():
        if p in emptyDirs:
          emptyDirs.excl(p)
      if getFileSize(folderPath.joinPath(filePath)) == 0:
        archive.emptyFiles.add(filePath)
      else:
        let fileIndex = db.fileDb.insertFile(folderPath.joinPath(filePath))
        let node = newDoublyLinkedNode(filePath)
        if intervals.head == nil:
          intervals.append(newDoublyLinkedNode((
            a : fileIndex,
            b : fileIndex,
            paths : DoublyLinkedList[string](head : node, tail : node)
          )))
        else:
          var it = intervals.head
          while it != nil:
            if fileIndex + 1 == it.value.a:
              it.value.a = fileIndex
              it.value.paths.prepend(filePath)
              break
            elif fileIndex - 1 == it.value.b:
              it.value.b = fileIndex
              it.value.paths.append(filePath)
              break
            it = it.next
          if it == nil:
            # Couldn't find an interval that works
            if fileIndex < intervals.head.value.a:
              let node = newDoublyLinkedNode(filePath)
              intervals.prepend(newDoublyLinkedNode((
                a : fileIndex,
                b : fileIndex,
                paths : DoublyLinkedList[string](head : node, tail : node),
              )))
            else:
              let node = newDoublyLinkedNode(filePath)
              intervals.append(newDoublyLinkedNode((
                a : fileIndex,
                b : fileIndex,
                paths : DoublyLinkedList[string](head : node, tail : node),
              )))

  for empty in emptyDirs:
    archive.emptyDirs.add(empty)

  # There may be runs of identical files and intervals may overlap, so they must not be filtered, only merged whenever possible
  var it = intervals.head
  while it != nil:
    var jt = it.next
    while jt != nil:
      # TODO: Verify that this algorithm works
      let next = jt.next # the following branches may modify the list
      if it.value.b + 1 == jt.value.a:
        it.value.b = jt.value.b
        it.value.paths.append(jt.value.paths)
        intervals.remove(jt)
      elif it.value.a - 1 == jt.value.b:
        it.value.a = jt.value.a
        it.value.paths.prepend(jt.value.paths)
        intervals.remove(jt)
      jt = next

    var pathCount = 0
    for f in it.value.paths:
      inc pathCount
    if pathCount < minIntervalLen:
      var x = it.value.a
      for f in it.value.paths:
        archive.singles.add(ArchiveSingleFile(
          index : x,
          path : f,
        ))
        inc x
    else:
      archive.intervals.add(ArchiveInterval(
        a : it.value.a,
        b : it.value.b,
        paths : it.value.paths.toSeq(),
      ))

    it = it.next

  result = db.archives.len().ArchiveIndex
  db.archives.add(archive)


proc restoreArchive*(db: var ArchiveDb, archiveIndex: ArchiveIndex, toDir: string) =
  let archive = db.archives[archiveIndex]
  var createdDirs = initHashSet[string]()
  template ensureDir(dir: string) =
    if dir notin createdDirs:
      for d in dir.parentDirs():
        createdDirs.incl(d)
    createDir(dir)

  for x in archive.emptyDirs:
    ensureDir toDir.joinPath(x)
  for x in archive.emptyFiles:
    ensureDir toDir.joinPath(x.parentDir())
    writeFile(toDir.joinPath(x), "")
    let f = open(toDir.joinPath(x), fmWrite)
    f.close()

  var smallFiles = (indices : newSeq[FileIndex](), fullPaths : newSeq[string]())
  for x in archive.singles:
    ensureDir toDir.joinPath(x.path).parentDir()
    if db.fileDb.entries[x.index].isInSmallBlock():
      smallFiles.indices.add(x.index)
      smallFiles.fullPaths.add(toDir.joinPath(x.path))
    else:
      db.fileDb.restoreBigFileFromStore(x.index, toDir.joinPath(x.path))

  for x in archive.intervals:
    for fileIndex in x.a .. x.b:
      let i = fileIndex - x.a
      ensureDir toDir.joinPath(x.paths[i]).parentDir()

      if db.filedb.entries[fileIndex].isInSmallBlock():
        smallFiles.indices.add(fileIndex)
        smallFiles.fullPaths.add(toDir.joinPath(x.paths[i]))
      else:
        db.fileDb.restoreBigFileFromStore(fileIndex, toDir.joinPath(x.paths[i]))
  db.fileDb.restoreSmallFilesFromStore(smallFiles.indices, smallFiles.fullPaths)



when isMainModule:
  import std/[
    times,
  ]

  var fileDb = openFileDb(
    "/tmp/storage_tools/db",
    "/tmp/storage_tools/db/store",
    "test"
  )

  var archiveDb = ArchiveDb(
    fileDb : fileDb,
    archives : newSeq[ArchiveEntry](),
  )

  var insertStart = cpuTime()
  discard archiveDb.insertArchive("testfiles")
  #discard archiveDb.insertArchive("testfiles2")
  echo "Insert took ", cpuTime() - insertStart

  #for archive in archiveDb.archives:
  #  echo (%* archive)

  var restoreStart = cpuTime()
  removeDir("testfiles_out")
  archiveDb.restoreArchive(0, "testfiles_out")

  echo "Restore took ", cpuTime() - restoreStart

  #fileDb.save()
