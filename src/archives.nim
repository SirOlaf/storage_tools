import std/[
  json,
  os,
  strutils,
  options,
  lists,
  sequtils,
  sets,
  tables,
  algorithm,
]

import files
import upfiles
import murmur


const
  minIntervalLen = 4
  NoDirIdx = -1


# TODO: Path prefixes if directory indices aren't good enough
type
  ArchiveFilePath* = tuple[name: string, dirIdx: DirIndex, perms: set[FilePermission]]
  ArchiveDirPath* = tuple[path: string, perms: set[FilePermission]]
  ArchiveIndex* = uint64
  DirIndex* = int64

  ArchiveInterval* = object
    a*, b*: FileIndex
    paths*: seq[ArchiveFilePath]

  ArchiveSingleFile* = object
    index*: FileIndex
    path*: ArchiveFilePath

  ArchiveStructureHash* = uint32
  # TODO: Store only structureHash and a slice
  ArchiveEntry* = object
    # Archive name is not stored here, it should be handled by the metadata layer
    structureHash*: ArchiveStructureHash # TODO: Write to file instead of calculating during load?
    smallFiles*: HashSet[FileIndex]
    intervals*: seq[ArchiveInterval]
    singles*: seq[ArchiveSingleFile]
    emptyFiles*: seq[ArchiveFilePath]
    dirs*: seq[ArchiveDirPath]

  LightArchiveInterval* = object
    a*, b*: FileIndex
    raw: StrSlice

  LightArchiveEntry* = object
    structureHash*: ArchiveStructureHash
    rawIntervals: seq[LightArchiveInterval]
    rawSingles: seq[StrSlice]
    rawEmptyFiles: seq[StrSlice]
    rawDirs: StrSlice

  ArchiveDb* = object
    fileDb*: FileDb
    archives*: seq[ArchiveEntry]
    writer*: UpfileWriter


proc hashStructure(archive: ArchiveEntry): ArchiveStructureHash =
  result = 0
  var acc = 0u32 # This is good enough, the main priority is order invariance
                         # Collisions will be handled by a full structural equality check

  template put(x: string, body: untyped) =
    result = result xor murmur2(x)
    body

  template add(x: uint64) =
    acc += (x and 0xFFFFFFFFu64).uint32
    acc += (x shr 32).uint32

  template add(x: int64) =
    add cast[uint64](x)

  template add(x: set[FilePermission]) =
    acc += cast[uint16](x)

  template put(x: ArchiveFilePath, body: untyped) =
    let p = if x.dirIdx >= 0: archive.dirs[x.dirIdx].path.joinPath(x.name) else: x.name
    put p:
      add x.perms
      body

  template put(x: ArchiveDirPath) =
    put x.path:
      add x.perms

  for interval in archive.intervals:
    for idx in interval.a .. interval.b:
      put interval.paths[idx - interval.a]:
        add idx

  for i in archive.singles:
    put i.path:
      add i.index

  for i in archive.emptyFiles:
    put i: discard

  for i in archive.dirs:
    put i

  result = result xor acc


template interval(x: var UpfileWriter, a, b: int, body: untyped): untyped =
  x.writeRaw("i " & $a & "," & $b)
  x.scope:
    body

proc path(x: var UpfileWriter, p: string, perms: set[FilePermission]) =
  x.terminated:
    x.writeRaw(cast[int16](perms).toOct(3) & " ")
    x.putStr(p)

proc filePath(x: var UpfileWriter, p: string, dirIndex: DirIndex, perms: set[FilePermission]) =
  x.terminated:
    x.writeRaw(cast[int16](perms).toOct(3) & " ")
    x.writeRaw($dirIndex & " ")
    x.putStr(p)

proc smallFile(x: var UpfileWriter, p: string, dirIndex: DirIndex, perms: set[FilePermission]) =
  x.writeRaw("s ")
  x.filePath(p, dirIndex, perms)

proc bigFile(x: var UpfileWriter, p: string, dirIndex: DirIndex, perms: set[FilePermission]) =
  x.writeRaw("b ")
  x.filePath(p, dirIndex, perms)

proc file(x: var UpfileWriter, p: string, dirIndex: DirIndex, small: bool, perms: set[FilePermission]) =
  if small:
    x.smallFile(p, dirIndex, perms)
  else:
    x.bigFile(p, dirIndex, perms)

proc gapFile(x: var UpfileWriter, idx: int, p: string, dirIndex: DirIndex, small: bool, perms: set[FilePermission]) =
  x.writeRaw("g ")
  x.writeRaw($idx & " ")
  x.file(p, dirIndex, small, perms)

