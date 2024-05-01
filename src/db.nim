import std/[
  streams,
  strutils,
  options,
  os,
  sets,
  sequtils,
]

import db_connector/db_sqlite

import crunchy


type
  DbCtx* = object
    connection: DbConn
    nextFileIdx, nextPathIdx: int

  FileId* = distinct int
  ArchiveId* = distinct int
  PathId* = distinct int

  FileTableRow* = object
    id*: FileId
    crc*: uint32
    sha*: string

  ArchiveTableRow* = object
    id*: ArchiveId
    name*: string
    isDirectory*: bool

  PathTableRow* = object
    id*: PathId
    archiveId*: ArchiveId
    fileId*: FileId
    path*: string


proc `=copy`*(self: var DbCtx; other: DbCtx) {.error.}
proc `=destroy`*(self: var DbCtx) =
  self.connection.close()


proc createTables(self: DbCtx) =
  # TODO: File metadata; size as bare minimum
  self.connection.exec(sql"""CREATE TABLE IF NOT EXISTS file_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    crc32 INTEGER NOT NULL,
    sha256 TEXT NOT NULL
  ) STRICT""")

  self.connection.exec(sql"""CREATE TABLE IF NOT EXISTS archive_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    is_directory INTEGER NOT NULL
  ) STRICT""")

  self.connection.exec(sql"""CREATE TABLE IF NOT EXISTS path_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    archive_id INTEGER NOT NULL,
    file_id INTEGER NOT NULL,
    path TEXT NOT NULL,
    FOREIGN KEY (archive_id) REFERENCES archive_table(id),
    FOREIGN KEY (file_id) REFERENCES file_table (id)
  ) STRICT""")


proc initDbCtx*(path: string = ":memory:"): DbCtx =
  let conn = open(path, "", "", "")
  conn.exec(sql"PRAGMA journal_mode = wal; PRAGMA synchronous = normal; PRAGMA temp_store = memory;")
  result = DbCtx(
    connection : conn,
  )
  result.createTables()
  let fileRow = result.connection.getRow(sql"SELECT * FROM sqlite_sequence WHERE name = ?", "file_table")
  if fileRow[0] == "":
    result.nextFileIdx = 1
  else:
    result.nextFileIdx = fileRow[1].parseInt() + 1
  let pathRow = result.connection.getRow(sql"SELECT * FROM sqlite_sequence WHERE name = ?", "path_table")
  if pathRow[0] == "":
    result.nextPathIdx = 1
  else:
    result.nextPathIdx = pathRow[1].parseInt() + 1


proc toFileTableRow(row: Row): FileTableRow =
  FileTableRow(
    id : row[0].parseInt().FileId,
    crc : row[1].parseInt().uint32,
    sha : row[2],
  )

proc toPathTableRow(row: Row): PathTableRow =
  PathTableRow(
    id : row[0].parseInt().PathId,
    archiveId : row[1].parseInt().ArchiveId,
    fileId : row[2].parseInt().FileId,
    path : row[3],
  )

proc toArchiveTableRow(row: Row): ArchiveTableRow =
  ArchiveTableRow(
    id : row[0].parseInt().ArchiveId,
    name : row[1],
    isDirectory : row[2].parseInt() == 1
  )


proc tryGetFileTableRowByHashes*(self: DbCtx, crc: uint32, sha: string): Option[FileTableRow] =
  let x = self.connection.getRow(sql"SELECT * FROM file_table WHERE crc32 = ? AND sha256 = ?", crc, sha)
  if x[0] == "":
    none FileTableRow
  else:
    some x.toFileTableRow()

proc fetchPathRowsByFileId*(self: DbCtx, fileId: FileId): seq[PathTableRow] =
  result = @[]
  for row in self.connection.fastRows(sql"SELECT * FROM path_table WHERE file_id = ?", fileId.int):
    result.add(row.toPathTableRow())

iterator iterArchiveRows*(self: DbCtx): ArchiveTableRow =
  for row in self.connection.rows(sql"SELECT * FROM archive_table"):
    yield row.toArchiveTableRow()

iterator iterArchivePathRows*(self: DbCtx, archiveId: ArchiveId): PathTableRow =
  for row in self.connection.rows(sql"SELECT * FROM path_table WHERE archive_id = ?", archiveId.int):
    yield row.toPathTableRow()

proc containsHashes*(self: DbCtx, crc: uint32, sha: string): bool {.inline.} =
  result = self.tryGetFileTableRowByHashes(crc, sha).isSome()


