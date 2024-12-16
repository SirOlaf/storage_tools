import std/[
  json,
  os,
  strutils,
  options,
  lists,
  sequtils,
  sets,
  tables,
]

import files
import upfiles


const
  minIntervalLen = 4


type
  ArchiveFilePath* = (string, set[FilePermission])
  ArchiveDirPath* = (string, set[FilePermission])
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
    dirs*: seq[ArchiveDirPath]
    #emptyDirs*: seq[ArchiveDirPath]

  ArchiveDb* = object
    fileDb*: FileDb
    archives*: seq[ArchiveEntry]
    writer*: UpfileWriter


template interval(x: var UpfileWriter, a, b: int, body: untyped): untyped =
  x.writeRaw("i " & $a & "," & $b)
  x.scope:
    body

proc path(x: var UpfileWriter, p: string, perms: set[FilePermission]) =
  x.terminated:
    x.writeRaw(cast[int16](perms).toOct(3) & " ")
    x.writeRaw(upfileEscape(p))

proc smallFile(x: var UpfileWriter, p: string, perms: set[FilePermission]) =
  x.writeRaw("s ")
  x.path(p, perms)

proc bigFile(x: var UpfileWriter, p: string, perms: set[FilePermission]) =
  x.writeRaw("b ")
  x.path(p, perms)

proc file(x: var UpfileWriter, p: string, small: bool, perms: set[FilePermission]) =
  if small:
    x.smallFile(p, perms)
  else:
    x.bigFile(p, perms)

proc gapFile(x: var UpfileWriter, idx: int, p: string, small: bool, perms: set[FilePermission]) =
  x.writeRaw("g ")
  x.writeRaw($idx & " ")
  x.file(p, small, perms)

proc emptyFile(x: var UpfileWriter, p: string, perms: set[FilePermission]) =
  x.writeRaw("e ")
  x.path(p, perms)

proc putArchive(x: var UpfileWriter, archive: ArchiveEntry) =
  x.entity:
    if archive.intervals.len() > 0 or archive.singles.len() > 0 or archive.emptyFiles.len() > 0:
      x.group "files":
        for i in archive.intervals:
          x.interval(i.a, i.b):
            var j = i.a
            for p in i.paths:
              x.file(p[0], j in archive.smallFiles, p[1])
              inc j
        for s in archive.singles:
          x.gapFile(s.index, s.path[0], s.index in archive.smallFiles, s.path[1])
        for e in archive.emptyFiles:
          x.emptyFile(e[0], e[1])
    if archive.dirs.len() > 0:
      x.group "dirs":
        for p in archive.dirs:
          x.path(p[0], p[1])


proc insertArchive*(db: var Archivedb, folderPath: string): ArchiveIndex =
  if not dirExists(folderPath):
    raiseAssert "Invalid directory path"
  let folderPath = absolutePath(folderPath).strip(chars={'/'}, leading=false, trailing=true)

  var archive = ArchiveEntry()

  var dirs = initTable[string, set[FilePermission]]()
  var intervals = initDoublyLinkedList[tuple[a, b: FileIndex; paths: DoublyLinkedList[(string, set[FilePermission])]]]()
  db.fileDb.transaction:
    for dirPath in walkDirRec(folderPath, yieldFilter={pcDir}, relative=true, skipSpecial=true):
      if dirPath notin dirs:
        dirs[dirPath] = getFilePermissions(folderPath.joinPath(dirPath))

    for filePath in walkDirRec(folderPath, relative=true, skipSpecial=true):
      let perms = getFilePermissions(folderPath.joinPath(filePath))
      if getFileSize(folderPath.joinPath(filePath)) == 0:
        archive.emptyFiles.add((filePath, perms))
      else:
        let fileIndex = db.fileDb.insertFile(folderPath.joinPath(filePath))
        if db.fileDb.entries[fileIndex].isInSmallBlock:
          archive.smallFiles.incl(fileIndex)

        let node = newDoublyLinkedNode((filePath, perms))
        if intervals.head == nil:
          intervals.append(newDoublyLinkedNode((
            a : fileIndex,
            b : fileIndex,
            paths : DoublyLinkedList[(string, set[FilePermission])](head : node, tail : node)
          )))
        else:
          var it = intervals.head
          while it != nil:
            if fileIndex + 1 == it.value.a:
              it.value.a = fileIndex
              it.value.paths.prepend((filePath, perms))
              break
            elif fileIndex - 1 == it.value.b:
              it.value.b = fileIndex
              it.value.paths.append((filePath, perms))
              break
            it = it.next
          if it == nil:
            # Couldn't find an interval that works
            if fileIndex < intervals.head.value.a:
              let node = newDoublyLinkedNode((filePath, perms))
              intervals.prepend(newDoublyLinkedNode((
                a : fileIndex,
                b : fileIndex,
                paths : DoublyLinkedList[(string, set[FilePermission])](head : node, tail : node),
              )))
            else:
              let node = newDoublyLinkedNode((filePath, perms))
              intervals.append(newDoublyLinkedNode((
                a : fileIndex,
                b : fileIndex,
                paths : DoublyLinkedList[(string, set[FilePermission])](head : node, tail : node),
              )))

  for d in dirs.pairs():
    archive.dirs.add(d)

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

  # TODO: Better equivalence check that doesn't rely on implementation details
  for i in 0 ..< db.archives.len():
    if db.archives[i] == archive:
      return i.ArchiveIndex

  result = db.archives.len().ArchiveIndex
  db.archives.add(archive)
  db.writer.putArchive(archive)


