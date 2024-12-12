## Minimal archive metadata. The UI layer may load additional metadata from separate files

import std/[
  times,
  strutils,
]

import archives
import upfiles


type
  ArchiveCoreMetadata* = object
    name*: string
    index*: ArchiveIndex
    time*: DateTime



proc field(x: var UpfileWriter, name, value: string) =
  x.terminated:
    x.writeRaw upfileEscape(name) & " " & upfileEscape(value)

proc putMetadata*(x: var UpfileWriter, data: ArchiveCoreMetadata) =
  x.entity:
    x.group "metacore":
      x.field "name", data.name
      x.field "index", $data.index
      x.field "time", $data.time

proc parseMetadata*(raw: upfiles.Node): ArchiveCoreMetadata =
  result = ArchiveCoreMetadata()
  doAssert raw.kids.len() == 1, "Invalid metadata entity, espected 1 child but got " & $raw.kids.len()
  let groupNode = raw.kids[0]
  doAssert $groupNode.kids[0].raw == "metacore", "Expected a metacore group, got " & $groupNode.kids[0].raw
  for k in groupNode.kids[1].kids:
    let
      name = $k.kids[0].raw
      value = $k.kids[1].raw
    case name
    of "name":
      result.name = value
    of "index":
      result.index = value.parseInt().ArchiveIndex
    of "time":
      result.time = value.parseTime("yyyy-MM-dd'T'HH:mm:sszzz", utc()).utc()
    else:
      raiseAssert "Unexpected metacore field: " & name


when isMainModule:
  var writer = UpfileWriter(buff : newString(0), pretty : true)
  writer.putMetadata(ArchiveCoreMetadata(
    name : "test",
    index : 0,
    time : now().utc(),
  ))

  echo parseNthEntityInUpfile(addr writer.buff, 0).parseMetadata()

  echo writer.buff
