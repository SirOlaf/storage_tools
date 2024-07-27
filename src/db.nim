import std/[
  streams,
  strutils,
  options,
  os,
  sets,
  sequtils,
  times,
  terminal,
]

import db_connector/db_sqlite

import crunchy
import zstd/[compress, decompress]

import crypto


const DbContextName = ['F', 'i', 'l', 'e', 't', 'o', 'o', 'l']
static:
  doAssert DbContextName.len() == 8


type
  DbCtx* = object
    connection: DbConn
    nextFileIdx, nextPathIdx: int
    masterKey: MasterKey
    storePath: string

  FileId* = distinct int
  ArchiveId* = distinct int
  PathId* = distinct int

  # TODO: Is there a more convenient way to store this data
  CryptoTableRow* = object
    saltHex*: string
    pwHashHex*: string

  FileTableRow* = object
    id*: FileId
    crc*: uint32
    sha*: string
    timestamp*: int
    isCompressed*: bool
    size*: uint64

  ArchiveTableRow* = object
    id*: ArchiveId
    name*: string
    isDirectory*: bool
    timestamp*: int

  PathTableRow* = object
    id*: PathId
    archiveId*: ArchiveId
    fileId*: FileId
    path*: string

proc `$`*(x: FileId): string {.borrow.}
proc `$`*(x: ArchiveId): string {.borrow.}
proc `$`*(x: PathId): string {.borrow.}


proc `=copy`*(self: var DbCtx; other: DbCtx) {.error.}
proc `=destroy`*(self: var DbCtx) =
  self.connection.close()


proc getTimestamp(): int = now().utc().toTime().toUnix()


proc createTables(self: DbCtx) =
  self.connection.exec(sql"""CREATE TABLE IF NOT EXISTS crypto_table (
    salt_hex TEXT NOT NULL,
    pw_hash_hex TEXT NOT NULL
  ) STRICT""")

  # TODO: File metadata; size as bare minimum in addition to timestamp
  self.connection.exec(sql"""CREATE TABLE IF NOT EXISTS file_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    crc32 INTEGER NOT NULL,
    sha256 TEXT NOT NULL,
    timestamp INTEGER NOT NULL,
    is_compressed INTEGER NOT NULL,
    size INTEGER NOT NULL
  ) STRICT""")

  self.connection.exec(sql"""CREATE TABLE IF NOT EXISTS archive_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    is_directory INTEGER NOT NULL,
    timestamp INTEGER NOT NULL
  ) STRICT""")

  self.connection.exec(sql"""CREATE TABLE IF NOT EXISTS path_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    archive_id INTEGER NOT NULL,
    file_id INTEGER NOT NULL,
    path TEXT NOT NULL,
    FOREIGN KEY (archive_id) REFERENCES archive_table(id),
    FOREIGN KEY (file_id) REFERENCES file_table (id)
  ) STRICT""")


proc hasCryptoEntry*(self: DbCtx): bool =
  let rows = self.connection.getAllRows(sql"SELECT * FROM crypto_table")
  rows.len() > 0

proc fetchCryptoEntry*(self: DbCtx): CryptoTableRow =
  let rows = self.connection.getAllRows(sql"SELECT salt_hex, pw_hash_hex FROM crypto_table")
  doAssert rows.len() == 1
  let row = rows[0]
  CryptoTableRow(
    saltHex : row[0],
    pwHashHex : row[1],
  )

proc putCryptoEntry*(self: DbCtx, pwHash: PwHash, salt: Salt) =
  self.connection.exec(sql"INSERT INTO crypto_table (salt_hex, pw_hash_hex) VALUES (?, ?)", $salt, $pwHash)


proc initDbCtx*(path: string = ":memory:"): DbCtx =
  let conn = open(path, "", "", "")
  conn.exec(sql"PRAGMA journal_mode = wal; PRAGMA synchronous = normal; PRAGMA temp_store = memory;")
  result = DbCtx(
    connection : conn,
    storePath : "store".absolutePath()
  )
  result.createTables()

  if result.hasCryptoEntry():
    let cryptoEntry = result.fetchCryptoEntry()
    let expectedPwHash = PwHash.fromString(cryptoEntry.pwHashHex.parseHexStr())
    var password = ""
    while true:
      password = readPasswordFromStdin()
      if verifyPassword(expectedPwHash, password):
        break
      else:
        echo "Wrong password"
    let salt = cryptoEntry.saltHex.parseHexStr().Salt
    result.masterKey = deriveMasterKey(password, salt)
  else:
    echo "Database does not exist yet."
    var password = readPasswordFromStdin("Create password: ")
    while true:
      let confirm = readPasswordFromStdin("Confirm password: ")
      if password == confirm:
        break
      else:
        echo "The passwords did not match!"
      password = readPasswordFromStdin()
    let
      pwHash = password.hashPassword()
      salt = generateSalt()
    result.putCryptoEntry(pwHash, salt)
    result.masterKey = deriveMasterKey(password, salt)


  createDir(result.storePath)
  template fetchTableIdx(name: string): int =
    let row = result.connection.getRow(sql"SELECT * FROM sqlite_sequence WHERE name = ?", name)
    if row[0] == "":
      1
    else:
      row[1].parseInt() + 1
  result.nextFileIdx = fetchTableIdx("file_table")
  result.nextPathIdx = fetchTableIdx("path_table")


