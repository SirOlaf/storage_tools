## File format for the upper layers of the storage stack

import std/[
  strutils,
]


const
  TermChars* = {'(', ')', ';'} # must be escaped if used as part of a field

type
  EntityOffset* = int
  UpfileStr* = distinct string

  StrSlice* = object
    p*: ptr UncheckedArray[char]
    z: ptr UncheckedArray[char] # having the end pointer is more efficient than storing the length as it saves an operation during `inc`

  Node* = object
    raw*: StrSlice
    kids*: seq[Node]
  Entity* = Node


proc len*(x: StrSlice): int {.inline.} =
  cast[int](x.z) - cast[int](x.p)

proc `$`*(x: StrSlice): string =
  result = newString(x.len)
  copyMem(addr result[0], x.p, x.len)

proc inc(x: var StrSlice) {.inline.} =
  x.p = cast[ptr UncheckedArray[char]](addr x.p[1])

proc atEof*(p: StrSlice): bool {.inline.} =
  p.len == 0


proc toSlice*(buff: ptr UncheckedArray[char], len: int): StrSlice {.inline.} =
  StrSlice(p : buff, z : cast[ptr[UncheckedArray[char]]](cast[int](buff) + len))

proc toSlice*(buff: openArray[char]): StrSlice {.inline.} =
  toSlice(cast[ptr UncheckedArray[char]](addr buff[0]), buff.len())


proc skipWhitespace*(p: var StrSlice) =
  while p.p[0].isSpaceAscii():
    inc p

proc expectChar*(p: var StrSlice, c: char) =
  p.skipWhitespace()
  if p.p[0] != c:
    raiseAssert "Expected " & c & " got " & p.p[0]
  inc p

proc peekChar*(p: var StrSlice): char {.inline.} =
  p.skipWhitespace()
  p.p[0]


template withParens*(p: var StrSlice, body: untyped): untyped =
  p.expectChar('(')
  body
  p.expectChar(')')


proc parseAsciiWord*(p: var StrSlice): StrSlice =
  p.skipWhitespace()
  result = StrSlice(p : p.p)
  while p.p[0].isAlphaAscii():
    inc p
  result.z = p.p

proc parseAnyNonTerm*(p: var StrSlice): StrSlice =
  p.skipWhitespace()
  result = StrSlice(p : p.p)
  while not p.p[0].isSpaceAscii() and p.p[0] notin TermChars:
    inc p
  result.z = p.p

proc skipScope*(p: var StrSlice): StrSlice =
  p.skipWhitespace()
  result = StrSlice(p : p.p)
  p.expectChar('(')
  var depth = 1
  while true:
    if p.p[0] == '(':
      inc depth
    elif p.p[0] == ')':
      dec depth
      if depth == 0:
        break
    inc p
  result.z = p.p
  p.expectChar(')')

proc parseScope*(p: var StrSlice): Node =
  p.skipWhitespace()
  var raw = StrSlice(p : p.p)
  var kids = newSeq[Node]()
  p.withParens:
    while p.peekChar() != ')':
      var partsRaw = StrSlice(p : p.p)
      var parts = newSeq[Node]()
      while p.peekChar() notin TermChars:
        parts.add(Node(raw : p.parseAnyNonTerm()))
      if p.peekChar() == '(':
        parts.add(p.parseScope())
      partsRaw.z = p.p
      kids.add(Node(
        raw : partsRaw,
        kids : parts,
      ))
      if p.peekChar() == ';':
        inc p

  raw.z = p.p
  Node(
    raw : raw,
    kids : kids,
  )

proc parseGroup*(p: var StrSlice): Node =
  p.skipWhitespace()
  var raw = StrSlice(p : p.p)
  let name = p.parseAsciiWord()
  let scope = p.parseScope()
  raw.z = p.p
  Node(
    raw : raw,
    kids : @[Node(raw : name), scope]
  )

proc parseEntity*(p: var StrSlice): Entity =
  p.skipWhitespace()
  var raw = StrSlice(p : p.p)
  var groups = newSeq[Node]()
  p.withParens:
    while p.peekChar() != ')':
      groups.add(p.parseGroup())
  raw.z = p.p
  Node(
    raw : raw,
    kids : groups,
  )

iterator iterUpfileEntityOffsets*(data: openArray[char]): EntityOffset =
  if data.len() > 0:
    var p = data.toSlice()
    while not p.atEof():
      let x = p.skipScope()
      yield EntityOffset(cast[uint](x.p) - cast[uint](addr data[0]))

