import std/[
  options,
  times,
  paths,
  os,
]

import files, archives, metacore, upfiles


type
  DbCtx = object
    archiveDb: ArchiveDb
    metacoreWriter: UpfileWriter


proc openDb(dbPath: string, storePath: string, password: string, prettyUpfiles: bool): DbCtx =
  DbCtx(
    archiveDb : ArchiveDb(
      fileDb : openFileDb(dbPath, storePath, password),
      writer : UpfileWriter(buff : newString(0), pretty : prettyUpfiles),
    ),
    metacoreWriter : UpfileWriter(buff : newString(0), pretty : prettyUpfiles),
  )

proc insertArchive(db: var DbCtx, folderPath: string, name = none[string]()): ArchiveIndex =
  result = db.archiveDb.insertArchive(folderPath)
  db.metacoreWriter.putMetadata(ArchiveCoreMetadata(
    name : if name.isSome(): name.get() else: folderPath.Path.extractFilename().string,
    index : result,
    time : now().utc()
  ))

proc restoreArchive(db: var DbCtx, archiveIndex: ArchiveIndex, toDir: string) =
  db.archiveDb.restoreArchive(archiveIndex, toDir)

iterator iterMetadata(db: DbCtx): ArchiveCoreMetadata =
  for x in iterUpfileEntities(addr db.metacoreWriter.buff):
    yield x.parseMetadata()


proc save(db: DbCtx) =
  writeFile(db.archiveDb.fileDb.dbPath.joinPath("archives.upa"), db.archiveDb.writer.buff)
  writeFile(db.archiveDb.fileDb.dbPath.joinPath("meta.upm"), db.metacoreWriter.buff)
  db.archiveDb.fileDb.save()


when isMainModule:
  var db = openDb(
    "/tmp/storage_tools/db",
    "/tmp/storage_tools/db/store",
    "test",
    false,
  )
  discard db.insertArchive("testfiles")
  removeDir("testfiles_out")
  db.restoreArchive(0, "testfiles_out")

  for meta in db.iterMetadata():
    echo meta

  db.save()