proc toFileTableRow(row: Row): FileTableRow =
  FileTableRow(
    id : row[0].parseInt().FileId,
    crc : row[1].parseInt().uint32,
    sha : row[2],
    timestamp : row[3].parseInt(),
    isCompressed : row[4].parseInt() == 1,
    size : row[5].parseInt().uint64,
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
    isDirectory : row[2].parseInt() == 1,
    timestamp : row[3].parseInt(),
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

proc fetchFileByFileId*(self: DbCtx, fileId: FileId): FileTableRow =
  let row = self.connection.getRow(sql"SELECT * FROM file_table WHERE id = ?", fileId.int)
  row.toFileTableRow()

iterator iterArchiveRows*(self: DbCtx): ArchiveTableRow =
  for row in self.connection.rows(sql"SELECT * FROM archive_table"):
    yield row.toArchiveTableRow()

iterator iterArchiveRows*(self: DbCtx, name: string): ArchiveTableRow =
  for row in self.connection.rows(sql"SELECT * FROM archive_table WHERE name = ?", name):
    yield row.toArchiveTableRow()

iterator iterArchivePathRows*(self: DbCtx, archiveId: ArchiveId): PathTableRow =
  for row in self.connection.rows(sql"SELECT * FROM path_table WHERE archive_id = ?", archiveId.int):
    yield row.toPathTableRow()

proc containsHashes*(self: DbCtx, crc: uint32, sha: string): bool {.inline.} =
  result = self.tryGetFileTableRowByHashes(crc, sha).isSome()


# TODO: Make sure paths only use forwards slash
# TODO: Switch to streams/memory mapped files
# TODO: Error correction codes
proc insertFileData(self: var DbCtx, data: openArray[byte]): tuple[id: FileId, insertedSize: int64, isNew: bool] =
  let fileSize = data.len()
  template doInsert(crc: uint32, sha: string, size: int64, isCompressed: bool): untyped =
    self.connection.exec(sql"INSERT INTO file_table (crc32, sha256, timestamp, is_compressed, size) VALUES (?, ?, ?, ?, ?)", crc.int, sha, getTimestamp(), isCompressed.int, fileSize)
    result = (
      id : self.nextFileIdx.FileId,
      insertedSize : size,
      isNew : true,
    )
    inc self.nextFileIdx

  let
    crc = data.crc32()
    sha = data.sha256().toHex()
    existingRow = self.tryGetFileTableRowByHashes(crc, sha)

  template writeStore(data: openArray[byte], compressed: bool) =
    let outPath = self.storePath.joinPath($self.nextFileIdx)
    if data.len() > 0:
      writeFile(
        outPath,
        self.masterKey.encryptData(
          self.nextFileIdx.uint64.SubkeyId,
          data,
        )
      )
    doInsert(crc, sha, data.len(), isCompressed=compressed)

  # TODO: Maybe calculate entropy as a preliminary step
  if existingRow.isNone():
    if data.len() > 0:
      let compressedData = compress(data.toOpenArray(data.low, data.high))
      if compressedData.len() < data.len():
        writeStore(compressedData.toOpenArray(compressedData.low, compressedData.high), compressed=true)
      else:
        writeStore(data, compressed=false)
    else:
      writeStore(data, compressed=false)
  else:
    return (
      id : existingRow.unsafeGet().id,
      insertedSize : existingRow.unsafeGet().size.int64,
      isNew : false,
    )


proc putNewArchive(self: DbCtx, name: string, isDirectory: bool): ArchiveId {.inline.} =
  self.connection.insertId(sql"INSERT INTO archive_table (name, is_directory, timestamp) VALUES (?, ?, ?)", name, isDirectory.int, getTimestamp()).ArchiveId

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
    fileData = readFile(path) # TODO: memfiles
    (fileId, insertedSize, isNew) = self.insertFileData(fileData.toOpenArrayByte(fileData.low, fileData.high))

  if not isNew:
    for row in self.fetchPathRowsByFileId(fileId):
      if row.path == fileName:
        return
  let archiveId = self.putNewFileArchive(fileName)
  self.putPath(archiveId, fileId, fileName)

template withTransaction*(ctx: DbCtx, body: untyped): untyped =
  ctx.connection.exec(sql"BEGIN")
  body
  ctx.connection.exec(sql"COMMIT")

proc insertDirectoryArchive*(self: var DbCtx, path: string, name = none string): tuple[id: ArchiveId, insertedSize: int64] =
  doAssert dirExists(path)
  let
    baseAbsPath = path.absolutePath().strip(chars={'/'}, leading=false, trailing=true)
    archiveName = name.get(baseAbsPath.splitPath().tail)
  var
    newIds = initHashSet[int]()
    duplicatedIds = initHashSet[int]()
    files = newSeq[tuple[id: FileId, normalPath: string]]()
  var insertedBytes: int64 = 0
  self.withTransaction:
    for p in baseAbsPath.walkDirRec():
      let normalPath = p.absolutePath().relativePath(baseAbsPath)
      let fileData = readFile(p)
      let (fileId, insertedSize, isNew) = self.insertFileData(fileData.toOpenArrayByte(fileData.low, fileData.high))
      files.add((
        id : fileId,
        normalPath : normalPath,
      ))
      if isNew:
        insertedBytes += insertedSize
        newIds.incl(fileId.int)
      elif fileId.int notin newIds: # ids that were just added are not counted as duplicates for this
        duplicatedIds.incl(fileId.int)

    var checkedArchives = initHashSet[int]()
    # TODO: The performance of this is probably really bad
    for archive in self.iterArchiveRows(archiveName):
      if archive.id.int in checkedArchives:
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
      if files.len() != archivePathRows.len():
        continue
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
      return (id : archive.id, insertedSize : 0)

    result = (id : self.putNewDirectoryArchive(archiveName), insertedSize : insertedBytes)
    for file in files:
      discard self.putPath(result.id, file.id, file.normalPath)

proc restoreArchive*(self: DbCtx, archiveId: ArchiveId, targetPath: string) =
  let basePath = targetPath.absolutePath()
  if dirExists(basePath):
    removeDir(basePath)
  createDir(basePath)
  for pathRow in self.iterArchivePathRows(archiveId):
    let
      fullPath = basePath.joinPath(pathRow.path)
      relPath = fullPath.relativePath(basePath)
      pathHead = relPath.splitPath().head
      fileRow = self.fetchFileByFileId(pathRow.fileId)
      contents = block:
        if fileRow.size == 0:
          newSeq[byte](0)
        else:
          let tmp = readFile(self.storePath.joinPath($fileRow.id.int))
          self.masterKey.decryptData(fileRow.id.uint64.SubkeyId, tmp.toOpenArrayByte(tmp.low, tmp.high))

    if pathHead != "":
      createDir(basePath.joinPath(pathHead))
    if fileRow.isCompressed:
      writeFile(fullPath, decompress(contents))
    else:
      if contents.len() > 0:
        writeFile(fullPath, contents)
      else:
        writeFile(fullPath, "")

when isMainModule:
  import std/strformat

  proc main =
    template makeCtx: untyped =
      var ctx {.inject.} = initDbCtx("db.sqlite")

    let paramMode = paramStr(1)
    case paramMode
    of "i", "insert":
      let insertPath = paramStr(2)
      let name = if paramCount() > 2: some paramStr(3) else: none(string)

      if name.isNone():
        echo "Inserting with default name"
      else:
        echo "Inserting with name " & name.get()

      makeCtx()
      let insertInfo = ctx.insertDirectoryArchive(insertPath, name)
      echo "Inserted " & insertInfo.insertedSize.formatSize() & " into the store"
    of "r", "restore":
      let
        restorePath = paramStr(2)
        archiveId = paramStr(3).parseInt()
      makeCtx()
      ctx.restoreArchive(archiveId.ArchiveId, restorePath)
      echo "Restored"
    of "l", "list":
      makeCtx()
      for row in ctx.iterArchiveRows():
        let timeStr = row.timestamp.fromUnix().format("yyyy-MM-dd hh:mm:ss")
        echo &"id: {row.id} | name: \"{row.name}\" | insert time: {timeStr}"
    else:
      echo "Unknown option: " & paramMode

  main()
