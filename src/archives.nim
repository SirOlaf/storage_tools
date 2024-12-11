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
    name*: string
    intervals*: seq[ArchiveInterval]
    singles*: seq[ArchiveSingleFile]
    emptyPaths*: seq[ArchiveFilePath]
    emptyDirs*: seq[ArchiveDirPath]

  ArchiveDb* = object
    fileDb: FileDb
    archives: seq[ArchiveEntry]


proc insertArchive(db: var Archivedb, folderPath: string, name: Option[string] = none[string]()): ArchiveIndex =
  if not dirExists(folderPath):
    raiseAssert "Invalid directory path"
  let folderPath = absolutePath(folderPath).strip(chars={'/'}, leading=false, trailing=true)

  var archive = ArchiveEntry(
    name : if name.isSome(): name.get() else: folderPath.splitPath().tail,
  )

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
        archive.emptyPaths.add(filePath)
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


when isMainModule:
  var fileDb = openFileDb(
    "/tmp/storage_tools/db",
    "/tmp/storage_tools/db/store",
    "test"
  )

  var archiveDb = ArchiveDb(
    fileDb : fileDb,
    archives : newSeq[ArchiveEntry](),
  )
  echo archiveDb.insertArchive("testfiles")
  echo archiveDb.insertArchive("testfiles2")
  for archive in archiveDb.archives:
    echo archive

  #fileDb.save()
