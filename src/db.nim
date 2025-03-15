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
      archives : toSeq(iterArchivesInUpfile(archiveBuff))  # TODO: Don't store the parsed variant of archives, most operations only require zero or one
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
  for x in db.metacoreWriter.buff.iterMetadata():
    yield x


proc save(db: DbCtx) =
  writeFile(db.archiveDb.fileDb.dbPath.joinPath(archivesUpName), db.archiveDb.writer.buff)

  var metaWriter = UpfileWriter(buff : "", pretty : true)
  for x in db.metacoreWriter.buff.iterMetadata():
    metaWriter.putMetadata(x.core, x.extra)
  writeFile(db.archiveDb.fileDb.dbPath.joinPath(metacoreUpName), metaWriter.buff)

  db.archiveDb.fileDb.save()


when isMainModule:
  var db = openDb(
    "/tmp/storage_tools/db",
    "/tmp/storage_tools/db/store",
    "test",
    false,
  )
  let insertedArchiveIdx = db.insertArchive(
    "testfiles",
    extraMetadata = ArchiveExtraMetadata(
      version : some "1.0",
      tags : some @["test$", "a", "b", "c"],
      custom : some "some; custom( $metadata )",
    )
  )
  removeDir("testfiles_out")
  db.restoreArchive(insertedArchiveIdx, "testfiles_out")

  for meta in db.iterMetadata():
    echo meta

  for i in 0 ..< dbSize:
    if db.archiveDb.fileDb.chunks[0].raw[i].fileSize == 0:
      echo i
      break

  db.save()

