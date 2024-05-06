# Port of https://github.com/Backblaze/JavaReedSolomon


const
  fieldSize = 256
  generatingPolynomial = 29


func generateLogTable(polynomial: int): array[fieldSize, int16] {.compileTime.} =
  result = default(type(result))
  for i in 0 ..< fieldSize:
    result[i] = -1 # uninitialized
  var b = 1
  for log in 0 ..< fieldSize - 1: # exclude start
    if result[b] != -1:
      raiseAssert "Duplicate logarithm"
    result[b] = log.int16
    b = b shl 1
    if fieldSize <= b:
      b = (b - fieldSize) xor polynomial
const logTable = generateLogTable(generatingPolynomial)

func generateExpTable(polynomial: int): array[fieldSize * 2 - 2, byte] {.compileTime.} =
  result = default(type(result))
  for i in 1 ..< fieldSize:
    let log = logTable[i]
    result[log] = i.byte
    result[log + fieldSize - 1] = i.byte
const expTable = generateExpTable(generatingPolynomial)


func gfAdd*(a, b: byte): byte {.inline.} = a xor b
func gfSub*(a, b: byte): byte {.inline.} = a xor b

func gfMul*(a, b: byte): byte =
  if a == 0 or b == 0:
    0
  else:
    let
      logA = logTable[a]
      logB = logTable[b]
      logRes = logA.int + logB.int
    expTable[logRes]

func gfDiv*(a, b: byte): byte =
  if a == 0:
    0
  elif b == 0:
    raise newException(DivByZeroDefect, "Division by zero")
  else:
    let
      logA = logTable[a]
      logB = logTable[b]
    var logRes = logA - logB
    if logRes < 0:
      logRes += 255
    expTable[logRes]

func gfExp*(a, n: byte): byte =
  if n == 0:
    1
  elif a == 0:
    0
  else:
    let logA = logTable[a]
    var logRes = logA.int * n.int
    while 255 <= logRes:
      logRes -= 255
    expTable[logRes]

