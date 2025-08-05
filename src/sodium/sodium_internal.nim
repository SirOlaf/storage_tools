{.passL: "`pkg-config --cflags --libs libsodium`".}

when defined(useFuthark):
  import futhark, os

  importc:
    outputPath currentSourcePath.parentDir() / "generated.nim"
    path "/usr/include/"
    "sodium.h"
else:
  include generated
