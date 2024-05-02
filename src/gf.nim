

proc gfAdd*(x, y: int): int {.inline.} = x xor y
proc gfSub*(x, y: int): int {.inline.} = gfAdd(x, y)

proc gfMulNoLookup[Prim: static int](x, y: int): int =
  # Russian peasant multiplication
  result = 0
  var
    x = x
    y = y
  while y > 0:
    if (y and 1).bool: result = result.gfAdd(x)
    y = y shr 1
    x = x shl 1
    if Prim > 0 and (x and 0x100).bool: x = x.gfSub(Prim)

proc calcGfTables[Prim: static int](): tuple[exp: array[512, byte], log: array[256, byte]] =
  result = default(type(result))
  var x = 1u8
  for i in 0u8 ..< 255u8:
    result.exp[i] = x
    result.log[x] = i
    x = gfMulNoLookup[Prim](x.int, 2).byte
  for i in 255 ..< 512:
    result.exp[i] = result.exp[i - 255]

proc gfMul*[Prim: static int](x, y: int): int =
  const (expTable, logTable) = calcGfTables[Prim]()
  if x == 0 or y == 0:
    0
  else:
    expTable[logTable[x] + logTable[y]].int

proc gfDiv*[Prim: static int](x, y: int): int =
  const (expTable, logTable) = calcGfTables[Prim]()
  if y == 0:
    raise newException(DivByZeroDefect, "Zero division")
  if x == 0:
    0
  else:
    expTable[(logTable[x].int + 255 - logTable[y].int) mod 255].int

proc gfPow*[Prim: static int](x, power: int): int =
  const (expTable, logTable) = calcGfTables[Prim]()
  expTable[(logTable[x].int * power) mod 255].int

proc gfInverse*[Prim: static int](x: int): int =
  const (expTable, logTable) = calcGfTables[Prim]()
  expTable[255 - logTable[x]]

proc gfPolyScale*[Prim: static int](p: seq[int], x: int): seq[int] =
  result = newSeq[int](p.len())
  for i in 0 ..< p.len():
    result[i] = gfMul[Prim](p[i], x)

proc gfPolyAdd*[Prim: static int](p, q: seq[int]): seq[int] =
  result = newSeq[int](max(p.len(), q.len()))
  for i in 0 ..< p.len():
    result[i + result.len() - p.len()] = p[i]
  for i in 0 ..< q.len():
    let tmp = result[i + result.len() - q.len()]
    result[i + result.len() - q.len()] = tmp xor q[i]

proc gfPolyMul*[Prim: static int](p, q: seq[int]): seq[int] =
  result = newSeq[int](p.len() + q.len() - 1)
  for j in 0 ..< q.len():
    for i in 0 ..< p.len():
      result[i + j] = gfAdd(result[i + j], gfMul[Prim](p[i], q[j]))

proc gfPolyEval*[Prim: static int](poly: seq[int], x: int): (seq[int], seq[int]) =
  result = poly[0]
  for i in 1 ..< poly.len():
    result = gfAdd(gfMul[Prim](result, x), poly[i])

proc gfPolyDiv*[Prim: static int](dividend, divisor: seq[int]): tuple[quotient, remainder: seq[int]] =
  var msgOut = dividend
  for i in 0 ..< dividend.len() - (divisor.len() - 1):
    let coef = msgOut[i]
    if coef != 0:
      for j in 1 ..< divisor.len():
        if divisor[j] != 0:
          msgOut[i + j] = msgOut[i + j] xor gfMul[Prim](divisor[j], coef)
  let separator = divisor.len() - 1
  (msgOut[0 ..< separator], msgOut[separator ..< msgOut.len()])

