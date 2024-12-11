## File format for the upper layers of the storage stack

import std/[
  strutils,
]


const
  TermChars = {'(', ')', ';'} # must be escaped if used as part of a field

type
  EntityOffset = int
  UpfileIndex = object

  UpfileParser* = object # TODO: Replace parser with something like a slice
    i: int
    buff: ptr string

  StrSlice = object
    p: ptr UncheckedArray[char]
    len: int

  Node = object
    raw: StrSlice
    kids: seq[Node]
  Entity = Node


proc `$`*(x: StrSlice): string =
  result = newString(x.len)
  copyMem(addr result[0], x.p, x.len)


proc atEof(p: UpfileParser): bool {.inline.} =
  p.i >= p.buff[].len() - 1

proc skipWhitespace(p: var UpfileParser) =
  while p.buff[p.i].isSpaceAscii():
    inc p.i

proc expectChar(p: var UpfileParser, c: char) =
  p.skipWhitespace()
  if p.buff[p.i] != c:
    raiseAssert "Expected " & c & " got " & p.buff[p.i] & " offset: " & $p.i
  inc p.i

proc peekChar(p: var UpfileParser): char =
  p.skipWhitespace()
  p.buff[p.i]


template withParens(p: var UpfileParser, body: untyped): untyped =
  p.expectChar('(')
  body
  p.expectChar(')')


proc parseAsciiWord(p: var UpfileParser): StrSlice =
  p.skipWhitespace()
  let a = p.i
  while p.buff[p.i].isAlphaAscii():
    inc p.i
  StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[a]), len : p.i - a)

proc parseAnyNonTerm(p: var UpfileParser): StrSlice =
  p.skipWhitespace()
  let a = p.i
  while not p.buff[p.i].isSpaceAscii() and p.buff[p.i] notin TermChars:
    inc p.i
  StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[a]), len : p.i - a)

proc skipScope(p: var UpfileParser): StrSlice =
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

proc parseScope(p: var UpfileParser): Node =
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
      elif p.peekChar() == ';':
        inc p.i
      kids.add(Node(
        raw : StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[partsStart]), len : p.i - partsStart),
        kids : parts,
      ))

  Node(
    raw : StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[scopeStart]), len : p.i - scopeStart),
    kids : kids,
  )

proc parseGroup(p: var UpfileParser): Node =
  p.skipWhitespace()
  let groupStart = p.i
  let name = p.parseAsciiWord()
  let scope = p.parseScope()
  Node(
    raw : StrSlice(p : cast[ptr UncheckedArray[char]](addr p.buff[groupStart]), len : p.i - groupStart),
    kids : @[Node(raw : name), scope]
  )

proc parseEntity(p: var UpfileParser): Entity =
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

iterator iterUpfileEntityOffsets(data: ptr string): EntityOffset =
  # TODO: This could use slices instead
  var p = UpfileParser(buff : data, i : 0)
  while not p.atEof():
    let x = p.skipScope()
    yield EntityOffset(cast[uint](x.p) - cast[uint](addr data[0]))

proc countUpfileEntities*(data: ptr string): int =
  result = 0
  for _ in data.iterUpfileEntityOffsets():
    inc result

proc parseNthEntityInUpfile(data: ptr string, n: int): Entity =
  var p = UpfileParser(buff : data, i : 0)
  for i in 0 ..< n:
    discard p.skipScope()
  p.parseEntity()

proc parseUpfile(data: ptr string): seq[Entity] =
  result = newSeq[Node]()
  var p = UpfileParser(buff : data, i : 0)
  while not p.atEof():
    result.add p.parseEntity()



when isMainModule:
  import std/[
    times,
  ]

  var data = readFile("archives.upa")

  echo "Data size: ", data.len(), " | ", data.len().formatSize()

  let parseStart = cpuTime()
  #let x = parseUpfile(addr data)
  let x = parseNthEntityInUpfile(addr data, 1)
  echo x.raw

  echo "Entity count: ", countUpfileEntities(addr data)

  #echo x.raw
  echo "Took ", cpuTime() - parseStart
  #echo x.len()
  echo getOccupiedMem().formatSize()
