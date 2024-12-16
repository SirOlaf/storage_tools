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
    x.writeRaw upfileEscape(name) & " " & upfileEscape(value)

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
              x.terminated x.writeRaw(t.upfileEscape())
        if extra.custom.isSome():
          x.field "custom", extra.custom.get().upfileEscape()

proc parseMetadata*(raw: upfiles.Node): ArchiveMetadata =
  result = ArchiveMetadata()
  for groupNode in raw.kids:
    let groupName = $groupNode.kids[0].raw
    if groupName == "metacore":
      for k in groupNode.kids[1].kids:
        let
          name = $k.kids[0].raw
          value = $k.kids[1].raw
        case name
        of "name":
          result.core.name = value.upfileUnescape()
        of "index":
          result.core.index = value.upfileUnescape().parseInt().ArchiveIndex
        of "time":
          result.core.time = value.upfileUnescape().parseTime("yyyy-MM-dd'T'HH:mm:sszzz", utc()).utc()
        else:
          raiseAssert "Unexpected metacore field: " & name
    elif groupName == "extra":
      for k in groupNode.kids[1].kids:
        let name = $k.kids[0].raw
        case name
        of "version":
          result.extra.version = some ($k.kids[1].raw).upfileUnescape()
        of "tags":
          var tags = newSeq[string]()
          for t in k.kids[1].kids:
            tags.add($t.raw)
          result.extra.tags = some tags
        of "custom":
          result.extra.custom = some upfileUnescape($k.kids[1].raw)
        else:
          raiseAssert "unexpected extra field: " & name
    else:
      raiseAssert "Unexpected metacore group: " & groupName


when isMainModule:
  var writer = UpfileWriter(buff : newString(0), pretty : true)
  writer.putMetadata(ArchiveCoreMetadata(
    name : "test",
    index : 0,
    time : now().utc(),
  ))

  echo parseNthEntityInUpfile(writer.buff, 0).parseMetadata()

  echo writer.buff