proc restoreArchive*(db: var ArchiveDb, archiveIndex: ArchiveIndex, toDir: string) =
  let archive = db.archives[archiveIndex]
  var createdDirs = initHashSet[string]()
  template ensureDir(dir: ArchiveDirPath) =
    let p = toDir.joinPath(dir[0])
    if p notin createdDirs:
      for d in p.parentDirs():
        createdDirs.incl(p)
    createDir(p)
    setFilePermissions(p, dir[1])

  for x in archive.dirs:
    ensureDir x
  for x in archive.emptyFiles:
    let f = open(toDir.joinPath(x[0]), fmWrite)
    f.close()
    setFilePermissions(toDir.joinPath(x[0]), x[1])

  var smallFiles = (indices : newSeq[FileIndex](), fullPaths : newSeq[(string, set[FilePermission])]())
  for x in archive.singles:
    if db.fileDb.entries[x.index].isInSmallBlock():
      smallFiles.indices.add(x.index)
      smallFiles.fullPaths.add((toDir.joinPath(x.path[0]), x.path[1]))
    else:
      db.fileDb.restoreBigFileFromStore(x.index, toDir.joinPath(x.path[0]), x.path[1])

  for x in archive.intervals:
    for fileIndex in x.a .. x.b:
      let i = fileIndex - x.a
      if db.filedb.entries[fileIndex].isInSmallBlock():
        smallFiles.indices.add(fileIndex)
        smallFiles.fullPaths.add((toDir.joinPath(x.paths[i][0]), x.paths[i][1]))
      else:
        db.fileDb.restoreBigFileFromStore(fileIndex, toDir.joinPath(x.paths[i][0]), x.paths[i][1])
  db.fileDb.restoreSmallFilesFromStore(smallFiles.indices, smallFiles.fullPaths)



proc parsePath(permNode, pathNode: upfiles.Node): (string, set[FilePermission]) {.inline.} =
  (upfileUnescape($pathNode.raw), cast[set[FilePermission]](parseOctInt($permNode.raw).uint16))

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
            interval.paths.add(parsePath(e.kids[1], e.kids[2]))
            if e.kids[0].parseIsSmall():
              result.smallFiles.incl(i)
          result.intervals.add(interval)
        of "g":
          let idx = parseInt($fieldNode.kids[1].raw)
          result.singles.add(ArchiveSingleFile(
            index : idx,
            path : parsePath(fieldNode.kids[3], fieldNode.kids[4]),
          ))
          if fieldNode.kids[2].parseIsSmall():
            result.smallFiles.incl(idx)
        of "e":
          result.emptyFiles.add(parsePath(fieldNode.kids[1], fieldNode.kids[2]))
        else:
          raiseAssert "Unknown file entry kind: " & $fieldNode.kids[0].raw
    elif groupName == "dirs":
      for k in groupNode.kids[1].kids:
        result.dirs.add(parsePath(k.kids[0], k.kids[1]))
    else:
      raiseAssert "Unknown upfile group: " & groupName

proc parseNthArchiveInUpfile*(data: openArray[char], n: int): ArchiveEntry =
  data.parseNthEntityInUpfile(n).parseArchive()

iterator iterArchivesInUpfile*(data: openArray[char]): ArchiveEntry =
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
    writer : UpfileWriter(buff : newString(0), pretty : true),
  )

  var insertStart = cpuTime()
  discard archiveDb.insertArchive("testfiles")
  discard archiveDb.insertArchive("testfiles2")
  discard archiveDb.insertArchive("testfilesempty")
  echo "Insert took ", cpuTime() - insertStart

  writeFile("testarchives.upa", archiveDb.writer.buff)

  echo parseNthArchiveInUpfile(archiveDb.writer.buff, 2)

  when true:
    var restoreStart = cpuTime()
    removeDir("testfiles_out")
    archiveDb.restoreArchive(0, "testfiles_out")

    echo "Restore took ", cpuTime() - restoreStart

  #fileDb.save()
