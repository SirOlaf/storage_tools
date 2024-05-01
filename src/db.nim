import std/[
  streams,
  strutils,
  options,
  os,
]

import db_connector/db_sqlite

import crunchy


type
  DbCtx* = object
    connection: DbConn

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
  )""")

  self.connection.exec(sql"""CREATE TABLE IF NOT EXISTS archive_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    is_directory INTEGER NOT NULL
  )""")

  self.connection.exec(sql"""CREATE TABLE IF NOT EXISTS path_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    archive_id INTEGER INTEGER NOT NULL,
    file_id INTEGER NOT NULL,
    path TEXT NOT NULL,
    FOREIGN KEY (archive_id) REFERENCES archive_table(id),
    FOREIGN KEY (file_id) REFERENCES file_table (id)
  )""")


proc initDbCtx*(path: string = ":memory:"): DbCtx =
  let conn = open(path, "", "", "")
  result = DbCtx(
    connection : conn,
  )
  result.createTables()

proc fetchCrcRows*(self: DbCtx, crc: uint32): seq[FileTableRow] =
  result = @[]
  for row in self.connection.fastRows(sql"SELECT * FROM file_table WHERE crc32 = ?", crc):
    result.add(FileTableRow(
      id : row[0].parseInt().FileId,
      crc : row[1].parseInt().uint32,
      sha : row[2],
    ))

proc fetchPathRowsByFileId*(self: DbCtx, fileId: FileId): seq[PathTableRow] =
  result = @[]
  for row in self.connection.fastRows(sql"SELECT * FROM path_table WHERE file_id = ?", fileId.int):
    result.add(PathTableRow(
      id : row[0].parseInt().PathId,
      archiveId : row[1].parseInt().ArchiveId,
      fileId : row[2].parseInt().FileId,
      path : row[3],
    ))

proc tryGetRowBySha*(rows: seq[FileTableRow], sha: string): Option[FileTableRow] =
  result = none FileTableRow
  for row in rows:
    if row.sha == sha:
      return some row

proc containsHashes*(self: DbCtx, crc: uint32, sha: string): bool {.inline.} =
  result = self.fetchCrcRows(crc).tryGetRowBySha(sha).isSome()


# TODO: Make sure path's only use forwards slash
# TODO: Switch to streams/memory mapped files
# TODO: Error correction codes
proc insertFileData(self: DbCtx, data: string): tuple[id: FileId, isNew: bool] =
  template doInsert(crc: uint32, sha: string): untyped =
    result = (
      id : self.connection.insertId(sql"INSERT INTO file_table (crc32, sha256) VALUES (?, ?)", crc, sha).FileId,
      isNew : true,
    )

  let
    crc = data.crc32()
    sha = data.sha256().toHex()
    existingCrcRows = self.fetchCrcRows(crc)
  if existingCrcRows.len() == 0:
    # No collision or duplicate, proceed without further checks
    doInsert(crc, sha)
  else:
    # check if it's a duplicate
    let duplicate = existingCrcRows.tryGetRowBySha(sha)
    if duplicate.isSome():
      return (
        id : duplicate.unsafeGet().id,
        isNew : false,
      )
    # not a duplicate, insert.
    doInsert(crc, sha)

proc putNewArchive(self: DbCtx, name: string, isDirectory: bool): ArchiveId {.inline.} =
  self.connection.insertId(sql"INSERT INTO archive_table (name, is_directory) VALUES (?, ?)", name, isDirectory).ArchiveId

proc putNewFileArchive(self: DbCtx, name: string): ArchiveId {.inline.} =
  self.putNewArchive(name, false)

proc putNewDirectoryArchive(self: DbCtx, name: string): ArchiveId {.inline.} =
  self.putNewArchive(name, true)

proc putPath(self: DbCtx, archiveId: ArchiveId, fileId: FileId, path: string): PathId =
  self.connection.insertId(
    sql"INSERT INTO path_table (archive_id, file_id, path) VALUES (?, ?, ?)",
    archiveId.int,
    fileId.int,
    path,
  ).PathId


# Returns a PathId because the archive id is internal for single files
proc insertSingleFileArchive*(self: DbCtx, path: string): PathId =
  let
    fileName = path.splitPath().tail
    (fileId, isNew) = self.insertFileData(readFile(path))

  if not isNew:
    for row in self.fetchPathRowsByFileId(fileId):
      if row.path == fileName:
        return
  let archiveId = self.putNewFileArchive(fileName)
  self.putPath(archiveId, fileId, fileName)

proc insertDirectoryArchive*(self: DbCtx, path: string): ArchiveId =
  let
    baseAbsPath = path.absolutePath()
    archiveName = baseAbsPath.splitPath().tail
  var
    files = newSeq[tuple[id: FileId, normalPath: string]]()
  for p in baseAbsPath.walkDirRec():
    let normalPath = p.absolutePath().relativePath(baseAbsPath)
    let (fileId, isNew) = self.insertFileData(readFile(p))
    files.add((
      id : fileId,
      normalPath : normalPath,
    ))

  # TODO: If there are duplicate files, make sure the entire archive isn't a perfect duplicate by checking file ids
  result = self.putNewDirectoryArchive(archiveName)
  for file in files:
    discard self.putPath(result, file.id, file.normalPath)


proc main =
  # user, password, database name can be empty.
  # These params are not used on db_sqlite module.
  let ctx = initDbCtx(":memory:")
  #discard ctx.insertSingleFileArchive("nim.cfg")
  #discard ctx.insertSingleFileArchive("nim copy.cfg")
  discard ctx.insertDirectoryArchive(".")

  echo "\nRows:"
  for x in ctx.connection.fastRows(sql"SELECT * FROM path_table"):
    echo x


main()