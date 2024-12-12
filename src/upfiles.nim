## File format for the upper layers of the storage stack

import std/[
  strutils,
]


const
  TermChars* = {'(', ')', ';'} # must be escaped if used as part of a field

type
  EntityOffset* = int

  UpfileParser* = object # TODO: Replace parser with something like a slice
    i*: int
    buff*: ptr string

  StrSlice* = object
    p*: ptr UncheckedArray[char]
    len*: int

  Node* = object
    raw*: StrSlice
    kids*: seq[Node]
  Entity* = Node


proc `$`*(x: StrSlice): string =
  result = newString(x.len)
  copyMem(addr result[0], x.p, x.len)


proc atEof*(p: UpfileParser): bool {.inline.} =
  p.i >= p.buff[].len() - 1

proc skipWhitespace*(p: var UpfileParser) =
  while p.buff[p.i].isSpaceAscii():
    inc p.i

proc expectChar*(p: var UpfileParser, c: char) =
  p.skipWhitespace()
  if p.buff[p.i] != c:
    raiseAssert "Expected " & c & " got " & p.buff[p.i] & " offset: " & $p.i
  inc p.i

proc peekChar*(p: var UpfileParser): char =
  p.skipWhitespace()
  p.buff[p.i]


template withParens*(p: var UpfileParser, body: untyped): untyped =
  p.expectChar('(')
  body
  p.expectChar(')')


proc parseAsciiWord*(p: var UpfileParser): StrSlice =
  p.skipWhitespace()
  let a = p.i
  while p.buff[p.i].isAlphaAscii():
    inc p.i
  StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[a]), len : p.i - a)

proc parseAnyNonTerm*(p: var UpfileParser): StrSlice =
  p.skipWhitespace()
  let a = p.i
  while not p.buff[p.i].isSpaceAscii() and p.buff[p.i] notin TermChars:
    inc p.i
  StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[a]), len : p.i - a)

proc skipScope*(p: var UpfileParser): StrSlice =
  p.skipWhitespace()
  let scopeStart = p.i
  p.expectChar('(')
  var depth = 1
  while true:
    if p.buff[p.i] == '(':
      inc depth
    elif p.buff[p.i] == ')':
      dec depth
      if depth == 0:
        break
    inc p.i
  p.expectChar(')')
  StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[scopeStart]), len : p.i - scopeStart)

proc parseScope*(p: var UpfileParser): Node =
  p.skipWhitespace()
  let scopeStart = p.i
  var kids = newSeq[Node]()
  p.withParens:
    while p.peekChar() != ')':
      var partsStart = p.i
      var parts = newSeq[Node]()
      while p.peekChar() notin TermChars:
        parts.add(Node(raw : p.parseAnyNonTerm()))
      if p.peekChar() == '(':
        parts.add(p.parseScope())
      kids.add(Node(
        raw : StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[partsStart]), len : p.i - partsStart),
        kids : parts,
      ))
      if p.peekChar() == ';':
        inc p.i

  Node(
    raw : StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[scopeStart]), len : p.i - scopeStart),
    kids : kids,
  )

proc parseGroup*(p: var UpfileParser): Node =
  p.skipWhitespace()
  let groupStart = p.i
  let name = p.parseAsciiWord()
  let scope = p.parseScope()
  Node(
    raw : StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[groupStart]), len : p.i - groupStart),
    kids : @[Node(raw : name), scope]
  )

proc parseEntity*(p: var UpfileParser): Entity =
  p.skipWhitespace()
  var entityStart = p.i
  var groups = newSeq[Node]()
  p.withParens:
    while p.peekChar() != ')':
      groups.add(p.parseGroup())
  Node(
    raw : StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[entityStart]), len : p.i - entityStart),
    kids : groups,
  )

iterator iterUpfileEntityOffsets*(data: ptr string): EntityOffset =
  # TODO: This could use slices instead
  var p = UpfileParser(buff : data, i : 0)
  while not p.atEof():
    let x = p.skipScope()
    yield EntityOffset(cast[uint](x.p) - cast[uint](addr data[0]))

iterator iterUpfileEntities*(data: ptr string): Entity =
  var p = UpfileParser(buff : data, i : 0)
  while not p.atEof():
    yield p.parseEntity()

proc countUpfileEntities*(data: ptr string): int =
  result = 0
  for _ in data.iterUpfileEntityOffsets():
    inc result

proc parseNthEntityInUpfile*(data: ptr string, n: int): Entity =
  var p = UpfileParser(buff : data, i : 0)
  for i in 0 ..< n:
    discard p.skipScope()
  p.parseEntity()

proc parseUpfile*(data: ptr string): seq[Entity] =
  result = newSeq[Node]()
  for ent in iterUpfileEntities(data):
    result.add ent


type
  UpfileWriter* = object
    buff*: string # TODO: Replace with a stream
    pretty*: bool
    indent: int
    afterNewline: bool

proc writeRaw*(p: var UpfileWriter, x: string) =
  if p.pretty and p.afterNewline:
    p.buff.add(repeat("    ", p.indent))
    p.afterNewline = false
  p.buff.add(x)

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


# TODO: Don't manually define escape sequences
proc upfileEscape*(x: string): string =
  x.multiReplace(
    ("$", "$d"),
    (" ", "$s"),
    ("(", "$p"),
    (")", "$b"),
    (";", "$c"),
  )

proc upfileUnescape*(x: string): string =
  x.multiReplace(
    ("$d", "$"),
    ("$s", " "),
    ("$p", "("),
    ("$b", ")"),
    ("$c", ";"),
  )


when isMainModule:
  import std/[
    times,
  ]

  let data = block:
    template interval(x: var UpfileWriter, a, b: int, body: untyped): untyped =
      x.writeRaw("i " & $a & "," & $b)
      x.scope:
        body

    proc path(x: var UpfileWriter, p: string) =
      x.terminated:
        x.writeRaw("p ")
        x.writeRaw(upfileEscape(p))

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

  echo "Data size: ", data.len(), " | ", data.len().formatSize()

  let parseStart = cpuTime()
  #let x = parseUpfile(addr data)
  let x = parseNthEntityInUpfile(addr data, 0)
  echo x.raw

  echo "Entity count: ", countUpfileEntities(addr data)

  #echo x.raw
  echo "Took ", cpuTime() - parseStart
  #echo x.len()
  echo getOccupiedMem().formatSize()
