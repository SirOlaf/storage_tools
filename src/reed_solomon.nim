import gf


const rsPrim = 0x11d


proc rsGeneratorPoly(nSym: int): seq[int] =
  result = @[1]
  for i in 0 ..< nSym:
    result = gfPolyMul[rsPrim](result, @[1, gfPow[rsPrim](2, i)])

proc rsEncodeMsg(msgIn: seq[int], nSym: int): seq[int] =
  let gen = rsGeneratorPoly(nSym)
  var msg = msgIn
  msg.setLen(msg.len() + (gen.len() - 1))
  let (_, remainder) = gfPolyDiv[rsPrim](msg, gen)
  result = msgIn & remainder
