import std/[
  options,
  times,
  paths,
  os,
  sequtils,
]

import files, archives, metacore, upfiles


const
  archivesUpName = "archives.upa"
  metacoreUpName = "metacore.upm"


type
  DbCtx = object
    archiveDb: ArchiveDb
    metacoreWriter: UpfileWriter


proc openDb(dbPath: string, storePath: string, password: string, prettyUpfiles: bool): DbCtx =
  let archiveBuff = if fileExists(dbPath.joinPath(archivesUpName)): readFile(dbPath.joinPath(archivesUpName)) else: newString(0)
  let metacoreBuff = if fileExists(dbPath.joinPath(metacoreUpName)): readFile(dbPath.joinPath(metacoreUpName)) else: newString(0)
  DbCtx(
    archiveDb : ArchiveDb(
      fileDb : openFileDb(dbPath, storePath, password),
      writer : UpfileWriter(buff : archiveBuff, pretty : prettyUpfiles),
      archives : toSeq(iterArchivesInUpfile(addr archiveBuff))
    ),
    metacoreWriter : UpfileWriter(buff : metacoreBuff, pretty : prettyUpfiles),
  )

proc insertArchive(db: var DbCtx, folderPath: string, name = none[string](), extraMetadata = default(ArchiveExtraMetadata)): ArchiveIndex =
  let prevLen = db.archiveDb.archives.len()
  result = db.archiveDb.insertArchive(folderPath)
  if prevLen != db.archiveDb.archives.len():
    db.metacoreWriter.putMetadata(ArchiveCoreMetadata(
      name : if name.isSome(): name.get() else: folderPath.Path.extractFilename().string,
      index : result,
      time : now().utc()
    ), extraMetadata)
  else:
    echo "Archive ", folderPath, " is a duplicate of ", result

proc restoreArchive(db: var DbCtx, archiveIndex: ArchiveIndex, toDir: string) =
  db.archiveDb.restoreArchive(archiveIndex, toDir)

iterator iterMetadata(db: DbCtx): ArchiveMetadata =
  for x in iterUpfileEntities(addr db.metacoreWriter.buff):
    yield x.parseMetadata()


proc save(db: DbCtx) =
  writeFile(db.archiveDb.fileDb.dbPath.joinPath(archivesUpName), db.archiveDb.writer.buff)
  writeFile(db.archiveDb.fileDb.dbPath.joinPath(metacoreUpName), db.metacoreWriter.buff)
  db.archiveDb.fileDb.save()


when isMainModule:
  var db = openDb(
    "/tmp/storage_tools/db",
    "/tmp/storage_tools/db/store",
    "test",
    true,
  )
  discard db.insertArchive(
    "testfiles",
    extraMetadata = ArchiveExtraMetadata(
      version : some "1.0",
      tags : some @["test", "a", "b", "c"],
      custom : some "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    )
  )
  removeDir("testfiles_out")
  db.restoreArchive(0, "testfiles_out")

  for meta in db.iterMetadata():
    echo meta

  for i in 0 ..< dbSize:
    if db.archiveDb.fileDb.entries[i].fileSize == 0:
      echo i
      break

  db.save()

