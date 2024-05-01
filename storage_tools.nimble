# Package

version       = "0.1.0"
author        = "SirOlaf"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["storage_tools"]


# Dependencies

requires "nim >= 2.1.1"

requires "crunchy >= 0.1.11"
requires "db_connector >= 0.1.0"