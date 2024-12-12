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
import upfiles


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
    smallFiles*: HashSet[FileIndex]
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
        if db.fileDb.entries[fileIndex].isInSmallBlock:
          archive.smallFiles.incl(fileIndex)

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



template interval(x: var UpfileWriter, a, b: int, body: untyped): untyped =
  x.writeRaw("i " & $a & "," & $b)
  x.scope:
    body

proc path(x: var UpfileWriter, p: string) =
  x.terminated x.writeRaw(upfileEscape(p))

proc smallFile(x: var UpfileWriter, p: string) =
  x.writeRaw("s ")
  x.path(p)

proc bigFile(x: var UpfileWriter, p: string) =
  x.writeRaw("b ")
  x.path(p)

proc file(x: var UpfileWriter, p: string, small: bool) =
  if small:
    x.smallFile(p)
  else:
    x.bigFile(p)

proc gapFile(x: var UpfileWriter, idx: int, p: string, small: bool) =
  x.writeRaw("g ")
  x.writeRaw($idx & " ")
  x.file(p, small)

proc emptyFile(x: var UpfileWriter, p: string) =
  x.writeRaw("e ")
  x.path(p)


proc putArchive(x: var UpfileWriter, archive: ArchiveEntry) =
  x.entity:
    if archive.intervals.len() > 0 or archive.singles.len() > 0 or archive.emptyFiles.len() > 0:
      x.group "files":
        for i in archive.intervals:
          x.interval(i.a, i.b):
            var j = i.a
            for p in i.paths:
              x.file(p, j in archive.smallFiles)
              inc j
        for s in archive.singles:
          x.gapFile(s.index, s.path, s.index in archive.smallFiles)
        for e in archive.emptyFiles:
          x.emptyFile(e)
    if archive.emptyDirs.len() > 0:
      x.group "emptydirs":
        for p in archive.emptyDirs:
          x.path(p)


proc parsePath(node: upfiles.Node): string {.inline.} =
  upfileUnescape($node.raw)

proc parseInterval(node: upfiles.Node): (int, int) {.inline.} =
  let s = $node.raw
  let comma = s.find(",")
  (parseInt(s[0 ..< comma]), parseInt(s[comma + 1 ..< s.len()]))

proc parseIsSmall(node: upfiles.Node): bool {.inline.} =
  let x = $node.raw
  assert x in "sb", x
  x == "s"

proc parseArchive(raw: upfiles.Node): ArchiveEntry =
  result = ArchiveEntry()
  for groupNode in raw.kids:
    let groupName = $groupNode.kids[0].raw
    if groupName == "files":
      for fieldNode in groupNode.kids[1].kids:
        case $fieldNode.kids[0].raw
        of "i":
          let ends = fieldNode.kids[1].parseInterval()
          var interval = ArchiveInterval(a : ends[0], b : ends[1])
          for i in interval.a .. interval.b:
            let e = fieldNode.kids[2].kids[i - interval.a]
            interval.paths.add(e.kids[1].parsePath())
            if e.kids[0].parseIsSmall():
              result.smallFiles.incl(i)
          result.intervals.add(interval)
        of "g":
          let idx = parseInt($fieldNode.kids[1].raw)
          result.singles.add(ArchiveSingleFile(
            index : idx,
            path : $fieldNode.kids[3].raw
          ))
          if fieldNode.kids[2].parseIsSmall():
            result.smallFiles.incl(idx)
        of "e":
          result.emptyFiles.add(fieldnode.kids[1].parsePath())
        else:
          raiseAssert "Unknown file entry kind: " & $fieldNode.kids[0].raw
    elif groupName == "emptydirs":
      for k in groupNode.kids[1].kids:
        result.emptyDirs.add(k.parsePath)
    else:
      raiseAssert "Unknown upfile group: " & groupName

proc parseNthArchiveInUpfile(data: ptr string, n: int): ArchiveEntry =
  data.parseNthEntityInUpfile(n).parseArchive()

iterator iterArchivesInUpfile(data: ptr string): ArchiveEntry =
  for ent in data.iterUpfileEntities():
    yield ent.parseArchive()


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
  discard archiveDb.insertArchive("testfiles2")
  discard archiveDb.insertArchive("testfilesempty")
  echo "Insert took ", cpuTime() - insertStart

  var writer = UpfileWriter(buff : newString(0), pretty : true)
  for archive in archiveDb.archives:
    writer.putArchive(archive)
  writeFile("testarchives.upa", writer.buff)

  echo parseNthArchiveInUpfile(addr writer.buff, 2)

  when true:
    var restoreStart = cpuTime()
    removeDir("testfiles_out")
    archiveDb.restoreArchive(0, "testfiles_out")

    echo "Restore took ", cpuTime() - restoreStart

  #fileDb.save()