iterator iterUpfileEntities*(data: openArray[char]): Entity =
  if data.len() > 0:
    var p = data.toSlice()
    while not p.atEof():
      yield p.parseEntity()
      p.skipWhitespace()

proc countUpfileEntities*(data: openArray[char]): int =
  result = 0
  for _ in data.iterUpfileEntityOffsets():
    inc result

proc parseNthEntityInUpfile*(data: openArray[char], n: int): Entity =
  doAssert data.len() > 0
  var p = data.toSlice()
  for i in 0 ..< n:
    discard p.skipScope()
  p.parseEntity()

proc parseUpfile*(data: openArray[char]): seq[Entity] =
  result = newSeq[Node]()
  for ent in iterUpfileEntities(data):
    result.add ent


type
  UpfileWriter* = object
    buff*: string # TODO: Replace with a stream
    pretty*: bool
    indent: int
    afterNewline: bool


# TODO: Don't manually define escape sequences
proc upfileEscape*(x: string): UpfileStr =
  x.multiReplace(
    ("$", "$d"),
    (" ", "$s"),
    ("(", "$p"),
    (")", "$b"),
    (";", "$c"),
  ).UpfileStr

proc upfileUnescape*(x: UpfileStr): string =
  x.string.multiReplace(
    ("$d", "$"),
    ("$s", " "),
    ("$p", "("),
    ("$b", ")"),
    ("$c", ";"),
  )


proc writeRaw*(p: var UpfileWriter, x: string) =
  if p.pretty and p.afterNewline:
    p.buff.add(repeat("    ", p.indent))
    p.afterNewline = false
  p.buff.add(x)

proc putStr*(p: var UpfileWriter, x: string) =
  p.writeRaw upfileEscape(x).string

proc newline*(p: var UpfileWriter, force: bool = false) =
  if p.pretty or force:
    p.writeRaw("\n")
  p.afterNewline = true

proc terminator*(p: var UpfileWriter) =
  p.writeRaw(";")
  if p.pretty:
    p.newline()

template scope*(p: var UpfileWriter, body: untyped): untyped =
  p.writeRaw("(")
  p.newline()
  inc p.indent
  body
  dec p.indent
  p.writeRaw(")")
  p.newline()

template entity*(p: var UpfileWriter, body: untyped): untyped =
  p.scope:
    body

template group*(p: var UpfileWriter, name: string, body: untyped): untyped =
  p.writeRaw(name)
  p.scope:
    body

template terminated*(p: var UpfileWriter, body: untyped): untyped =
  body
  p.terminator()



when isMainModule:
  import std/[
    times,
  ]

  var data = block:
    template interval(x: var UpfileWriter, a, b: int, body: untyped): untyped =
      x.writeRaw("i " & $a & "," & $b)
      x.scope:
        body

    proc path(x: var UpfileWriter, p: string) =
      x.terminated:
        x.writeRaw("p ")
        x.putStr(p)

    proc smallFile(x: var UpfileWriter, p: string) =
      x.writeRaw("s ")
      x.path(p)

    proc bigFile(x: var UpfileWriter, p: string) =
      x.writeRaw("b ")
      x.path(p)

    template gapFile(x: var UpfileWriter, idx: int, body: untyped): untyped =
      x.writeRaw("g ")
      x.writeRaw($idx & " ")
      body

    proc emptyFile(x: var UpfileWriter, p: string) =
      x.writeRaw("e ")
      x.path(p)

    var x = UpfileWriter(buff : newString(0), pretty : false)
    x.entity:
      x.group("files"):
        x.interval(0, 3):
          x.smallFile "some/relative/path"
          x.smallFile "some/path with spaces.txt"
          x.smallFile "a/pathwithdollars$andsemicolons;.txt"
          x.bigFile "some/other/path"
        x.gapFile(12, x.smallFile "small/file/in/a/gap.txt")
        x.gapFile(15, x.bigFile "big/file/in/a/gap.txt")
        x.emptyFile("empty/file.txt")
      x.group("emptydirs"):
        x.path "empty/dir/1"
        x.path "empty/dir/2"
    x.buff

  while data.len() < 1_000_000_000:
    data &= data

  echo "Data size: ", data.len(), " | ", data.len().formatSize()
  let count = countUpfileEntities(data)
  echo "Entity count: ", count

  let parseStart = cpuTime()
  #let x = parseUpfile(data)
  let x = parseNthEntityInUpfile(data, count - 1)
  echo x.raw

  #echo x.raw
  echo "Took ", cpuTime() - parseStart
  #echo x.len()
  echo getOccupiedMem().formatSize()