# TODO: Make sure path's only use forwards slash
# TODO: Switch to streams/memory mapped files
# TODO: Error correction codes
proc insertFileData(self: var DbCtx, data: string): tuple[id: FileId, isNew: bool] =
  template doInsert(crc: uint32, sha: string): untyped =
    self.connection.exec(sql"INSERT INTO file_table (crc32, sha256) VALUES (?, ?)", crc.int, sha)
    result = (
      id : self.nextFileIdx.FileId,
      isNew : true,
    )
    inc self.nextFileIdx

  let
    crc = data.crc32()
    sha = data.sha256().toHex()
    existingRow = self.tryGetFileTableRowByHashes(crc, sha)
  if existingRow.isNone():
    doInsert(crc, sha)
  else:
    return (
      id : existingRow.unsafeGet().id,
      isNew : false,
    )


proc putNewArchive(self: DbCtx, name: string, isDirectory: bool): ArchiveId {.inline.} =
  self.connection.insertId(sql"INSERT INTO archive_table (name, is_directory) VALUES (?, ?)", name, isDirectory.int).ArchiveId

proc putNewFileArchive(self: DbCtx, name: string): ArchiveId {.inline.} =
  self.putNewArchive(name, false)

proc putNewDirectoryArchive(self: DbCtx, name: string): ArchiveId {.inline.} =
  self.putNewArchive(name, true)

proc putPath(self: var DbCtx, archiveId: ArchiveId, fileId: FileId, path: string): PathId =
  result = self.nextPathIdx.PathId
  self.connection.exec(
    sql"INSERT INTO path_table (archive_id, file_id, path) VALUES (?, ?, ?)",
    archiveId.int,
    fileId.int,
    path,
  )
  inc self.nextPathIdx


# Returns a PathId because the archive id is internal for single files
proc insertSingleFileArchive*(self: var DbCtx, path: string): PathId =
  let
    fileName = path.splitPath().tail
    (fileId, isNew) = self.insertFileData(readFile(path))

  if not isNew:
    for row in self.fetchPathRowsByFileId(fileId):
      if row.path == fileName:
        return
  let archiveId = self.putNewFileArchive(fileName)
  self.putPath(archiveId, fileId, fileName)

proc insertDirectoryArchive*(self: var DbCtx, path: string): ArchiveId =
  let
    baseAbsPath = path.absolutePath().strip(chars={'/'}, leading=false, trailing=true)
    archiveName = baseAbsPath.splitPath().tail
  var
    newIds = initHashSet[int]()
    duplicatedIds = initHashSet[int]()
    files = newSeq[tuple[id: FileId, normalPath: string]]()
  self.connection.exec(sql"BEGIN")
  for p in baseAbsPath.walkDirRec():
    let normalPath = p.absolutePath().relativePath(baseAbsPath)
    let (fileId, isNew) = self.insertFileData(readFile(p))
    files.add((
      id : fileId,
      normalPath : normalPath,
    ))
    if isNew:
      newIds.incl(fileId.int)
    elif fileId.int notin newIds: # ids that were just added are not counted as duplicates for this
      duplicatedIds.incl(fileId.int)
  self.connection.exec(sql"COMMIT")

  var checkedArchives = initHashSet[int]()
  # TODO: The performance of this is probably really bad
  for archive in self.iterArchiveRows():
    if archive.id.int in checkedArchives or archive.name != archiveName:
      # if the name isn't the same or the archive has already been checked, skip
      continue
    var isInteresting = false
    for archivePathRow in self.iterArchivePathRows(archive.id):
      if archivePathRow.fileId.int in duplicatedIds:
        isInteresting = true
        break
    # added before the check to avoid doing extra work during the next iterations
    checkedArchives.incl(archive.id.int)
    if not isInteresting:
      continue

    let archivePathRows = self.iterArchivePathRows(archive.id).toSeq()
    var foundAllFiles = true
    for insertedFile in files:
      var foundFile = false
      for archiveFile in archivePathRows:
        if insertedFile.id.int == archiveFile.fileId.int and insertedFile.normalPath == archiveFile.path:
          foundFile = true
          break
      if not foundFile:
        foundAllFiles = false
        break
    if not foundAllFiles:
      continue

    # The archive is a perfect duplicate. Return early.
    return archive.id

  # TODO: If there are duplicate files, make sure the entire archive isn't a perfect duplicate by checking file ids
  result = self.putNewDirectoryArchive(archiveName)
  self.connection.exec(sql"BEGIN")
  for file in files:
    discard self.putPath(result, file.id, file.normalPath)
  self.connection.exec(sql"COMMIT")

proc main =
  # user, password, database name can be empty.
  # These params are not used on db_sqlite module.
  var ctx = initDbCtx("tests.sqlite")
  #discard ctx.insertSingleFileArchive("nim copy.cfg")
  discard ctx.insertDirectoryArchive("..")

  echo "\nRows:"
  for x in ctx.connection.fastRows(sql"SELECT * FROM archive_table"):
    echo x


main()