proc emptyFile(x: var UpfileWriter, p: string, dirIndex: DirIndex, perms: set[FilePermission]) =
  x.writeRaw("e ")
  x.filePath(p, dirIndex, perms)

proc putArchive(x: var UpfileWriter, archive: ArchiveEntry) =
  x.entity:
    if archive.dirs.len() > 0:
      x.group "dirs":
        for p in archive.dirs:
          x.path(p.path, p.perms)
    if archive.intervals.len() > 0 or archive.singles.len() > 0 or archive.emptyFiles.len() > 0:
      x.group "files":
        for i in archive.intervals:
          x.interval(i.a, i.b):
            var j = i.a
            for p in i.paths:
              x.file(p.name, p.dirIdx, j in archive.smallFiles, p.perms)
              inc j
        for s in archive.singles:
          x.gapFile(s.index, s.path.name, s.path.dirIdx, s.index in archive.smallFiles, s.path.perms)
        for e in archive.emptyFiles:
          x.emptyFile(e.name, e.dirIdx, e.perms)

proc cmpArchiveDirPaths(x, y: ArchiveDirPath): int =
  # Compare based on depth and alphabetical order
  let xParts = x.path.split("/")
  let yParts = y.path.split("/")
  if xParts.len() != yParts.len():
    xParts.len().cmp(yParts.len())
  else:
    for i in 0 ..< xParts.len():
      let c = xParts[i].cmp(yParts[i])
      if c != 0:
        return c
    0

proc insertArchive*(db: var Archivedb, folderPath: string): ArchiveIndex =
  if not dirExists(folderPath):
    raiseAssert "Invalid directory path"
  let folderPath = absolutePath(folderPath).strip(chars={'/'}, leading=false, trailing=true)

  template dirPathToIdx(dirPath: string): DirIndex =
    if dirPath == "":
      NoDirIdx
    else:
      knownDirs[dirPath]

  var archive = ArchiveEntry()

  var knownDirs = newTable[string, DirIndex]()
  var dirs = newSeq[ArchiveDirPath]()
  var intervals = initDoublyLinkedList[tuple[a, b: FileIndex; paths: DoublyLinkedList[ArchiveFilePath]]]()
  db.fileDb.transaction:
    for dirPath in walkDirRec(folderPath, yieldFilter={pcDir}, relative=true, skipSpecial=true):
      let dirPath = dirPath.split(PathSep).join("/").normalizedPath()
      doAssert dirPath notin knownDirs
      knownDirs[dirPath] = 0
      dirs.add((dirPath, getFilePermissions(folderPath.joinPath(dirPath))))
    dirs.sort(cmpArchiveDirPaths)
    archive.dirs = dirs
    for i in 0 ..< dirs.len():
      knownDirs[dirs[i].path] = i

    for filePath in walkDirRec(folderPath, relative=true, skipSpecial=true):
      let
        filePath = filePath.split(PathSep).join("/").normalizedPath()
        fileName = filePath.extractFilename()
        fileDir = if "/" in filePath: filePath.parentDir() else: ""
      let perms = getFilePermissions(folderPath.joinPath(filePath))
      if getFileSize(folderPath.joinPath(filePath)) == 0:
        archive.emptyFiles.add((fileName, fileDir.dirPathToIdx(), perms))
      else:
        let fileIndex = db.fileDb.insertFile(folderPath.joinPath(filePath))
        if db.fileDb.entries[fileIndex].isInSmallBlock:
          archive.smallFiles.incl(fileIndex)

        let node = newDoublyLinkedNode((fileName, fileDir.dirPathToIdx(), perms))
        if intervals.head == nil:
          intervals.append(newDoublyLinkedNode((
            a : fileIndex,
            b : fileIndex,
            paths : DoublyLinkedList[ArchiveFilePath](head : node, tail : node)
          )))
        else:
          var it = intervals.head
          while it != nil:
            if fileIndex + 1 == it.value.a:
              it.value.a = fileIndex
              it.value.paths.prepend((fileName, fileDir.dirPathToIdx(), perms))
              break
            elif fileIndex - 1 == it.value.b:
              it.value.b = fileIndex
              it.value.paths.append((fileName, fileDir.dirPathToIdx(), perms))
              break
            it = it.next
          if it == nil:
            # Couldn't find an interval that works
            if fileIndex < intervals.head.value.a:
              let node = newDoublyLinkedNode((fileName, fileDir.dirPathToIdx(), perms))
              intervals.prepend(newDoublyLinkedNode((
                a : fileIndex,
                b : fileIndex,
                paths : DoublyLinkedList[ArchiveFilePath](head : node, tail : node),
              )))
            else:
              let node = newDoublyLinkedNode((fileName, fileDir.dirPathToIdx(), perms))
              intervals.append(newDoublyLinkedNode((
                a : fileIndex,
                b : fileIndex,
                paths : DoublyLinkedList[ArchiveFilePath](head : node, tail : node),
              )))

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

  # TODO: Implement structural equality check to be run after the structure hash matches
  archive.structureHash = archive.hashStructure()
  for i in 0 ..< db.archives.len():
    if db.archives[i].structureHash == archive.structureHash and db.archives[i] == archive:
      return i.ArchiveIndex

  result = db.archives.len().ArchiveIndex
  db.archives.add(archive)
  db.writer.putArchive(archive)


