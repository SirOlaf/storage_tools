## Minimal archive metadata. The UI layer may load additional metadata from separate files

import std/[
  times,
  strutils,
  options,
]

import archives
import upfiles


type
  ArchiveCoreMetadata* = object
    name*: string
    index*: ArchiveIndex
    time*: DateTime

  ArchiveExtraMetadata* = object
    version*: Option[string]
    tags*: Option[seq[string]]
    custom*: Option[string]

  ArchiveMetadata* = object
    core*: ArchiveCoreMetadata
    extra*: ArchiveExtraMetadata



proc field(x: var UpfileWriter, name, value: string) =
  x.terminated:
    x.writeRaw upfileEscape(name).string & " " & upfileEscape(value).string

proc putMetadata*(x: var UpfileWriter, data: ArchiveCoreMetadata, extra = default(ArchiveExtraMetadata)) =
  x.entity:
    x.group "metacore":
      x.field "name", data.name
      x.field "index", $data.index
      x.field "time", $data.time
    if extra.version.isSome() or extra.tags.isSome() or extra.custom.isSome():
      x.group "extra":
        if extra.version.isSome():
          x.field "version", extra.version.get()
        if extra.tags.isSome():
          x.group "tags":
            for t in extra.tags.get():
              x.terminated x.putStr(t)
        if extra.custom.isSome():
          x.field "custom", extra.custom.get()

proc parseMetadata*(p: var StrSlice): ArchiveMetadata =
  result = ArchiveMetadata()
  p.parenLoop:
    let groupName = $p.parseAsciiWord()
    case groupName
    of "metacore":
      p.parenLoop:
        let dataName = $p.parseAsciiWord()
        case dataName
        of "name":
          result.core.name = p.takeString()
          p.expectChar(';')
        of "index":
          result.core.index = p.takeInt().ArchiveIndex
          p.expectChar(';')
        of "time":
          result.core.time = p.takeString().parseTime("yyyy-MM-dd'T'HH:mm:sszzz", utc()).utc()
          p.expectChar(';')
        else:
          raiseAssert "Unexpected metacore field: " & dataName
    of "extra":
      p.parenLoop:
        let dataName = $p.parseAsciiWord()
        case dataName
        of "version":
          result.extra.version = some p.takeString()
          p.expectChar(';')
        of "tags":
          var tags = newSeq[string]()
          p.parenLoop:
            tags.add(p.takeString())
            p.expectChar(';')
          result.extra.tags = some tags
        of "custom":
          result.extra.custom = some p.takeString()
          p.expectChar(';')
        else:
          raiseAssert "Unexpected extra field: " & dataName
    else:
      raiseAssert "Unexpected metacore group: " & groupName

iterator iterMetadata*(data: openArray[char]): ArchiveMetadata =
  if data.len() > 0:
    var p = data.toSlice()
    p.skipWhitespace()
    while not p.atEof():
      yield p.parseMetadata()
      p.skipWhitespace()


when isMainModule:
  import std/[sugar,]

  var writer = UpfileWriter(buff : newString(0), pretty : true)
  writer.putMetadata(ArchiveCoreMetadata(
    name : "test",
    index : 0,
    time : now().utc(),
  ), ArchiveExtraMetadata(
    tags : some @["$test"],
    version : some "v1.5.2-4",
    custom : some "test $;()"
  ))

  echo writer.buff
  echo takeNthEntityInUpfile(writer.buff, 0).dup.parseMetadata()
