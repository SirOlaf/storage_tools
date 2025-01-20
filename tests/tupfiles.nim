import std/[
  unittest,
]

import ../src/upfiles


suite "upfiles":
  test "string escapes":
    check upfileEscape("a") is UpfileStr
    let specialChars = "$() ;"
    check upfileEscape(specialChars).string == "$d$p$b$s$c"
    check upfileUnescape(upfileEscape(specialChars)) == specialChars
    let s1 = "abc; test()$"
    check upfileEscape(s1).string == "abc$c$stest$p$b$d"
    check upfileUnescape(upfileEscape(s1)) == s1
    check upfileEscape("allvalid").string == "allvalid"
    check upfileEscape("\t").string == "\t"
    check upfileEscape("\n").string == "$n"
    check upfileUnescape(upfileEscape("a\na")) == "a\na"
    check upfileUnescape(upfileEscape("n\nnd$d")) == "n\nnd$d"

  test "valid group names":
    check "abcd".isValidGroupName()
    check "UpPeR".isValidGroupName()
    check not "123".isValidGroupName()
    check not "$".isValidGroupName()
    check not "test()".isValidGroupName()
    check not "a b c d".isValidGroupName()

  test "basics":
    const specialCharactersString = "$; ()"

    var w = UpfileWriter(buff : newString(0), pretty : false)
    w.terminated w.putStr(specialCharactersString)
    w.entity:
      w.group "testgroup":
        w.writeRaw("        \n\n")
        w.terminated w.writeRaw("data")

    var x = w.buff.toSlice()
    check x.takeString() == specialCharactersString
    x.expectChar(';')
    x.withParens:
      let groupName = $x.takeAsciiWord()
      check groupName == "testgroup"
      x.withParens:
        check $x.takeAnyNonTerm() == "data"
        x.expectChar(';')
        check not x.atEof()

    check x.atEof()

  test "multiple groups":
    var w = UpfileWriter(buff : newString(0), pretty : false)
    w.entity:
      w.group "groupone":
        w.terminated w.putStr "test1\t"
        w.terminated w.writeRaw "123"
      w.group "grouptwo":
        w.terminated w.putStr "test2"
        w.terminated w.writeRaw "word"

    var x = w.buff.toSlice()
    x.withParens:
      let groupName1 = $x.takeAsciiWord()
      check groupName1 == "groupone"
      x.withParens:
        check $x.takeString() == "test1\t"
        x.expectChar(';')
        check x.takeInt() == 123
        x.expectChar(';')

      let groupName2 = $x.takeAsciiWord()
      check groupName2 == "grouptwo"
      x.withParens:
        check $x.takeString() == "test2"
        x.expectChar(';')
        check $x.takeAsciiWord() == "word"
        x.expectChar(';')

    check x.atEof()