proc restoreArchive*(db: var ArchiveDb, archiveIndex: ArchiveIndex, toDir: string) =
  let archive = db.archives[archiveIndex]
  var createdDirs = initHashSet[string]()
  template ensureDir(dir: ArchiveDirPath) =
    let p = toDir.joinPath(dir.path)
    if p notin createdDirs:
      for d in p.parentDirs():
        createdDirs.incl(p)
    createDir(p)
    setFilePermissions(p, dir.perms)

  template makeFilePath(p: ArchiveFilePath): string =
    if p.dirIdx == NoDirIdx:
      toDir.joinPath(p.name)
    else:
      toDir.joinPath(archive.dirs[p.dirIdx].path).joinPath(p.name)

  for x in archive.dirs:
    ensureDir x
  for x in archive.emptyFiles:
    let f = open(x.makeFilePath(), fmWrite)
    f.close()
    setFilePermissions(x.makeFilePath(), x.perms)

  var smallFiles = (indices : newSeq[FileIndex](), fullPaths : newSeq[tuple[path: string, perms: set[FilePermission]]]())
  for x in archive.singles:
    if db.fileDb.entries[x.index].isInSmallBlock():
      smallFiles.indices.add(x.index)
      smallFiles.fullPaths.add((x.path.makeFilePath(), x.path.perms))
    else:
      db.fileDb.restoreBigFileFromStore(x.index, x.path.makeFilePath(), x.path.perms)

  for x in archive.intervals:
    for fileIndex in x.a .. x.b:
      let i = fileIndex - x.a
      if db.filedb.entries[fileIndex].isInSmallBlock():
        smallFiles.indices.add(fileIndex)
        smallFiles.fullPaths.add((path : x.paths[i].makeFilePath(), perms : x.paths[i].perms))
      else:
        db.fileDb.restoreBigFileFromStore(fileIndex, x.paths[i].makeFilePath(), x.paths[i].perms)
  db.fileDb.restoreSmallFilesFromStore(smallFiles.indices, smallFiles.fullPaths)



proc parsePath(permNode, pathNode: upfiles.Node): ArchiveDirPath {.inline.} =
  (upfileUnescape(UpfileStr($pathNode.raw)), cast[set[FilePermission]](parseOctInt($permNode.raw).uint16))

proc parseFilePath(permNode, dirIdxNode, pathNode: upfiles.Node): ArchiveFilePath {.inline.} =
  (upfileUnescape(UpfileStr($pathNode.raw)), parseInt($dirIdxNode.raw), cast[set[FilePermission]](parseOctInt($permNode.raw).uint16))

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
            interval.paths.add(parseFilePath(e.kids[1], e.kids[2], e.kids[3]))
            if e.kids[0].parseIsSmall():
              result.smallFiles.incl(i)
          result.intervals.add(interval)
        of "g":
          let idx = parseInt($fieldNode.kids[1].raw)
          result.singles.add(ArchiveSingleFile(
            index : idx,
            path : parseFilePath(fieldNode.kids[3], fieldNode.kids[4], fieldNode.kids[5]),
          ))
          if fieldNode.kids[2].parseIsSmall():
            result.smallFiles.incl(idx)
        of "e":
          result.emptyFiles.add(parseFilePath(fieldNode.kids[1], fieldNode.kids[2], fieldNode.kids[3]))
        else:
          raiseAssert "Unknown file entry kind: " & $fieldNode.kids[0].raw
    elif groupName == "dirs":
      for k in groupNode.kids[1].kids:
        result.dirs.add(parsePath(k.kids[0], k.kids[1]))
    else:
      raiseAssert "Unknown upfile group: " & groupName
  result.structureHash = result.hashStructure()

proc parseNthArchiveInUpfile*(data: openArray[char], n: int): ArchiveEntry =
  data.parseNthEntityInUpfile(n).parseArchive()

iterator iterArchivesInUpfile*(data: openArray[char]): ArchiveEntry =
  for ent in data.iterUpfileEntities():
    yield ent.parseArchive()


