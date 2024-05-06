# Port of https://github.com/Backblaze/JavaReedSolomon

import std/[
  strutils, strformat,
]

import galois


type
  Matrix* = object
    rows*, columns*: int
    data*: seq[seq[byte]]

proc `[]`*(self: Matrix, c, r: int): byte {.inline.} = self.data[r][c]
proc `[]=`*(self: var Matrix, c, r: int, v: byte) {.inline.} = self.data[r][c] = v

proc initMatrix*(rows, columns: int): Matrix =
  result = Matrix(rows : rows, columns : columns, data : newSeq[seq[byte]](rows))
  for r in 0 ..< rows:
    result.data[r] = newSeq[byte](columns)

proc initMatrix*(data: seq[seq[byte]]): Matrix =
  result = Matrix(rows : data.len(), columns : data[0].len(), data : data)
  for row in data:
    if row.len() != result.columns:
      raiseAssert "Not all rows have the same size"

proc initIdentityMatrix*(size: int): Matrix =
  result = initMatrix(size, size)
  for i in 0 ..< size:
    result[i, i] = 1

proc render*(self: Matrix): string =
  var rowStrs = newSeqOfCap[string](self.rows)
  for row in self.data:
    var rowStr = ""
    for col in row:
      rowStr.add(fmt"{col:02x} ")
    rowStrs.add(rowStr)
  rowStrs.join("\n")

proc `==`*(l, r: Matrix): bool = l.data == r.data

proc `*`*(a, b: Matrix): Matrix =
  if a.columns != b.rows:
    raiseAssert fmt"Left columns ({a.columns}) != Right rows ({b.rows})"
  result = initMatrix(a.rows, b.columns)
  for r in 0 ..< a.rows:
    for c in 0 ..< b.columns:
      var value = 0u8
      for i in 0 ..< a.columns:
        value = value xor galois.gfMul(a[r, i], b[i, c])
      result[r, c] = value

proc `&`*(a, b: Matrix): Matrix =
  if a.rows != b.rows:
    raiseAssert "Left rows != Right rows"
  result = initMatrix(a.rows, a.columns + b.columns)
  for r in 0 ..< a.rows:
    for c in 0 ..< a.columns:
      result[c, r] = a[c, r]
    for c in 0 ..< b.columns:
      result[c + a.columns, r] = b[c, r]

proc sub*(self: Matrix; rmin, cmin, rmax, cmax: int): Matrix =
  result = initMatrix(rmax - rmin, cmax - cmin)
  for r in rmin ..< rmax:
    for c in cmin ..< cmax:
      result[c - cmin, r - rmin] = self[c, r]

proc getRow*(self: Matrix, row: int): seq[byte] =
  result = newSeq[byte](self.columns)
  for c in 0 ..< self.columns:
    result[c] = self[c, row]

proc swapRows*(self: var Matrix, r1, r2: int) =
  if r1 < 0 or self.rows <= r1 or r2 < 0 or self.rows <= r2:
    raiseAssert "Row index out of range"
  swap(self.data[r1], self.data[r2])

proc gaussianElimination(self: var Matrix) =
  discard

proc invert*(self: Matrix): Matrix =
  if self.rows != self.columns:
    raiseAssert "Only square matrices can be inverted"
  var work = self & initIdentityMatrix(self.rows)
  work.gaussianElimination()
  work.sub(0, self.rows, self.columns, self.columns * 2)


var
  a = initIdentityMatrix(3)
  b = initIdentityMatrix(3)
echo a
echo a.render()
echo a == b
echo (a & b).render()
echo (a & b).sub(0, 0, 3, 2).render()
echo (a & b).getRow(0)

echo "#####"
echo a.render()
echo "---"
a.swapRows(1, 2)
echo a.render
echo "........."
echo a.invert().render()