import std/[
  streams,
  strutils,
  options,
  os,
  sets,
  sequtils,
  times,
]

import db_connector/db_sqlite

import crunchy
import zstd/[compress, decompress]

import sodium/sodium_internal


const DbContextName = ['F', 'i', 'l', 'e', 't', 'o', 'o', 'l']
static:
  doAssert DbContextName.len() == 8


type
  DbCtx* = object
    connection: DbConn
    nextFileIdx, nextPathIdx: int
    masterKey: CryptoKey

  CryptoKey* = array[32, byte]

  FileId* = distinct int
  ArchiveId* = distinct int
  PathId* = distinct int

  FileTableRow* = object
    id*: FileId
    crc*: uint32
    sha*: string
    timestamp*: int
    isCompressed*: bool

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
  # TODO: File metadata; size as bare minimum in addition to timestamp
  self.connection.exec(sql"""CREATE TABLE IF NOT EXISTS file_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    crc32 INTEGER NOT NULL,
    sha256 TEXT NOT NULL,
    timestamp INTEGER NOT NULL,
    is_compressed INTEGER NOT NULL
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


proc initDbCtx*(path: string = ":memory:", masterKey: CryptoKey): DbCtx =
  createDir("store")
  let conn = open(path, "", "", "")
  conn.exec(sql"PRAGMA journal_mode = wal; PRAGMA synchronous = normal; PRAGMA temp_store = memory;")
  result = DbCtx(
    connection : conn,
    masterKey : masterKey,
  )
  result.createTables()
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

iterator iterArchivePathRows*(self: DbCtx, archiveId: ArchiveId): PathTableRow =
  for row in self.connection.rows(sql"SELECT * FROM path_table WHERE archive_id = ?", archiveId.int):
    yield row.toPathTableRow()

proc containsHashes*(self: DbCtx, crc: uint32, sha: string): bool {.inline.} =
  result = self.tryGetFileTableRowByHashes(crc, sha).isSome()


proc deriveKeyForFile(self: DbCtx, fileId: FileId): CryptoKey =
  doAssert crypto_secretstream_xchacha20poly1305_KEYBYTES() == crypto_kdf_keybytes_proc()
  result = default(Cryptokey)
  let subkeyId = fileId.uint64
  doAssert crypto_kdf_derive_from_key(
    cast[ptr byte](addr result[0]),
    result.len().csize_t,
    subkeyId,
    cast[array[8, cschar]](DbContextName),
    self.masterKey
  ) == 0

proc encryptFileData(self: DbCtx, fileId: FileId, data: openArray[byte]): seq[byte] =
  if data.len() == 0:
    return @[]
  let key = self.deriveKeyForFile(fileId)
  var
    state = default(crypto_secretstream_xchacha20poly1305_state)
    header = default(array[24, byte])
  doAssert crypto_secretstream_xchacha20poly1305_init_push(
    addr state,
    header,
    key,
  ) == 0
  result = newSeq[byte](crypto_secretstream_xchacha20poly1305_ABYTES().int + header.len() + data.len())
  copyMem(addr result[0], addr header[0], header.len())
  var outLen = 0.culonglong
  doAssert crypto_secretstream_xchacha20poly1305_push(
    addr state,
    addr result[header.len()],
    addr outLen,
    cast[ptr byte](addr data[0]),
    data.len().culonglong,
    nil,
    0,
    crypto_secretstream_xchacha20poly1305_TAG_FINAL(),
  ) == 0


proc decryptFileData(self: DbCtx, fileId: FileId, data: openArray[byte]): seq[byte] =
  if data.len() == 0:
    return @[]
  let key = self.deriveKeyForFile(fileId)
  var
    header = default(array[24, byte])
    state = default(crypto_secretstream_xchacha20poly1305_state)
  copyMem(addr header[0], addr data[0], header.len())
  doAssert crypto_secretstream_xchacha20poly1305_init_pull(
    addr state,
    header,
    key,
  ) == 0

  result = newSeq[byte](data.len() - header.len() - crypto_secretstream_xchacha20poly1305_ABYTES().int)
  var
    tag = 0u8
    outLen = 0.culonglong
  doAssert crypto_secretstream_xchacha20poly1305_pull(
    addr state,
    addr result[0],
    addr outLen,
    addr tag,
    cast[ptr byte](addr data[header.len()]),
    (data.len() - header.len()).culonglong,
    nil,
    0
  ) == 0
  doAssert tag == crypto_secretstream_xchacha20poly1305_TAG_FINAL()
  doAssert outLen.int == result.len()


# TODO: Make sure paths only use forwards slash
# TODO: Switch to streams/memory mapped files
# TODO: Error correction codes
proc insertFileData(self: var DbCtx, data: string): tuple[id: FileId, isNew: bool] =
  template doInsert(crc: uint32, sha: string, isCompressed: bool): untyped =
    self.connection.exec(sql"INSERT INTO file_table (crc32, sha256, timestamp, is_compressed) VALUES (?, ?, ?, ?)", crc.int, sha, getTimestamp(), isCompressed.int)
    result = (
      id : self.nextFileIdx.FileId,
      isNew : true,
    )
    inc self.nextFileIdx

  let
    crc = data.crc32()
    sha = data.sha256().toHex()
    existingRow = self.tryGetFileTableRowByHashes(crc, sha)

  template writeStore(data: seq[byte] | string, compressed: bool) =
    if data.len() > 0:
      writeFile(
        "store/" & sha,
        self.encryptFileData(
          self.nextFileIdx.FileId,
          (
            when data is string:
              data.toOpenArrayByte(0, data.len() - 1)
            else:
              data.toOpenArray(0, data.len() - 1)
          ),
        )
      )
    else:
      writeFile("store/" & sha, data)
    doInsert(crc, sha, isCompressed=compressed)

  # TODO: Maybe calculate entropy as a preliminary step
  if existingRow.isNone():
    if data.len() > 0:
      let compressedData = compress(data)
      if compressedData.len() < data.len():
        writeStore(compressedData, compressed=true)
      else:
        writeStore(data, compressed=false)
    else:
      writeStore(data, compressed=false)
  else:
    return (
      id : existingRow.unsafeGet().id,
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
    (fileId, isNew) = self.insertFileData(readFile(path))

  if not isNew:
    for row in self.fetchPathRowsByFileId(fileId):
      if row.path == fileName:
        return
  let archiveId = self.putNewFileArchive(fileName)
  self.putPath(archiveId, fileId, fileName)

proc insertDirectoryArchive*(self: var DbCtx, path: string, name = none string): ArchiveId =
  let
    baseAbsPath = path.absolutePath().strip(chars={'/'}, leading=false, trailing=true)
    archiveName = name.get(baseAbsPath.splitPath().tail)
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

  result = self.putNewDirectoryArchive(archiveName)
  for file in files:
    discard self.putPath(result, file.id, file.normalPath)
  self.connection.exec(sql"COMMIT")

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
        let tmp = readFile("store/".joinPath(fileRow.sha))
        self.decryptFileData(fileRow.id, tmp.toOpenArrayByte(0, tmp.len() - 1))

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
  import std/[
    terminal,
  ]

  proc main =
    # TODO: Init db with a password and validate it with subsequent launches
    let masterKey = block:
      let password = readPasswordFromStdin()
      # TODO: Generate a salt and store it somewhere with the database
      let saltBuf = "BFC4305C5DA424DEADBB50C09462207B".parseHexStr()

      if password.len() < crypto_pwhash_passwd_min_proc().int:
        echo "Password too short. Must be at least: " & $crypto_pwhash_passwd_min_proc()
        quit(1)
      var masterKeyBuf = default(CryptoKey)
      doAssert crypto_pwhash(
        cast[ptr byte](addr masterKeyBuf[0]),
        masterKeyBuf.len().culonglong,
        password.cstring,
        password.len().culonglong,
        cast[ptr byte](addr saltBuf[0]),
        crypto_pwhash_opslimit_moderate_proc(),
        crypto_pwhash_memlimit_moderate_proc(),
        crypto_pwhash_alg_argon2id13_proc()
      ) == 0
      masterKeyBuf


    var ctx = initDbCtx("tests.sqlite", masterKey)
    #discard ctx.insertSingleFileArchive("nim copy.cfg")
    #discard ctx.insertDirectoryArchive("test")

    ctx.restoreArchive(1.ArchiveId, "./out")

    echo "Archives:"
    for row in ctx.iterArchiveRows():
      echo row

  main()
