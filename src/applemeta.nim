## Detection of Apple filesystem metadata (AppleDouble `._*` files, `.DS_Store`,
## volume-level bookkeeping directories, ...) so the archive layer can drop it
## before anything is hashed or stored.
##
## Files are identified by their headers wherever the format has one, so a
## renamed `.DS_Store` is still caught and a user file that merely happens to be
## called `.DS_Store` is not. Only formats without any content signature (empty
## marker files, volume directories) fall back to names.

import std/[
  os,
  strutils,
]


const
  appleDoubleMagic = 0x00051607u32
  appleDoubleHeaderLen = 26 # magic(4) + version(4) + filler(16) + numEntries(2)
  appleDoubleEntryLen = 12 # id(4) + offset(4) + length(4)

  dsStoreHeaderLen = 36 # alignment(4) + "Bud1"(4) + offset(4) + size(4) + offset(4) + unknown(16)

  headerReadLen = max(appleDoubleHeaderLen, dsStoreHeaderLen)

  # Zero byte marker files, their name is all there is to go on
  emptyMarkerNames = [
    ".localized",
    ".metadata_never_index",
    ".com.apple.timemachine.donotpresent",
    "Icon\r", # Custom folder icon, the icon itself lives in the resource fork
  ]

  # Directories macOS creates at the root of volumes it mounts. These hold
  # arbitrary internal formats without a shared signature.
  volumeDirNames = [
    ".Spotlight-V100",
    ".fseventsd",
    ".Trashes",
    ".TemporaryItems",
    ".DocumentRevisions-V100",
    ".MobileBackups",
  ]

  # Created by Archive Utility when zipping, holds AppleDouble files only
  zipSidecarDirName = "__MACOSX"


proc beU16(s: string, offset: int): uint32 {.inline.} =
  (s[offset].uint32 shl 8) or s[offset + 1].uint32

proc beU32(s: string, offset: int): uint32 {.inline.} =
  (s[offset].uint32 shl 24) or (s[offset + 1].uint32 shl 16) or
    (s[offset + 2].uint32 shl 8) or s[offset + 3].uint32

proc readHeader(path: string): string =
  var f: File
  if not open(f, path, fmRead):
    return ""
  defer: f.close()
  result = newString(headerReadLen)
  result.setLen(f.readBuffer(result[0].addr, headerReadLen))


proc isAppleDouble*(header: string, fileSize: int64): bool =
  ## AppleDouble header file (`._name`), see RFC 1740. AppleSingle (0x00051600)
  ## is deliberately not matched since it carries the data fork as well.
  if header.len() < appleDoubleHeaderLen or header.beU32(0) != appleDoubleMagic:
    return false
  let version = header.beU32(4)
  if version != 0x00020000u32 and version != 0x00010000u32:
    return false
  let numEntries = header.beU16(24).int64
  fileSize >= appleDoubleHeaderLen + numEntries * appleDoubleEntryLen

proc isDsStore*(header: string, fileSize: int64): bool =
  ## Finder `.DS_Store` buddy allocator file
  if header.len() < dsStoreHeaderLen or header.beU32(0) != 1 or header[4 ..< 8] != "Bud1":
    return false
  let
    rootOffset = header.beU32(8)
    rootSize = header.beU32(12)
  # The root block offset is stored twice, offsets are relative to the 4 byte alignment header
  rootOffset == header.beU32(16) and 4 + rootOffset.int64 + rootSize.int64 <= fileSize

proc isPlist(header: string): bool {.inline.} =
  header.startsWith("bplist00") or header.startsWith("<?xml")

proc isIcns(header: string, fileSize: int64): bool {.inline.} =
  header.len() >= 8 and header.startsWith("icns") and header.beU32(4).int64 == fileSize


proc isAppleMetadataFile*(path: string): bool =
  ## Whether the regular file at `path` is Apple metadata that should not be archived
  let fileSize = getFileSize(path)
  let name = path.extractFilename()
  if fileSize == 0:
    return name in emptyMarkerNames

  let header = readHeader(path)
  if header.isAppleDouble(fileSize) or header.isDsStore(fileSize):
    return true

  # No unique signature of their own, so require both the name and the expected format
  case name
  of ".apdisk": header.isPlist()
  of ".VolumeIcon.icns": header.isIcns(fileSize)
  else: false

proc isAppleMetadataDir*(path: string): bool =
  ## Whether the directory at `path` and everything below it is Apple metadata
  let name = path.extractFilename()
  if name in volumeDirNames:
    return true
  if name == zipSidecarDirName:
    # Only drop it if it really is a zip sidecar, i.e. nothing but metadata inside
    for p in walkDirRec(path, skipSpecial=true):
      if not isAppleMetadataFile(p):
        return false
    return true
  false
