import std/[
  unittest,
  os,
]

import ../src/applemeta


proc be32(x: uint32): string =
  result = newString(4)
  for i in 0 ..< 4:
    result[i] = char((x shr (8 * (3 - i))) and 0xFF)

proc be16(x: uint16): string =
  char(x shr 8) & char(x and 0xFF)

proc appleDouble(numEntries: uint16 = 2, version = 0x00020000u32): string =
  result = be32(0x00051607) & be32(version) & "Mac OS X        " & be16(numEntries)
  for i in 0 ..< numEntries.int:
    result.add be32(9) & be32(0) & be32(0)

proc dsStore(): string =
  result = be32(1) & "Bud1" & be32(0x1000) & be32(0x800) & be32(0x1000) & newString(16)
  result.setLen(4 + 0x1000 + 0x800)


suite "applemeta":
  let root = getTempDir().joinPath("storage_tools_tapplemeta")
  removeDir(root)
  createDir(root)

  proc put(name, data: string): string =
    result = root.joinPath(name)
    createDir(result.parentDir())
    writeFile(result, data)

  test "AppleDouble is detected regardless of name":
    check isAppleMetadataFile(put("._doc.txt", appleDouble()))
    check isAppleMetadataFile(put("renamed", appleDouble()))
    check isAppleMetadataFile(put("v1", appleDouble(version = 0x00010000)))

  test "broken AppleDouble is kept":
    check not isAppleMetadataFile(put("._badversion", appleDouble(version = 3)))
    var truncated = appleDouble(numEntries = 4)
    truncated.setLen(30)
    check not isAppleMetadataFile(put("._truncated", truncated))
    var appleSingle = appleDouble()
    appleSingle[3] = '\x00' # 0x00051600 also carries the data fork
    check not isAppleMetadataFile(put("._single", appleSingle))

  test "DS_Store is detected by its header":
    check isAppleMetadataFile(put(".DS_Store", dsStore()))
    check isAppleMetadataFile(put("renamed_store", dsStore()))
    check not isAppleMetadataFile(put("sub/.DS_Store", "not a buddy allocator file"))
    var truncated = dsStore()
    truncated.setLen(64)
    check not isAppleMetadataFile(put("truncated_store", truncated))

  test "marker files need to be empty":
    check isAppleMetadataFile(put(".localized", ""))
    check isAppleMetadataFile(put("Icon\r", ""))
    check not isAppleMetadataFile(put("x/.localized", "content"))
    check not isAppleMetadataFile(put("empty", ""))

  test "name dependent files are checked for their format":
    check isAppleMetadataFile(put(".apdisk", "<?xml version=\"1.0\"?><plist/>"))
    check not isAppleMetadataFile(put("y/.apdisk", "hello"))
    check isAppleMetadataFile(put(".VolumeIcon.icns", "icns" & be32(8)))
    check not isAppleMetadataFile(put("z/.VolumeIcon.icns", "icns" & be32(100)))

  test "directories":
    createDir(root.joinPath(".fseventsd"))
    check isAppleMetadataDir(root.joinPath(".fseventsd"))
    discard put("__MACOSX/a/._doc.txt", appleDouble())
    check isAppleMetadataDir(root.joinPath("__MACOSX"))
    discard put("other/__MACOSX/._doc.txt", appleDouble())
    discard put("other/__MACOSX/real.txt", "user data")
    check not isAppleMetadataDir(root.joinPath("other/__MACOSX"))
    check not isAppleMetadataDir(root.joinPath("other"))

  removeDir(root)