proc takePerms(p: var StrSlice): set[FilePermission] {.inline.} =
  cast[set[FilePermission]](parseOctInt($p.parseAnyNonTerm()).uint16)

proc takeInt(p: var StrSlice): int {.inline.} =
  parseInt($p.parseAnyNonTerm())

proc takeString(p: var StrSlice): string {.inline.} =
  upfileUnescape(UpfileStr($p.parseAnyNonTerm()))

iterator iterDirs*(archive: LightArchiveEntry): ArchiveDirPath =
  var p = archive.rawDirs
  p.withParens:
    while p.peekChar() != ')':
      let
        perms = p.takePerms()
        path = upfileUnescape(UpfileStr($p.parseAnyNonTerm()))
      p.expectChar(';')
      yield (path : path, perms : perms)

iterator iterEmptyFiles*(archive: LightArchiveEntry): ArchiveFilePath =
  for p in archive.rawEmptyFiles:
    var p = p
    doAssert $p.parseAsciiWord() == "e"
    let
      perms = p.takePerms()
      dirIdx = p.takeInt()
      name = p.takeString()
    p.expectChar(';')
    yield (name : name, dirIdx : dirIdx, perms : perms)

iterator iterSingles*(archive: LightArchiveEntry): ArchiveSingleFile =
  for p in archive.rawSingles:
    var p = p
    doAssert $p.parseAsciiWord() == "g"
    let
      fileId = p.takeInt()
      sizeTag = p.parseAsciiWord()
      perms = p.takePerms()
      dirIdx = p.takeInt()
      name = p.takeString()
    p.expectChar(';')
    yield ArchiveSingleFile(
      index : fileId,
      path : (name : name, dirIdx : dirIdx, perms : perms)
    )

iterator iterFiles*(interval: LightArchiveInterval): ArchiveFilePath =
  var p = interval.raw
  p.withParens:
    for i in interval.a .. interval.b:
      let
        sizeTag = p.parseAsciiWord()
        perms = p.takePerms()
        dirIdx = p.takeInt()
        name = p.takeString()
      p.expectChar(';')
      yield (name : name, dirIdx : dirIdx, perms : perms)

iterator iterLightweightArchives*(data: openArray[char]): LightArchiveEntry =
  if data.len() > 0:
    var p = data.toSlice()
    p.skipWhitespace()
    while not p.atEof():
      var cur = LightArchiveEntry()
      p.withParens:
        while p.peekChar() != ')':
          var groupName = p.parseAsciiWord()
          case $groupName
          of "dirs":
            cur.rawDirs = p.skipScope()
          of "files":
            p.withParens:
              while p.peekChar() != ')':
                var nodeKind = p.parseAsciiWord()
                case $nodeKind
                of "i":
                  let intervalEnds = $p.parseAnyNonTerm()
                  let comma = intervalEnds.find(',')
                  let s = p.skipScope()
                  cur.rawIntervals.add(LightArchiveInterval(
                    a : parseInt(intervalEnds[0 ..< comma]),
                    b : parseInt(intervalEnds[comma + 1 ..< intervalEnds.len()]),
                    raw : s,
                  ))
                of "e":
                  while p.peekChar() != ';':
                    inc p
                  p.expectChar(';')
                  cur.rawEmptyFiles.add(StrSlice(p : nodeKind.p, z : p.p))
                of "g":
                  while p.peekChar() != ';':
                    inc p
                  p.expectChar(';')
                  cur.rawSingles.add(StrSlice(p : nodeKind.p, z : p.p))
                else:
                  raiseAssert "Unknown file tag: " & $nodeKind
          else:
            raiseAssert "Unknown archive group: " & $groupName
      yield cur
      p.skipWhitespace()


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

  for l in iterLightweightArchives(archiveDb.writer.buff):
    echo "------------------"
    if l.rawDirs.len() > 0:
      echo "Dirs:"
      for d in l.iterDirs():
        echo d
    if l.rawEmptyFiles.len() > 0:
      echo "Empty files:"
      for e in l.iterEmptyFiles():
        echo e
    if l.rawIntervals.len() > 0:
      echo "Intervals:"
      for i in l.rawIntervals:
        echo i.a, ",", i.b
        for f in i.iterFiles():
          echo f
    if l.rawSingles.len() > 0:
      echo "Singles:"
      for s in l.iterSingles():
        echo s


  #echo parseNthArchiveInUpfile(archiveDb.writer.buff, 0)

  when false:
    var restoreStart = cpuTime()
    removeDir("testfiles_out")
    archiveDb.restoreArchive(0, "testfiles_out")

    echo "Restore took ", cpuTime() - restoreStart

  #fileDb.save()
