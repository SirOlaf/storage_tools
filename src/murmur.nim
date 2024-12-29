

type HashMurmur2* = uint32

proc murmur2impl(data: ptr UncheckedArray[byte], len: uint32): HashMurmur2 =
  # https://github.com/aappleby/smhasher/blob/0ff96f7835817a27d0487325b6c16033e2992eb5/src/MurmurHash2.cpp#L339
  const
    seed = 0xBE726E21u32 # randomization behavior is undesirable here so use a constant seed
    m = 0x5bd1e995u32
    r = 24

  template h: untyped = result
  var
    len = len
    data = data
  h = seed xor len

  while len >= 4:
    var k = data[0].uint32 or (data[1].uint32 shl 8) or (data[2].uint32 shl 16) or (data[3].uint32 shl 24)

    k *= m
    k = k xor (k shr r)
    k *= m

    h *= m
    h = h xor k

    data = cast[ptr UncheckedArray[byte]](addr data[4])
    len -= 4

  if len > 2:
    h = h xor (data[2].uint32 shl 16)
  if len > 1:
    h = h xor (data[1].uint32 shl 8)
  if len > 0:
    h = h xor data[0].uint32
    h *= m

  h = h xor (h shr 13)
  h *= m
  h = h xor (h shr 15)


proc murmur2*(data: openArray[char]): HashMurmur2 {.inline.} =
  murmur2impl(cast[ptr UncheckedArray[byte]](addr data[0]), data.len().uint32)
