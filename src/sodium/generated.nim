
from macros import hint

when not declared(compilerwcharmin):
  type
    compilerwcharmin* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerwcharmin" &
        " already exists, not redeclaring")
when not declared(compilerwcharmaxanon):
  type
    compilerwcharmaxanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerwcharmaxanon" &
        " already exists, not redeclaring")
when not declared(compilervalisttag):
  type
    compilervalisttag* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilervalisttag" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305messagebytesmaxanon):
  type
    cryptoboxcurve25519xsalsa20poly1305messagebytesmaxanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xsalsa20poly1305messagebytesmaxanon" &
        " already exists, not redeclaring")
when not declared(compilerlonglongmax):
  type
    compilerlonglongmax* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerlonglongmax" &
        " already exists, not redeclaring")
when not declared(structiowidedata):
  type
    structiowidedata* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "structiowidedata" &
        " already exists, not redeclaring")
when not declared(compilerredirectnth):
  type
    compilerredirectnth* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerredirectnth" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfmessagebytesmaxanon):
  type
    cryptoaeadchacha20poly1305ietfmessagebytesmaxanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfmessagebytesmaxanon" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idmemlimitmaxanon):
  type
    cryptopwhashargon2idmemlimitmaxanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idmemlimitmaxanon" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519secretkeybytesanon):
  type
    cryptosigned25519secretkeybytesanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "cryptosigned25519secretkeybytesanon" &
        " already exists, not redeclaring")
when not declared(compilerrestrict):
  type
    compilerrestrict* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerrestrict" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idbytesmaxanon):
  type
    cryptopwhashargon2idbytesmaxanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idbytesmaxanon" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305zerobytesanon):
  type
    cryptoboxcurve25519xsalsa20poly1305zerobytesanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305zerobytesanon" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfmessagebytesmaxanon):
  type
    cryptostreamchacha20ietfmessagebytesmaxanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfmessagebytesmaxanon" &
        " already exists, not redeclaring")
when not declared(compileru32type):
  type
    compileru32type* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compileru32type" &
        " already exists, not redeclaring")
when not declared(compilerlongmax):
  type
    compilerlongmax* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerlongmax" &
        " already exists, not redeclaring")
when not declared(compilerulongwordtype):
  type
    compilerulongwordtype* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerulongwordtype" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519messagebytesmaxanon):
  type
    cryptosigned25519messagebytesmaxanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "cryptosigned25519messagebytesmaxanon" &
        " already exists, not redeclaring")
when not declared(compileruquadtype):
  type
    compileruquadtype* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compileruquadtype" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfmessagebytesmaxanon):
  type
    cryptoaeadxchacha20poly1305ietfmessagebytesmaxanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " &
        "cryptoaeadxchacha20poly1305ietfmessagebytesmaxanon" &
        " already exists, not redeclaring")
when not declared(compilersquadtype):
  type
    compilersquadtype* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilersquadtype" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305zerobytesanon):
  type
    cryptosecretboxxsalsa20poly1305zerobytesanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305zerobytesanon" &
        " already exists, not redeclaring")
when not declared(structiocodecvt):
  type
    structiocodecvt* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "structiocodecvt" &
        " already exists, not redeclaring")
when not declared(int):
  type
    int* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "int" & " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305messagebytesmaxanon):
  type
    cryptosecretboxxsalsa20poly1305messagebytesmaxanon* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " &
        "cryptosecretboxxsalsa20poly1305messagebytesmaxanon" &
        " already exists, not redeclaring")
when not declared(compilerredirect):
  type
    compilerredirect* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerredirect" &
        " already exists, not redeclaring")
when not declared(compilerslongwordtype):
  type
    compilerslongwordtype* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerslongwordtype" &
        " already exists, not redeclaring")
when not declared(typedef):
  type
    typedef* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "typedef" & " already exists, not redeclaring")
when not declared(compilerswordtype):
  type
    compilerswordtype* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerswordtype" &
        " already exists, not redeclaring")
when not declared(compilerbuiltinvalist):
  type
    compilerbuiltinvalist* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilerbuiltinvalist" &
        " already exists, not redeclaring")
when not declared(Sodiumsizemax):
  type
    Sodiumsizemax* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "Sodiumsizemax" &
        " already exists, not redeclaring")
when not declared(structiomarker):
  type
    structiomarker* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "structiomarker" &
        " already exists, not redeclaring")
when not declared(compilernfdbits):
  type
    compilernfdbits* {.incompleteStruct.} = object
else:
  static :
    hint("Declaration of " & "compilernfdbits" &
        " already exists, not redeclaring")
type
  compileruchar_520094052 = uint8 ## Generated based on /usr/include/bits/types.h:31:23
  compilerushort_520094054 = cushort ## Generated based on /usr/include/bits/types.h:32:28
  compileruint_520094056 = cuint ## Generated based on /usr/include/bits/types.h:33:22
  compilerulong_520094058 = culong ## Generated based on /usr/include/bits/types.h:34:27
  compilerint8t_520094060 = cschar ## Generated based on /usr/include/bits/types.h:37:21
  compileruint8t_520094062 = uint8 ## Generated based on /usr/include/bits/types.h:38:23
  compilerint16t_520094064 = cshort ## Generated based on /usr/include/bits/types.h:39:26
  compileruint16t_520094066 = cushort ## Generated based on /usr/include/bits/types.h:40:28
  compilerint32t_520094068 = cint ## Generated based on /usr/include/bits/types.h:41:20
  compileruint32t_520094070 = cuint ## Generated based on /usr/include/bits/types.h:42:22
  compilerint64t_520094072 = clong ## Generated based on /usr/include/bits/types.h:44:25
  compileruint64t_520094074 = culong ## Generated based on /usr/include/bits/types.h:45:27
  compilerintleast8t_520094076 = compilerint8t_520094061 ## Generated based on /usr/include/bits/types.h:52:18
  compileruintleast8t_520094078 = compileruint8t_520094063 ## Generated based on /usr/include/bits/types.h:53:19
  compilerintleast16t_520094080 = compilerint16t_520094065 ## Generated based on /usr/include/bits/types.h:54:19
  compileruintleast16t_520094082 = compileruint16t_520094067 ## Generated based on /usr/include/bits/types.h:55:20
  compilerintleast32t_520094084 = compilerint32t_520094069 ## Generated based on /usr/include/bits/types.h:56:19
  compileruintleast32t_520094093 = compileruint32t_520094071 ## Generated based on /usr/include/bits/types.h:57:20
  compilerintleast64t_520094095 = compilerint64t_520094073 ## Generated based on /usr/include/bits/types.h:58:19
  compileruintleast64t_520094097 = compileruint64t_520094075 ## Generated based on /usr/include/bits/types.h:59:20
  compilerquadt_520094099 = clong ## Generated based on /usr/include/bits/types.h:63:18
  compileruquadt_520094101 = culong ## Generated based on /usr/include/bits/types.h:64:27
  compilerintmaxt_520094103 = clong ## Generated based on /usr/include/bits/types.h:72:18
  compileruintmaxt_520094105 = culong ## Generated based on /usr/include/bits/types.h:73:27
  compilerdevt_520094107 = culong ## Generated based on /usr/include/bits/types.h:145:25
  compileruidt_520094109 = cuint ## Generated based on /usr/include/bits/types.h:146:25
  compilergidt_520094111 = cuint ## Generated based on /usr/include/bits/types.h:147:25
  compilerinot_520094113 = culong ## Generated based on /usr/include/bits/types.h:148:25
  compilerino64t_520094115 = culong ## Generated based on /usr/include/bits/types.h:149:27
  compilermodet_520094117 = cuint ## Generated based on /usr/include/bits/types.h:150:26
  compilernlinkt_520094119 = culong ## Generated based on /usr/include/bits/types.h:151:27
  compilerofft_520094121 = clong ## Generated based on /usr/include/bits/types.h:152:25
  compileroff64t_520094123 = clong ## Generated based on /usr/include/bits/types.h:153:27
  compilerpidt_520094125 = cint ## Generated based on /usr/include/bits/types.h:154:25
  structfsidt_520094127 {.pure, inheritable, bycopy.} = object
    compilerval*: array[2'i64, cint] ## Generated based on /usr/include/bits/types.h:155:12
  compilerfsidt_520094129 = structfsidt_520094128 ## Generated based on /usr/include/bits/types.h:155:26
  compilerclockt_520094131 = clong ## Generated based on /usr/include/bits/types.h:156:27
  compilerrlimt_520094133 = culong ## Generated based on /usr/include/bits/types.h:157:26
  compilerrlim64t_520094135 = culong ## Generated based on /usr/include/bits/types.h:158:28
  compileridt_520094137 = cuint ## Generated based on /usr/include/bits/types.h:159:24
  compilertimet_520094139 = clong ## Generated based on /usr/include/bits/types.h:160:26
  compilerusecondst_520094141 = cuint ## Generated based on /usr/include/bits/types.h:161:30
  compilersusecondst_520094143 = clong ## Generated based on /usr/include/bits/types.h:162:31
  compilersuseconds64t_520094145 = clong ## Generated based on /usr/include/bits/types.h:163:33
  compilerdaddrt_520094147 = cint ## Generated based on /usr/include/bits/types.h:165:27
  compilerkeyt_520094149 = cint ## Generated based on /usr/include/bits/types.h:166:25
  compilerclockidt_520094151 = cint ## Generated based on /usr/include/bits/types.h:169:29
  compilertimert_520094153 = pointer ## Generated based on /usr/include/bits/types.h:172:27
  compilerblksizet_520094155 = clong ## Generated based on /usr/include/bits/types.h:175:29
  compilerblkcntt_520094157 = clong ## Generated based on /usr/include/bits/types.h:180:28
  compilerblkcnt64t_520094159 = clong ## Generated based on /usr/include/bits/types.h:181:30
  compilerfsblkcntt_520094161 = culong ## Generated based on /usr/include/bits/types.h:184:30
  compilerfsblkcnt64t_520094163 = culong ## Generated based on /usr/include/bits/types.h:185:32
  compilerfsfilcntt_520094165 = culong ## Generated based on /usr/include/bits/types.h:188:30
  compilerfsfilcnt64t_520094167 = culong ## Generated based on /usr/include/bits/types.h:189:32
  compilerfswordt_520094169 = clong ## Generated based on /usr/include/bits/types.h:192:28
  compilerssizet_520094171 = clong ## Generated based on /usr/include/bits/types.h:194:27
  compilersyscallslongt_520094173 = clong ## Generated based on /usr/include/bits/types.h:197:33
  compilersyscallulongt_520094175 = culong ## Generated based on /usr/include/bits/types.h:199:33
  compilerlofft_520094177 = compileroff64t_520094124 ## Generated based on /usr/include/bits/types.h:203:19
  compilercaddrt_520094179 = cstring ## Generated based on /usr/include/bits/types.h:204:15
  compilerintptrt_520094181 = clong ## Generated based on /usr/include/bits/types.h:207:25
  compilersocklent_520094183 = cuint ## Generated based on /usr/include/bits/types.h:210:23
  compilersigatomict_520094185 = cint ## Generated based on /usr/include/bits/types.h:215:13
  int8t_520094187 = compilerint8t_520094061 ## Generated based on /usr/include/bits/stdint-intn.h:24:18
  int16t_520094189 = compilerint16t_520094065 ## Generated based on /usr/include/bits/stdint-intn.h:25:19
  int32t_520094191 = compilerint32t_520094069 ## Generated based on /usr/include/bits/stdint-intn.h:26:19
  int64t_520094193 = compilerint64t_520094073 ## Generated based on /usr/include/bits/stdint-intn.h:27:19
  uint8t_520094195 = compileruint8t_520094063 ## Generated based on /usr/include/bits/stdint-uintn.h:24:19
  uint16t_520094197 = compileruint16t_520094067 ## Generated based on /usr/include/bits/stdint-uintn.h:25:20
  uint32t_520094199 = compileruint32t_520094071 ## Generated based on /usr/include/bits/stdint-uintn.h:26:20
  uint64t_520094201 = compileruint64t_520094075 ## Generated based on /usr/include/bits/stdint-uintn.h:27:20
  intleast8t_520094203 = compilerintleast8t_520094077 ## Generated based on /usr/include/bits/stdint-least.h:25:24
  intleast16t_520094205 = compilerintleast16t_520094081 ## Generated based on /usr/include/bits/stdint-least.h:26:25
  intleast32t_520094207 = compilerintleast32t_520094085 ## Generated based on /usr/include/bits/stdint-least.h:27:25
  intleast64t_520094209 = compilerintleast64t_520094096 ## Generated based on /usr/include/bits/stdint-least.h:28:25
  uintleast8t_520094211 = compileruintleast8t_520094079 ## Generated based on /usr/include/bits/stdint-least.h:31:25
  uintleast16t_520094213 = compileruintleast16t_520094083 ## Generated based on /usr/include/bits/stdint-least.h:32:26
  uintleast32t_520094215 = compileruintleast32t_520094094 ## Generated based on /usr/include/bits/stdint-least.h:33:26
  uintleast64t_520094217 = compileruintleast64t_520094098 ## Generated based on /usr/include/bits/stdint-least.h:34:26
  intfast8t_520094219 = cschar ## Generated based on /usr/include/stdint.h:47:22
  intfast16t_520094221 = clong ## Generated based on /usr/include/stdint.h:49:19
  intfast32t_520094223 = clong ## Generated based on /usr/include/stdint.h:50:19
  intfast64t_520094225 = clong ## Generated based on /usr/include/stdint.h:51:19
  uintfast8t_520094227 = uint8 ## Generated based on /usr/include/stdint.h:60:24
  uintfast16t_520094229 = culong ## Generated based on /usr/include/stdint.h:62:27
  uintfast32t_520094231 = culong ## Generated based on /usr/include/stdint.h:63:27
  uintfast64t_520094233 = culong ## Generated based on /usr/include/stdint.h:64:27
  intptrt_520094235 = clong  ## Generated based on /usr/include/stdint.h:76:19
  uintptrt_520094237 = culong ## Generated based on /usr/include/stdint.h:79:27
  intmaxt_520094239 = compilerintmaxt_520094104 ## Generated based on /usr/include/stdint.h:90:21
  uintmaxt_520094241 = compileruintmaxt_520094106 ## Generated based on /usr/include/stdint.h:91:22
  structcryptoaeadaes256gcmstate_520094243 {.pure, inheritable, bycopy.} = object
    opaque* {.align(16'i64).}: array[512'i64, uint8] ## Generated based on /usr/include/sodium/crypto_aead_aes256gcm.h:59:33
  cryptoaeadaes256gcmstate_520094245 = structcryptoaeadaes256gcmstate_520094244 ## Generated based on /usr/include/sodium/crypto_aead_aes256gcm.h:61:3
  internalfloat32_520094247 = cfloat ## Generated based on /usr/include/bits/floatn-common.h:214:15
  internalfloat64_520094249 = cdouble ## Generated based on /usr/include/bits/floatn-common.h:251:16
  internalfloat32x_520094251 = cdouble ## Generated based on /usr/include/bits/floatn-common.h:268:16
  internalfloat64x_520094253 = clongdouble ## Generated based on /usr/include/bits/floatn-common.h:285:21
  structdivt_520094255 {.pure, inheritable, bycopy.} = object
    quot*: cint              ## Generated based on /usr/include/stdlib.h:59:9
    rem*: cint
  divt_520094257 = structdivt_520094256 ## Generated based on /usr/include/stdlib.h:63:5
  structldivt_520094259 {.pure, inheritable, bycopy.} = object
    quot*: clong             ## Generated based on /usr/include/stdlib.h:67:9
    rem*: clong
  ldivt_520094261 = structldivt_520094260 ## Generated based on /usr/include/stdlib.h:71:5
  structlldivt_520094263 {.pure, inheritable, bycopy.} = object
    quot*: clonglong         ## Generated based on /usr/include/stdlib.h:77:23
    rem*: clonglong
  lldivt_520094265 = structlldivt_520094264 ## Generated based on /usr/include/stdlib.h:81:5
  uchar_520094267 = compileruchar_520094053 ## Generated based on /usr/include/sys/types.h:33:18
  ushort_520094269 = compilerushort_520094055 ## Generated based on /usr/include/sys/types.h:34:19
  uint_520094271 = compileruint_520094057 ## Generated based on /usr/include/sys/types.h:35:17
  ulong_520094273 = compilerulong_520094059 ## Generated based on /usr/include/sys/types.h:36:18
  quadt_520094275 = compilerquadt_520094100 ## Generated based on /usr/include/sys/types.h:37:18
  uquadt_520094277 = compileruquadt_520094102 ## Generated based on /usr/include/sys/types.h:38:20
  fsidt_520094279 = compilerfsidt_520094130 ## Generated based on /usr/include/sys/types.h:39:18
  lofft_520094281 = compilerlofft_520094178 ## Generated based on /usr/include/sys/types.h:42:18
  inot_520094283 = compilerinot_520094114 ## Generated based on /usr/include/sys/types.h:47:17
  devt_520094285 = compilerdevt_520094108 ## Generated based on /usr/include/sys/types.h:59:17
  gidt_520094287 = compilergidt_520094112 ## Generated based on /usr/include/sys/types.h:64:17
  modet_520094289 = compilermodet_520094118 ## Generated based on /usr/include/sys/types.h:69:18
  nlinkt_520094291 = compilernlinkt_520094120 ## Generated based on /usr/include/sys/types.h:74:19
  uidt_520094293 = compileruidt_520094110 ## Generated based on /usr/include/sys/types.h:79:17
  offt_520094295 = compilerofft_520094122 ## Generated based on /usr/include/sys/types.h:85:17
  pidt_520094297 = compilerpidt_520094126 ## Generated based on /usr/include/sys/types.h:97:17
  idt_520094299 = compileridt_520094138 ## Generated based on /usr/include/sys/types.h:103:16
  ssizet_520094301 = compilerssizet_520094172 ## Generated based on /usr/include/sys/types.h:108:19
  daddrt_520094303 = compilerdaddrt_520094148 ## Generated based on /usr/include/sys/types.h:114:19
  caddrt_520094305 = compilercaddrt_520094180 ## Generated based on /usr/include/sys/types.h:115:19
  keyt_520094307 = compilerkeyt_520094150 ## Generated based on /usr/include/sys/types.h:121:17
  clockt_520094309 = compilerclockt_520094132 ## Generated based on /usr/include/bits/types/clock_t.h:7:19
  clockidt_520094311 = compilerclockidt_520094152 ## Generated based on /usr/include/bits/types/clockid_t.h:7:21
  timet_520094313 = compilertimet_520094140 ## Generated based on /usr/include/bits/types/time_t.h:10:18
  timert_520094315 = compilertimert_520094154 ## Generated based on /usr/include/bits/types/timer_t.h:7:19
  ulongtypedef_520094317 = culong ## Generated based on /usr/include/sys/types.h:148:27
  ushorttypedef_520094319 = cushort ## Generated based on /usr/include/sys/types.h:149:28
  uinttypedef_520094321 = cuint ## Generated based on /usr/include/sys/types.h:150:22
  uint8ttypedef_520094323 = compileruint8t_520094063 ## Generated based on /usr/include/sys/types.h:158:19
  uint16ttypedef_520094325 = compileruint16t_520094067 ## Generated based on /usr/include/sys/types.h:159:20
  uint32ttypedef_520094327 = compileruint32t_520094071 ## Generated based on /usr/include/sys/types.h:160:20
  uint64ttypedef_520094329 = compileruint64t_520094075 ## Generated based on /usr/include/sys/types.h:161:20
  registert_520094331 = clong ## Generated based on /usr/include/sys/types.h:164:13
  structsigsett_520094333 {.pure, inheritable, bycopy.} = object
    compilerval*: array[16'i64, culong] ## Generated based on /usr/include/bits/types/__sigset_t.h:5:9
  compilersigsett_520094335 = structsigsett_520094334 ## Generated based on /usr/include/bits/types/__sigset_t.h:8:3
  sigsett_520094337 = compilersigsett_520094336 ## Generated based on /usr/include/bits/types/sigset_t.h:7:20
  structtimeval_520094339 {.pure, inheritable, bycopy.} = object
    tvsec*: compilertimet_520094140 ## Generated based on /usr/include/bits/types/struct_timeval.h:8:8
    tvusec*: compilersusecondst_520094144
  structtimespec_520094341 {.pure, inheritable, bycopy.} = object
    tvsec*: compilertimet_520094140 ## Generated based on /usr/include/bits/types/struct_timespec.h:11:8
    tvnsec*: compilersyscallslongt_520094174
  susecondst_520094343 = compilersusecondst_520094144 ## Generated based on /usr/include/sys/select.h:43:23
  compilerfdmask_520094345 = clong ## Generated based on /usr/include/sys/select.h:49:18
  structfdset_520094347 {.pure, inheritable, bycopy.} = object
    compilerfdsbits*: array[16'i64, compilerfdmask_520094346] ## Generated based on /usr/include/sys/select.h:59:9
  fdset_520094349 = structfdset_520094348 ## Generated based on /usr/include/sys/select.h:70:5
  fdmask_520094351 = compilerfdmask_520094346 ## Generated based on /usr/include/sys/select.h:77:19
  blksizet_520094353 = compilerblksizet_520094156 ## Generated based on /usr/include/sys/types.h:185:21
  blkcntt_520094355 = compilerblkcntt_520094158 ## Generated based on /usr/include/sys/types.h:192:20
  fsblkcntt_520094357 = compilerfsblkcntt_520094162 ## Generated based on /usr/include/sys/types.h:196:22
  fsfilcntt_520094359 = compilerfsfilcntt_520094166 ## Generated based on /usr/include/sys/types.h:200:22
  unionatomicwidecounter_compilervalue32_t {.pure, inheritable, bycopy.} = object
    compilerlow*: cuint
    compilerhigh*: cuint
  unionatomicwidecounter_520094361 {.union, bycopy.} = object
    compilervalue64*: culonglong ## Generated based on /usr/include/bits/atomic_wide_counter.h:25:9
    compilervalue32*: unionatomicwidecounter_compilervalue32_t
  compileratomicwidecounter_520094363 = unionatomicwidecounter_520094362 ## Generated based on /usr/include/bits/atomic_wide_counter.h:33:3
  structpthreadinternallist_520094365 {.pure, inheritable, bycopy.} = object
    compilerprev*: ptr structpthreadinternallist_520094366 ## Generated based on /usr/include/bits/thread-shared-types.h:51:16
    compilernext*: ptr structpthreadinternallist_520094366
  compilerpthreadlistt_520094367 = structpthreadinternallist_520094366 ## Generated based on /usr/include/bits/thread-shared-types.h:55:3
  structpthreadinternalslist_520094369 {.pure, inheritable, bycopy.} = object
    compilernext*: ptr structpthreadinternalslist_520094370 ## Generated based on /usr/include/bits/thread-shared-types.h:57:16
  compilerpthreadslistt_520094371 = structpthreadinternalslist_520094370 ## Generated based on /usr/include/bits/thread-shared-types.h:60:3
  structpthreadmutexs_520094373 {.pure, inheritable, bycopy.} = object
    compilerlock*: cint      ## Generated based on /usr/include/bits/struct_mutex.h:22:8
    compilercount*: cuint
    compilerowner*: cint
    compilernusers*: cuint
    compilerkind*: cint
    compilerspins*: cshort
    compilerelision*: cshort
    compilerlist*: compilerpthreadlistt_520094368
  structpthreadrwlockarcht_520094375 {.pure, inheritable, bycopy.} = object
    compilerreaders*: cuint  ## Generated based on /usr/include/bits/struct_rwlock.h:23:8
    compilerwriters*: cuint
    compilerwrphasefutex*: cuint
    compilerwritersfutex*: cuint
    compilerpad3*: cuint
    compilerpad4*: cuint
    compilercurwriter*: cint
    compilershared*: cint
    compilerrwelision*: cschar
    compilerpad1*: array[7'i64, uint8]
    compilerpad2*: culong
    compilerflags*: cuint
  structpthreadconds_520094377 {.pure, inheritable, bycopy.} = object
    compilerwseq*: compileratomicwidecounter_520094364 ## Generated based on /usr/include/bits/thread-shared-types.h:94:8
    compilerg1start*: compileratomicwidecounter_520094364
    compilergrefs*: array[2'i64, cuint]
    compilergsize*: array[2'i64, cuint]
    compilerg1origsize*: cuint
    compilerwrefs*: cuint
    compilergsignals*: array[2'i64, cuint]
  compilertsst_520094379 = cuint ## Generated based on /usr/include/bits/thread-shared-types.h:105:22
  compilerthrdt_520094381 = culong ## Generated based on /usr/include/bits/thread-shared-types.h:106:27
  structonceflag_520094383 {.pure, inheritable, bycopy.} = object
    compilerdata*: cint      ## Generated based on /usr/include/bits/thread-shared-types.h:108:9
  compileronceflag_520094385 = structonceflag_520094384 ## Generated based on /usr/include/bits/thread-shared-types.h:111:3
  pthreadt_520094387 = culong ## Generated based on /usr/include/bits/pthreadtypes.h:27:27
  unionpthreadmutexattrt_520094389 {.union, bycopy.} = object
    compilersize*: array[4'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:32:9
    compileralign*: cint
  pthreadmutexattrt_520094391 = unionpthreadmutexattrt_520094390 ## Generated based on /usr/include/bits/pthreadtypes.h:36:3
  unionpthreadcondattrt_520094393 {.union, bycopy.} = object
    compilersize*: array[4'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:41:9
    compileralign*: cint
  pthreadcondattrt_520094395 = unionpthreadcondattrt_520094394 ## Generated based on /usr/include/bits/pthreadtypes.h:45:3
  pthreadkeyt_520094397 = cuint ## Generated based on /usr/include/bits/pthreadtypes.h:49:22
  pthreadoncet_520094399 = cint ## Generated based on /usr/include/bits/pthreadtypes.h:53:30
  unionpthreadattrt_520094401 {.union, bycopy.} = object
    compilersize*: array[56'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:56:7
    compileralign*: clong
  pthreadattrt_520094403 = unionpthreadattrt_520094402 ## Generated based on /usr/include/bits/pthreadtypes.h:62:30
  unionpthreadmutext_520094405 {.union, bycopy.} = object
    compilerdata*: structpthreadmutexs_520094374 ## Generated based on /usr/include/bits/pthreadtypes.h:67:9
    compilersize*: array[40'i64, cschar]
    compileralign*: clong
  pthreadmutext_520094407 = unionpthreadmutext_520094406 ## Generated based on /usr/include/bits/pthreadtypes.h:72:3
  unionpthreadcondt_520094409 {.union, bycopy.} = object
    compilerdata*: structpthreadconds_520094378 ## Generated based on /usr/include/bits/pthreadtypes.h:75:9
    compilersize*: array[48'i64, cschar]
    compileralign*: clonglong
  pthreadcondt_520094411 = unionpthreadcondt_520094410 ## Generated based on /usr/include/bits/pthreadtypes.h:80:3
  unionpthreadrwlockt_520094413 {.union, bycopy.} = object
    compilerdata*: structpthreadrwlockarcht_520094376 ## Generated based on /usr/include/bits/pthreadtypes.h:86:9
    compilersize*: array[56'i64, cschar]
    compileralign*: clong
  pthreadrwlockt_520094415 = unionpthreadrwlockt_520094414 ## Generated based on /usr/include/bits/pthreadtypes.h:91:3
  unionpthreadrwlockattrt_520094417 {.union, bycopy.} = object
    compilersize*: array[8'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:93:9
    compileralign*: clong
  pthreadrwlockattrt_520094419 = unionpthreadrwlockattrt_520094418 ## Generated based on /usr/include/bits/pthreadtypes.h:97:3
  pthreadspinlockt_520094421 = cint ## Generated based on /usr/include/bits/pthreadtypes.h:103:22
  unionpthreadbarriert_520094423 {.union, bycopy.} = object
    compilersize*: array[32'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:108:9
    compileralign*: clong
  pthreadbarriert_520094425 = unionpthreadbarriert_520094424 ## Generated based on /usr/include/bits/pthreadtypes.h:112:3
  unionpthreadbarrierattrt_520094427 {.union, bycopy.} = object
    compilersize*: array[4'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:114:9
    compileralign*: cint
  pthreadbarrierattrt_520094429 = unionpthreadbarrierattrt_520094428 ## Generated based on /usr/include/bits/pthreadtypes.h:118:3
  structrandomdata_520094431 {.pure, inheritable, bycopy.} = object
    fptr*: ptr int32         ## Generated based on /usr/include/stdlib.h:543:8
    rptr*: ptr int32
    state*: ptr int32
    randtype*: cint
    randdeg*: cint
    randsep*: cint
    endptr*: ptr int32
  structdrand48data_520094433 {.pure, inheritable, bycopy.} = object
    compilerx*: array[3'i64, cushort] ## Generated based on /usr/include/stdlib.h:610:8
    compileroldx*: array[3'i64, cushort]
    compilerc*: cushort
    compilerinit*: cushort
    compilera*: culonglong
  compilercomparfnt_520094435 = proc (a0: pointer; a1: pointer): cint {.cdecl.} ## Generated based on /usr/include/stdlib.h:948:15
  wchart_520094437 = cint    ## Generated based on /usr/lib64/clang/18/include/__stddef_wchar_t.h:24:24
  structcryptohashsha512state_520094439 {.pure, inheritable, bycopy.} = object
    state*: array[8'i64, uint64] ## Generated based on /usr/include/sodium/crypto_hash_sha512.h:24:16
    count*: array[2'i64, uint64]
    buf*: array[128'i64, uint8]
  cryptohashsha512state_520094441 = structcryptohashsha512state_520094440 ## Generated based on /usr/include/sodium/crypto_hash_sha512.h:28:3
  structcryptoauthhmacsha512state_520094443 {.pure, inheritable, bycopy.} = object
    ictx*: cryptohashsha512state_520094442 ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512.h:38:16
    octx*: cryptohashsha512state_520094442
  cryptoauthhmacsha512state_520094445 = structcryptoauthhmacsha512state_520094444 ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512.h:41:3
  cryptoauthhmacsha512256state_520094447 = cryptoauthhmacsha512state_520094446 ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512256.h:38:38
  structcryptohashsha256state_520094449 {.pure, inheritable, bycopy.} = object
    state*: array[8'i64, uint32] ## Generated based on /usr/include/sodium/crypto_hash_sha256.h:24:16
    count*: uint64
    buf*: array[64'i64, uint8]
  cryptohashsha256state_520094451 = structcryptohashsha256state_520094450 ## Generated based on /usr/include/sodium/crypto_hash_sha256.h:28:3
  structcryptoauthhmacsha256state_520094453 {.pure, inheritable, bycopy.} = object
    ictx*: cryptohashsha256state_520094452 ## Generated based on /usr/include/sodium/crypto_auth_hmacsha256.h:38:16
    octx*: cryptohashsha256state_520094452
  cryptoauthhmacsha256state_520094455 = structcryptoauthhmacsha256state_520094454 ## Generated based on /usr/include/sodium/crypto_auth_hmacsha256.h:41:3
  structcryptogenerichashblake2bstate_520094457 {.pure, inheritable, bycopy.} = object
    opaque* {.align(64'i64).}: array[384'i64, uint8] ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:23:33
  cryptogenerichashblake2bstate_520094459 = structcryptogenerichashblake2bstate_520094458 ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:25:3
  cryptogenerichashstate_520094461 = cryptogenerichashblake2bstate_520094460 ## Generated based on /usr/include/sodium/crypto_generichash.h:48:42
  structmbstatet_compilervalue_t {.union, bycopy.} = object
    compilerwch*: cuint
    compilerwchb*: array[4'i64, cschar]
  structmbstatet_520094463 {.pure, inheritable, bycopy.} = object
    compilercount*: cint     ## Generated based on /usr/include/bits/types/__mbstate_t.h:13:9
    compilervalue*: structmbstatet_compilervalue_t
  compilermbstatet_520094465 = structmbstatet_520094464 ## Generated based on /usr/include/bits/types/__mbstate_t.h:21:3
  structgfpost_520094467 {.pure, inheritable, bycopy.} = object
    compilerpos*: compilerofft_520094122 ## Generated based on /usr/include/bits/types/__fpos_t.h:10:16
    compilerstate*: compilermbstatet_520094466
  compilerfpost_520094469 = structgfpost_520094468 ## Generated based on /usr/include/bits/types/__fpos_t.h:14:3
  structgfpos64t_520094471 {.pure, inheritable, bycopy.} = object
    compilerpos*: compileroff64t_520094124 ## Generated based on /usr/include/bits/types/__fpos64_t.h:10:16
    compilerstate*: compilermbstatet_520094466
  compilerfpos64t_520094473 = structgfpos64t_520094472 ## Generated based on /usr/include/bits/types/__fpos64_t.h:14:3
  compilerfile_520094475 = structiofile_520094478 ## Generated based on /usr/include/bits/types/__FILE.h:5:25
  structiofile_520094477 {.pure, inheritable, bycopy.} = object
    internalflags*: cint     ## Generated based on /usr/include/bits/types/struct_FILE.h:49:8
    internalioreadptr*: cstring
    internalioreadend*: cstring
    internalioreadbase*: cstring
    internaliowritebase*: cstring
    internaliowriteptr*: cstring
    internaliowriteend*: cstring
    internaliobufbase*: cstring
    internaliobufend*: cstring
    internaliosavebase*: cstring
    internaliobackupbase*: cstring
    internaliosaveend*: cstring
    internalmarkers*: ptr structiomarker
    internalchain*: ptr structiofile_520094478
    internalfileno*: cint
    internalflags2*: cint
    internaloldoffset*: compilerofft_520094122
    internalcurcolumn*: cushort
    internalvtableoffset*: cschar
    internalshortbuf*: array[1'i64, cschar]
    internallock*: pointer
    internaloffset*: compileroff64t_520094124
    internalcodecvt*: ptr structiocodecvt
    internalwidedata*: ptr structiowidedata
    internalfreereslist*: ptr structiofile_520094478
    internalfreeresbuf*: pointer
    compilerpad5*: csize_t
    internalmode*: cint
    internalunused2*: array[20'i64, cschar]
  File_520094479 = structiofile_520094478 ## Generated based on /usr/include/bits/types/FILE.h:7:25
  cookiereadfunctiont_520094483 = proc (a0: pointer; a1: cstring; a2: csize_t): compilerssizet_520094172 {.
      cdecl.}                ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:27:19
  cookiewritefunctiont_520094485 = proc (a0: pointer; a1: cstring; a2: csize_t): compilerssizet_520094172 {.
      cdecl.}                ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:36:19
  cookieseekfunctiont_520094487 = proc (a0: pointer; a1: ptr compileroff64t_520094124;
                                        a2: cint): cint {.cdecl.} ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:45:13
  cookieclosefunctiont_520094489 = proc (a0: pointer): cint {.cdecl.} ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:48:13
  structiocookieiofunctionst_520094491 {.pure, inheritable, bycopy.} = object
    read*: cookiereadfunctiont_520094484 ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:55:16
    write*: cookiewritefunctiont_520094486
    seek*: cookieseekfunctiont_520094488
    close*: cookieclosefunctiont_520094490
  cookieiofunctionst_520094493 = structiocookieiofunctionst_520094492 ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:61:3
  valist_520094495 = compilergnucvalist_520094498 ## Generated based on /usr/include/stdio.h:53:24
  compilergnucvalist_520094497 = compilerbuiltinvalist ## Generated based on /usr/lib64/clang/18/include/__stdarg___gnuc_va_list.h:12:27
  fpost_520094499 = compilerfpost_520094470 ## Generated based on /usr/include/stdio.h:85:18
  structcryptoonetimeauthpoly1305state_520094501 {.pure, inheritable, bycopy.} = object
    opaque* {.align(16'i64).}: array[256'i64, uint8] ## Generated based on /usr/include/sodium/crypto_onetimeauth_poly1305.h:19:33
  cryptoonetimeauthpoly1305state_520094503 = structcryptoonetimeauthpoly1305state_520094502 ## Generated based on /usr/include/sodium/crypto_onetimeauth_poly1305.h:21:3
  cryptoonetimeauthstate_520094505 = cryptoonetimeauthpoly1305state_520094504 ## Generated based on /usr/include/sodium/crypto_onetimeauth.h:16:43
  structcryptosecretstreamxchacha20poly1305state_520094507 {.pure, inheritable,
      bycopy.} = object
    k*: array[32'i64, uint8] ## Generated based on /usr/include/sodium/crypto_secretstream_xchacha20poly1305.h:56:16
    nonce*: array[12'i64, uint8]
    internalpad*: array[8'i64, uint8]
  cryptosecretstreamxchacha20poly1305state_520094509 = structcryptosecretstreamxchacha20poly1305state_520094508 ## Generated based on /usr/include/sodium/crypto_secretstream_xchacha20poly1305.h:60:3
  structcryptosigned25519phstate_520094511 {.pure, inheritable, bycopy.} = object
    hs*: cryptohashsha512state_520094442 ## Generated based on /usr/include/sodium/crypto_sign_ed25519.h:15:16
  cryptosigned25519phstate_520094513 = structcryptosigned25519phstate_520094512 ## Generated based on /usr/include/sodium/crypto_sign_ed25519.h:17:3
  cryptosignstate_520094515 = cryptosigned25519phstate_520094514 ## Generated based on /usr/include/sodium/crypto_sign.h:23:37
  structrandombytesimplementation_520094517 {.pure, inheritable, bycopy.} = object
    implementationname*: proc (): cstring {.cdecl.} ## Generated based on /usr/include/sodium/randombytes.h:19:16
    random*: proc (): uint32 {.cdecl.}
    stir*: proc (): void {.cdecl.}
    uniform*: proc (a0: uint32): uint32 {.cdecl.}
    buf*: proc (a0: pointer; a1: csize_t): void {.cdecl.}
    close*: proc (): cint {.cdecl.}
  randombytesimplementation_520094519 = structrandombytesimplementation_520094518 ## Generated based on /usr/include/sodium/randombytes.h:26:3
  fdmask_520094352 = (when declared(fdmask):
    fdmask
   else:
    fdmask_520094351)
  modet_520094290 = (when declared(modet):
    modet
   else:
    modet_520094289)
  compilerfpost_520094470 = (when declared(compilerfpost):
    compilerfpost
   else:
    compilerfpost_520094469)
  structiofile_520094478 = (when declared(structiofile):
    structiofile
   else:
    structiofile_520094477)
  compilerfdmask_520094346 = (when declared(compilerfdmask):
    compilerfdmask
   else:
    compilerfdmask_520094345)
  uchar_520094268 = (when declared(uchar):
    uchar
   else:
    uchar_520094267)
  fsidt_520094280 = (when declared(fsidt):
    fsidt
   else:
    fsidt_520094279)
  fdset_520094350 = (when declared(fdset):
    fdset
   else:
    fdset_520094349)
  cryptoonetimeauthpoly1305state_520094504 = (when declared(
      cryptoonetimeauthpoly1305state):
    cryptoonetimeauthpoly1305state
   else:
    cryptoonetimeauthpoly1305state_520094503)
  cryptogenerichashblake2bstate_520094460 = (when declared(
      cryptogenerichashblake2bstate):
    cryptogenerichashblake2bstate
   else:
    cryptogenerichashblake2bstate_520094459)
  compileronceflag_520094386 = (when declared(compileronceflag):
    compileronceflag
   else:
    compileronceflag_520094385)
  compilerclockt_520094132 = (when declared(compilerclockt):
    compilerclockt
   else:
    compilerclockt_520094131)
  nlinkt_520094292 = (when declared(nlinkt):
    nlinkt
   else:
    nlinkt_520094291)
  structcryptoauthhmacsha512state_520094444 = (when declared(
      structcryptoauthhmacsha512state):
    structcryptoauthhmacsha512state
   else:
    structcryptoauthhmacsha512state_520094443)
  ushort_520094270 = (when declared(ushort):
    ushort
   else:
    ushort_520094269)
  cookieseekfunctiont_520094488 = (when declared(cookieseekfunctiont):
    cookieseekfunctiont
   else:
    cookieseekfunctiont_520094487)
  daddrt_520094304 = (when declared(daddrt):
    daddrt
   else:
    daddrt_520094303)
  structcryptosigned25519phstate_520094512 = (when declared(
      structcryptosigned25519phstate):
    structcryptosigned25519phstate
   else:
    structcryptosigned25519phstate_520094511)
  compilerintptrt_520094182 = (when declared(compilerintptrt):
    compilerintptrt
   else:
    compilerintptrt_520094181)
  int32t_520094192 = (when declared(int32t):
    int32t
   else:
    int32t_520094191)
  uintfast8t_520094228 = (when declared(uintfast8t):
    uintfast8t
   else:
    uintfast8t_520094227)
  compilerint64t_520094073 = (when declared(compilerint64t):
    compilerint64t
   else:
    compilerint64t_520094072)
  compileruintleast16t_520094083 = (when declared(compileruintleast16t):
    compileruintleast16t
   else:
    compileruintleast16t_520094082)
  compilerpidt_520094126 = (when declared(compilerpidt):
    compilerpidt
   else:
    compilerpidt_520094125)
  unionpthreadrwlockattrt_520094418 = (when declared(unionpthreadrwlockattrt):
    unionpthreadrwlockattrt
   else:
    unionpthreadrwlockattrt_520094417)
  compilercaddrt_520094180 = (when declared(compilercaddrt):
    compilercaddrt
   else:
    compilercaddrt_520094179)
  compileruintleast64t_520094098 = (when declared(compileruintleast64t):
    compileruintleast64t
   else:
    compileruintleast64t_520094097)
  compilergnucvalist_520094498 = (when declared(compilergnucvalist):
    compilergnucvalist
   else:
    compilergnucvalist_520094497)
  lofft_520094282 = (when declared(lofft):
    lofft
   else:
    lofft_520094281)
  compileruint8t_520094063 = (when declared(compileruint8t):
    compileruint8t
   else:
    compileruint8t_520094062)
  randombytesimplementation_520094520 = (when declared(randombytesimplementation):
    randombytesimplementation
   else:
    randombytesimplementation_520094519)
  internalfloat64x_520094254 = (when declared(internalfloat64x):
    internalfloat64x
   else:
    internalfloat64x_520094253)
  pthreadkeyt_520094398 = (when declared(pthreadkeyt):
    pthreadkeyt
   else:
    pthreadkeyt_520094397)
  pthreadmutext_520094408 = (when declared(pthreadmutext):
    pthreadmutext
   else:
    pthreadmutext_520094407)
  structmbstatet_520094464 = (when declared(structmbstatet):
    structmbstatet
   else:
    structmbstatet_520094463)
  compilerrlim64t_520094136 = (when declared(compilerrlim64t):
    compilerrlim64t
   else:
    compilerrlim64t_520094135)
  pthreadt_520094388 = (when declared(pthreadt):
    pthreadt
   else:
    pthreadt_520094387)
  cryptogenerichashstate_520094462 = (when declared(cryptogenerichashstate):
    cryptogenerichashstate
   else:
    cryptogenerichashstate_520094461)
  quadt_520094276 = (when declared(quadt):
    quadt
   else:
    quadt_520094275)
  devt_520094286 = (when declared(devt):
    devt
   else:
    devt_520094285)
  cryptohashsha256state_520094452 = (when declared(cryptohashsha256state):
    cryptohashsha256state
   else:
    cryptohashsha256state_520094451)
  structfdset_520094348 = (when declared(structfdset):
    structfdset
   else:
    structfdset_520094347)
  keyt_520094308 = (when declared(keyt):
    keyt
   else:
    keyt_520094307)
  unionatomicwidecounter_520094362 = (when declared(unionatomicwidecounter):
    unionatomicwidecounter
   else:
    unionatomicwidecounter_520094361)
  inot_520094284 = (when declared(inot):
    inot
   else:
    inot_520094283)
  compilerquadt_520094100 = (when declared(compilerquadt):
    compilerquadt
   else:
    compilerquadt_520094099)
  pthreadcondattrt_520094396 = (when declared(pthreadcondattrt):
    pthreadcondattrt
   else:
    pthreadcondattrt_520094395)
  structtimespec_520094342 = (when declared(structtimespec):
    structtimespec
   else:
    structtimespec_520094341)
  compilerfsfilcnt64t_520094168 = (when declared(compilerfsfilcnt64t):
    compilerfsfilcnt64t
   else:
    compilerfsfilcnt64t_520094167)
  compilermbstatet_520094466 = (when declared(compilermbstatet):
    compilermbstatet
   else:
    compilermbstatet_520094465)
  structdivt_520094256 = (when declared(structdivt):
    structdivt
   else:
    structdivt_520094255)
  compilerint32t_520094069 = (when declared(compilerint32t):
    compilerint32t
   else:
    compilerint32t_520094068)
  structrandombytesimplementation_520094518 = (when declared(
      structrandombytesimplementation):
    structrandombytesimplementation
   else:
    structrandombytesimplementation_520094517)
  uint64t_520094202 = (when declared(uint64t):
    uint64t
   else:
    uint64t_520094201)
  unionpthreadcondt_520094410 = (when declared(unionpthreadcondt):
    unionpthreadcondt
   else:
    unionpthreadcondt_520094409)
  structrandomdata_520094432 = (when declared(structrandomdata):
    structrandomdata
   else:
    structrandomdata_520094431)
  uint8t_520094196 = (when declared(uint8t):
    uint8t
   else:
    uint8t_520094195)
  uidt_520094294 = (when declared(uidt):
    uidt
   else:
    uidt_520094293)
  structtimeval_520094340 = (when declared(structtimeval):
    structtimeval
   else:
    structtimeval_520094339)
  registert_520094332 = (when declared(registert):
    registert
   else:
    registert_520094331)
  compilerinot_520094114 = (when declared(compilerinot):
    compilerinot
   else:
    compilerinot_520094113)
  intptrt_520094236 = (when declared(intptrt):
    intptrt
   else:
    intptrt_520094235)
  compilersocklent_520094184 = (when declared(compilersocklent):
    compilersocklent
   else:
    compilersocklent_520094183)
  compilersyscallslongt_520094174 = (when declared(compilersyscallslongt):
    compilersyscallslongt
   else:
    compilersyscallslongt_520094173)
  intleast32t_520094208 = (when declared(intleast32t):
    intleast32t
   else:
    intleast32t_520094207)
  uintleast32t_520094216 = (when declared(uintleast32t):
    uintleast32t
   else:
    uintleast32t_520094215)
  idt_520094300 = (when declared(idt):
    idt
   else:
    idt_520094299)
  compilersigsett_520094336 = (when declared(compilersigsett):
    compilersigsett
   else:
    compilersigsett_520094335)
  compilerofft_520094122 = (when declared(compilerofft):
    compilerofft
   else:
    compilerofft_520094121)
  uintfast64t_520094234 = (when declared(uintfast64t):
    uintfast64t
   else:
    uintfast64t_520094233)
  susecondst_520094344 = (when declared(susecondst):
    susecondst
   else:
    susecondst_520094343)
  blkcntt_520094356 = (when declared(blkcntt):
    blkcntt
   else:
    blkcntt_520094355)
  structpthreadconds_520094378 = (when declared(structpthreadconds):
    structpthreadconds
   else:
    structpthreadconds_520094377)
  intfast8t_520094220 = (when declared(intfast8t):
    intfast8t
   else:
    intfast8t_520094219)
  unionpthreadbarrierattrt_520094428 = (when declared(unionpthreadbarrierattrt):
    unionpthreadbarrierattrt
   else:
    unionpthreadbarrierattrt_520094427)
  compileruint32t_520094071 = (when declared(compileruint32t):
    compileruint32t
   else:
    compileruint32t_520094070)
  int64t_520094194 = (when declared(int64t):
    int64t
   else:
    int64t_520094193)
  cryptoauthhmacsha512256state_520094448 = (when declared(
      cryptoauthhmacsha512256state):
    cryptoauthhmacsha512256state
   else:
    cryptoauthhmacsha512256state_520094447)
  unionpthreadmutext_520094406 = (when declared(unionpthreadmutext):
    unionpthreadmutext
   else:
    unionpthreadmutext_520094405)
  pthreadbarriert_520094426 = (when declared(pthreadbarriert):
    pthreadbarriert
   else:
    pthreadbarriert_520094425)
  gidt_520094288 = (when declared(gidt):
    gidt
   else:
    gidt_520094287)
  unionpthreadrwlockt_520094414 = (when declared(unionpthreadrwlockt):
    unionpthreadrwlockt
   else:
    unionpthreadrwlockt_520094413)
  pidt_520094298 = (when declared(pidt):
    pidt
   else:
    pidt_520094297)
  compileratomicwidecounter_520094364 = (when declared(compileratomicwidecounter):
    compileratomicwidecounter
   else:
    compileratomicwidecounter_520094363)
  compilerushort_520094055 = (when declared(compilerushort):
    compilerushort
   else:
    compilerushort_520094054)
  compileruint16t_520094067 = (when declared(compileruint16t):
    compileruint16t
   else:
    compileruint16t_520094066)
  uintleast64t_520094218 = (when declared(uintleast64t):
    uintleast64t
   else:
    uintleast64t_520094217)
  uintleast8t_520094212 = (when declared(uintleast8t):
    uintleast8t
   else:
    uintleast8t_520094211)
  lldivt_520094266 = (when declared(lldivt):
    lldivt
   else:
    lldivt_520094265)
  compilerintleast32t_520094085 = (when declared(compilerintleast32t):
    compilerintleast32t
   else:
    compilerintleast32t_520094084)
  compilersyscallulongt_520094176 = (when declared(compilersyscallulongt):
    compilersyscallulongt
   else:
    compilersyscallulongt_520094175)
  unionpthreadattrt_520094402 = (when declared(unionpthreadattrt):
    unionpthreadattrt
   else:
    unionpthreadattrt_520094401)
  pthreadrwlockattrt_520094420 = (when declared(pthreadrwlockattrt):
    pthreadrwlockattrt
   else:
    pthreadrwlockattrt_520094419)
  wchart_520094438 = (when declared(wchart):
    wchart
   else:
    wchart_520094437)
  pthreadrwlockt_520094416 = (when declared(pthreadrwlockt):
    pthreadrwlockt
   else:
    pthreadrwlockt_520094415)
  structcryptosecretstreamxchacha20poly1305state_520094508 = (when declared(
      structcryptosecretstreamxchacha20poly1305state):
    structcryptosecretstreamxchacha20poly1305state
   else:
    structcryptosecretstreamxchacha20poly1305state_520094507)
  uintfast32t_520094232 = (when declared(uintfast32t):
    uintfast32t
   else:
    uintfast32t_520094231)
  compileruintmaxt_520094106 = (when declared(compileruintmaxt):
    compileruintmaxt
   else:
    compileruintmaxt_520094105)
  compilerpthreadlistt_520094368 = (when declared(compilerpthreadlistt):
    compilerpthreadlistt
   else:
    compilerpthreadlistt_520094367)
  compilerfile_520094476 = (when declared(compilerfile):
    compilerfile
   else:
    compilerfile_520094475)
  uintmaxt_520094242 = (when declared(uintmaxt):
    uintmaxt
   else:
    uintmaxt_520094241)
  compilerintleast16t_520094081 = (when declared(compilerintleast16t):
    compilerintleast16t
   else:
    compilerintleast16t_520094080)
  compilerusecondst_520094142 = (when declared(compilerusecondst):
    compilerusecondst
   else:
    compilerusecondst_520094141)
  compilerintleast64t_520094096 = (when declared(compilerintleast64t):
    compilerintleast64t
   else:
    compilerintleast64t_520094095)
  uint64ttypedef_520094330 = (when declared(uint64ttypedef):
    uint64ttypedef
   else:
    uint64ttypedef_520094329)
  cryptoauthhmacsha512state_520094446 = (when declared(cryptoauthhmacsha512state):
    cryptoauthhmacsha512state
   else:
    cryptoauthhmacsha512state_520094445)
  pthreadspinlockt_520094422 = (when declared(pthreadspinlockt):
    pthreadspinlockt
   else:
    pthreadspinlockt_520094421)
  unionpthreadbarriert_520094424 = (when declared(unionpthreadbarriert):
    unionpthreadbarriert
   else:
    unionpthreadbarriert_520094423)
  uintfast16t_520094230 = (when declared(uintfast16t):
    uintfast16t
   else:
    uintfast16t_520094229)
  compilerblksizet_520094156 = (when declared(compilerblksizet):
    compilerblksizet
   else:
    compilerblksizet_520094155)
  structcryptohashsha256state_520094450 = (when declared(
      structcryptohashsha256state):
    structcryptohashsha256state
   else:
    structcryptohashsha256state_520094449)
  cryptoaeadaes256gcmstate_520094246 = (when declared(cryptoaeadaes256gcmstate):
    cryptoaeadaes256gcmstate
   else:
    cryptoaeadaes256gcmstate_520094245)
  compileruintleast32t_520094094 = (when declared(compileruintleast32t):
    compileruintleast32t
   else:
    compileruintleast32t_520094093)
  compilerintleast8t_520094077 = (when declared(compilerintleast8t):
    compilerintleast8t
   else:
    compilerintleast8t_520094076)
  uintptrt_520094238 = (when declared(uintptrt):
    uintptrt
   else:
    uintptrt_520094237)
  uint8ttypedef_520094324 = (when declared(uint8ttypedef):
    uint8ttypedef
   else:
    uint8ttypedef_520094323)
  compilerint8t_520094061 = (when declared(compilerint8t):
    compilerint8t
   else:
    compilerint8t_520094060)
  compilerintmaxt_520094104 = (when declared(compilerintmaxt):
    compilerintmaxt
   else:
    compilerintmaxt_520094103)
  compilerfsidt_520094130 = (when declared(compilerfsidt):
    compilerfsidt
   else:
    compilerfsidt_520094129)
  ulongtypedef_520094318 = (when declared(ulongtypedef):
    ulongtypedef
   else:
    ulongtypedef_520094317)
  compilersigatomict_520094186 = (when declared(compilersigatomict):
    compilersigatomict
   else:
    compilersigatomict_520094185)
  ldivt_520094262 = (when declared(ldivt):
    ldivt
   else:
    ldivt_520094261)
  structcryptogenerichashblake2bstate_520094458 = (when declared(
      structcryptogenerichashblake2bstate):
    structcryptogenerichashblake2bstate
   else:
    structcryptogenerichashblake2bstate_520094457)
  compilersusecondst_520094144 = (when declared(compilersusecondst):
    compilersusecondst
   else:
    compilersusecondst_520094143)
  compilerdaddrt_520094148 = (when declared(compilerdaddrt):
    compilerdaddrt
   else:
    compilerdaddrt_520094147)
  pthreadoncet_520094400 = (when declared(pthreadoncet):
    pthreadoncet
   else:
    pthreadoncet_520094399)
  compileruidt_520094110 = (when declared(compileruidt):
    compileruidt
   else:
    compileruidt_520094109)
  structgfpos64t_520094472 = (when declared(structgfpos64t):
    structgfpos64t
   else:
    structgfpos64t_520094471)
  intmaxt_520094240 = (when declared(intmaxt):
    intmaxt
   else:
    intmaxt_520094239)
  compilerino64t_520094116 = (when declared(compilerino64t):
    compilerino64t
   else:
    compilerino64t_520094115)
  uint_520094272 = (when declared(uint):
    uint
   else:
    uint_520094271)
  structcryptohashsha512state_520094440 = (when declared(
      structcryptohashsha512state):
    structcryptohashsha512state
   else:
    structcryptohashsha512state_520094439)
  compileroff64t_520094124 = (when declared(compileroff64t):
    compileroff64t
   else:
    compileroff64t_520094123)
  cryptosigned25519phstate_520094514 = (when declared(cryptosigned25519phstate):
    cryptosigned25519phstate
   else:
    cryptosigned25519phstate_520094513)
  compileruint64t_520094075 = (when declared(compileruint64t):
    compileruint64t
   else:
    compileruint64t_520094074)
  compilernlinkt_520094120 = (when declared(compilernlinkt):
    compilernlinkt
   else:
    compilernlinkt_520094119)
  cookiewritefunctiont_520094486 = (when declared(cookiewritefunctiont):
    cookiewritefunctiont
   else:
    cookiewritefunctiont_520094485)
  compilerclockidt_520094152 = (when declared(compilerclockidt):
    compilerclockidt
   else:
    compilerclockidt_520094151)
  compilergidt_520094112 = (when declared(compilergidt):
    compilergidt
   else:
    compilergidt_520094111)
  uint32ttypedef_520094328 = (when declared(uint32ttypedef):
    uint32ttypedef
   else:
    uint32ttypedef_520094327)
  intleast64t_520094210 = (when declared(intleast64t):
    intleast64t
   else:
    intleast64t_520094209)
  structcryptoauthhmacsha256state_520094454 = (when declared(
      structcryptoauthhmacsha256state):
    structcryptoauthhmacsha256state
   else:
    structcryptoauthhmacsha256state_520094453)
  compilertimert_520094154 = (when declared(compilertimert):
    compilertimert
   else:
    compilertimert_520094153)
  compilerfswordt_520094170 = (when declared(compilerfswordt):
    compilerfswordt
   else:
    compilerfswordt_520094169)
  timet_520094314 = (when declared(timet):
    timet
   else:
    timet_520094313)
  intleast16t_520094206 = (when declared(intleast16t):
    intleast16t
   else:
    intleast16t_520094205)
  structpthreadrwlockarcht_520094376 = (when declared(structpthreadrwlockarcht):
    structpthreadrwlockarcht
   else:
    structpthreadrwlockarcht_520094375)
  structdrand48data_520094434 = (when declared(structdrand48data):
    structdrand48data
   else:
    structdrand48data_520094433)
  valist_520094496 = (when declared(valist):
    valist
   else:
    valist_520094495)
  ushorttypedef_520094320 = (when declared(ushorttypedef):
    ushorttypedef
   else:
    ushorttypedef_520094319)
  compileruchar_520094053 = (when declared(compileruchar):
    compileruchar
   else:
    compileruchar_520094052)
  compileridt_520094138 = (when declared(compileridt):
    compileridt
   else:
    compileridt_520094137)
  divt_520094258 = (when declared(divt):
    divt
   else:
    divt_520094257)
  structlldivt_520094264 = (when declared(structlldivt):
    structlldivt
   else:
    structlldivt_520094263)
  pthreadbarrierattrt_520094430 = (when declared(pthreadbarrierattrt):
    pthreadbarrierattrt
   else:
    pthreadbarrierattrt_520094429)
  compilerssizet_520094172 = (when declared(compilerssizet):
    compilerssizet
   else:
    compilerssizet_520094171)
  blksizet_520094354 = (when declared(blksizet):
    blksizet
   else:
    blksizet_520094353)
  compilercomparfnt_520094436 = (when declared(compilercomparfnt):
    compilercomparfnt
   else:
    compilercomparfnt_520094435)
  intfast64t_520094226 = (when declared(intfast64t):
    intfast64t
   else:
    intfast64t_520094225)
  compilertsst_520094380 = (when declared(compilertsst):
    compilertsst
   else:
    compilertsst_520094379)
  compilerlofft_520094178 = (when declared(compilerlofft):
    compilerlofft
   else:
    compilerlofft_520094177)
  compilermodet_520094118 = (when declared(compilermodet):
    compilermodet
   else:
    compilermodet_520094117)
  compilertimet_520094140 = (when declared(compilertimet):
    compilertimet
   else:
    compilertimet_520094139)
  compilerkeyt_520094150 = (when declared(compilerkeyt):
    compilerkeyt
   else:
    compilerkeyt_520094149)
  offt_520094296 = (when declared(offt):
    offt
   else:
    offt_520094295)
  compileruint_520094057 = (when declared(compileruint):
    compileruint
   else:
    compileruint_520094056)
  uint32t_520094200 = (when declared(uint32t):
    uint32t
   else:
    uint32t_520094199)
  structpthreadinternalslist_520094370 = (when declared(
      structpthreadinternalslist):
    structpthreadinternalslist
   else:
    structpthreadinternalslist_520094369)
  compilerrlimt_520094134 = (when declared(compilerrlimt):
    compilerrlimt
   else:
    compilerrlimt_520094133)
  compilerdevt_520094108 = (when declared(compilerdevt):
    compilerdevt
   else:
    compilerdevt_520094107)
  ssizet_520094302 = (when declared(ssizet):
    ssizet
   else:
    ssizet_520094301)
  cryptosignstate_520094516 = (when declared(cryptosignstate):
    cryptosignstate
   else:
    cryptosignstate_520094515)
  internalfloat32x_520094252 = (when declared(internalfloat32x):
    internalfloat32x
   else:
    internalfloat32x_520094251)
  pthreadcondt_520094412 = (when declared(pthreadcondt):
    pthreadcondt
   else:
    pthreadcondt_520094411)
  uint16ttypedef_520094326 = (when declared(uint16ttypedef):
    uint16ttypedef
   else:
    uint16ttypedef_520094325)
  compilerblkcnt64t_520094160 = (when declared(compilerblkcnt64t):
    compilerblkcnt64t
   else:
    compilerblkcnt64t_520094159)
  structfsidt_520094128 = (when declared(structfsidt):
    structfsidt
   else:
    structfsidt_520094127)
  fsblkcntt_520094358 = (when declared(fsblkcntt):
    fsblkcntt
   else:
    fsblkcntt_520094357)
  structgfpost_520094468 = (when declared(structgfpost):
    structgfpost
   else:
    structgfpost_520094467)
  structiocookieiofunctionst_520094492 = (when declared(
      structiocookieiofunctionst):
    structiocookieiofunctionst
   else:
    structiocookieiofunctionst_520094491)
  cookiereadfunctiont_520094484 = (when declared(cookiereadfunctiont):
    cookiereadfunctiont
   else:
    cookiereadfunctiont_520094483)
  pthreadattrt_520094404 = (when declared(pthreadattrt):
    pthreadattrt
   else:
    pthreadattrt_520094403)
  cryptoonetimeauthstate_520094506 = (when declared(cryptoonetimeauthstate):
    cryptoonetimeauthstate
   else:
    cryptoonetimeauthstate_520094505)
  compilerfsfilcntt_520094166 = (when declared(compilerfsfilcntt):
    compilerfsfilcntt
   else:
    compilerfsfilcntt_520094165)
  pthreadmutexattrt_520094392 = (when declared(pthreadmutexattrt):
    pthreadmutexattrt
   else:
    pthreadmutexattrt_520094391)
  structpthreadinternallist_520094366 = (when declared(structpthreadinternallist):
    structpthreadinternallist
   else:
    structpthreadinternallist_520094365)
  compilerpthreadslistt_520094372 = (when declared(compilerpthreadslistt):
    compilerpthreadslistt
   else:
    compilerpthreadslistt_520094371)
  int8t_520094188 = (when declared(int8t):
    int8t
   else:
    int8t_520094187)
  structonceflag_520094384 = (when declared(structonceflag):
    structonceflag
   else:
    structonceflag_520094383)
  compileruquadt_520094102 = (when declared(compileruquadt):
    compileruquadt
   else:
    compileruquadt_520094101)
  uint16t_520094198 = (when declared(uint16t):
    uint16t
   else:
    uint16t_520094197)
  intleast8t_520094204 = (when declared(intleast8t):
    intleast8t
   else:
    intleast8t_520094203)
  compilerthrdt_520094382 = (when declared(compilerthrdt):
    compilerthrdt
   else:
    compilerthrdt_520094381)
  cookieiofunctionst_520094494 = (when declared(cookieiofunctionst):
    cookieiofunctionst
   else:
    cookieiofunctionst_520094493)
  structcryptoaeadaes256gcmstate_520094244 = (when declared(
      structcryptoaeadaes256gcmstate):
    structcryptoaeadaes256gcmstate
   else:
    structcryptoaeadaes256gcmstate_520094243)
  compilerfsblkcntt_520094162 = (when declared(compilerfsblkcntt):
    compilerfsblkcntt
   else:
    compilerfsblkcntt_520094161)
  uintleast16t_520094214 = (when declared(uintleast16t):
    uintleast16t
   else:
    uintleast16t_520094213)
  clockidt_520094312 = (when declared(clockidt):
    clockidt
   else:
    clockidt_520094311)
  caddrt_520094306 = (when declared(caddrt):
    caddrt
   else:
    caddrt_520094305)
  internalfloat32_520094248 = (when declared(internalfloat32):
    internalfloat32
   else:
    internalfloat32_520094247)
  compilersuseconds64t_520094146 = (when declared(compilersuseconds64t):
    compilersuseconds64t
   else:
    compilersuseconds64t_520094145)
  compilerfsblkcnt64t_520094164 = (when declared(compilerfsblkcnt64t):
    compilerfsblkcnt64t
   else:
    compilerfsblkcnt64t_520094163)
  clockt_520094310 = (when declared(clockt):
    clockt
   else:
    clockt_520094309)
  uinttypedef_520094322 = (when declared(uinttypedef):
    uinttypedef
   else:
    uinttypedef_520094321)
  fpost_520094500 = (when declared(fpost):
    fpost
   else:
    fpost_520094499)
  compilerulong_520094059 = (when declared(compilerulong):
    compilerulong
   else:
    compilerulong_520094058)
  intfast32t_520094224 = (when declared(intfast32t):
    intfast32t
   else:
    intfast32t_520094223)
  compilerblkcntt_520094158 = (when declared(compilerblkcntt):
    compilerblkcntt
   else:
    compilerblkcntt_520094157)
  cryptohashsha512state_520094442 = (when declared(cryptohashsha512state):
    cryptohashsha512state
   else:
    cryptohashsha512state_520094441)
  int16t_520094190 = (when declared(int16t):
    int16t
   else:
    int16t_520094189)
  structsigsett_520094334 = (when declared(structsigsett):
    structsigsett
   else:
    structsigsett_520094333)
  compilerint16t_520094065 = (when declared(compilerint16t):
    compilerint16t
   else:
    compilerint16t_520094064)
  compileruintleast8t_520094079 = (when declared(compileruintleast8t):
    compileruintleast8t
   else:
    compileruintleast8t_520094078)
  structpthreadmutexs_520094374 = (when declared(structpthreadmutexs):
    structpthreadmutexs
   else:
    structpthreadmutexs_520094373)
  File_520094480 = (when declared(File):
    File
   else:
    File_520094479)
  structcryptoonetimeauthpoly1305state_520094502 = (when declared(
      structcryptoonetimeauthpoly1305state):
    structcryptoonetimeauthpoly1305state
   else:
    structcryptoonetimeauthpoly1305state_520094501)
  cryptosecretstreamxchacha20poly1305state_520094510 = (when declared(
      cryptosecretstreamxchacha20poly1305state):
    cryptosecretstreamxchacha20poly1305state
   else:
    cryptosecretstreamxchacha20poly1305state_520094509)
  cookieclosefunctiont_520094490 = (when declared(cookieclosefunctiont):
    cookieclosefunctiont
   else:
    cookieclosefunctiont_520094489)
  unionpthreadmutexattrt_520094390 = (when declared(unionpthreadmutexattrt):
    unionpthreadmutexattrt
   else:
    unionpthreadmutexattrt_520094389)
  timert_520094316 = (when declared(timert):
    timert
   else:
    timert_520094315)
  unionpthreadcondattrt_520094394 = (when declared(unionpthreadcondattrt):
    unionpthreadcondattrt
   else:
    unionpthreadcondattrt_520094393)
  uquadt_520094278 = (when declared(uquadt):
    uquadt
   else:
    uquadt_520094277)
  ulong_520094274 = (when declared(ulong):
    ulong
   else:
    ulong_520094273)
  fsfilcntt_520094360 = (when declared(fsfilcntt):
    fsfilcntt
   else:
    fsfilcntt_520094359)
  compilerfpos64t_520094474 = (when declared(compilerfpos64t):
    compilerfpos64t
   else:
    compilerfpos64t_520094473)
  structldivt_520094260 = (when declared(structldivt):
    structldivt
   else:
    structldivt_520094259)
  intfast16t_520094222 = (when declared(intfast16t):
    intfast16t
   else:
    intfast16t_520094221)
  cryptoauthhmacsha256state_520094456 = (when declared(cryptoauthhmacsha256state):
    cryptoauthhmacsha256state
   else:
    cryptoauthhmacsha256state_520094455)
  internalfloat64_520094250 = (when declared(internalfloat64):
    internalfloat64
   else:
    internalfloat64_520094249)
  sigsett_520094338 = (when declared(sigsett):
    sigsett
   else:
    sigsett_520094337)
when not declared(fdmask):
  type
    fdmask* = fdmask_520094351
else:
  static :
    hint("Declaration of " & "fdmask" & " already exists, not redeclaring")
when not declared(modet):
  type
    modet* = modet_520094289
else:
  static :
    hint("Declaration of " & "modet" & " already exists, not redeclaring")
when not declared(compilerfpost):
  type
    compilerfpost* = compilerfpost_520094469
else:
  static :
    hint("Declaration of " & "compilerfpost" &
        " already exists, not redeclaring")
when not declared(structiofile):
  type
    structiofile* = structiofile_520094477
else:
  static :
    hint("Declaration of " & "structiofile" & " already exists, not redeclaring")
when not declared(compilerfdmask):
  type
    compilerfdmask* = compilerfdmask_520094345
else:
  static :
    hint("Declaration of " & "compilerfdmask" &
        " already exists, not redeclaring")
when not declared(uchar):
  type
    uchar* = uchar_520094267
else:
  static :
    hint("Declaration of " & "uchar" & " already exists, not redeclaring")
when not declared(fsidt):
  type
    fsidt* = fsidt_520094279
else:
  static :
    hint("Declaration of " & "fsidt" & " already exists, not redeclaring")
when not declared(fdset):
  type
    fdset* = fdset_520094349
else:
  static :
    hint("Declaration of " & "fdset" & " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305state):
  type
    cryptoonetimeauthpoly1305state* = cryptoonetimeauthpoly1305state_520094503
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305state" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bstate):
  type
    cryptogenerichashblake2bstate* = cryptogenerichashblake2bstate_520094459
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bstate" &
        " already exists, not redeclaring")
when not declared(compileronceflag):
  type
    compileronceflag* = compileronceflag_520094385
else:
  static :
    hint("Declaration of " & "compileronceflag" &
        " already exists, not redeclaring")
when not declared(compilerclockt):
  type
    compilerclockt* = compilerclockt_520094131
else:
  static :
    hint("Declaration of " & "compilerclockt" &
        " already exists, not redeclaring")
when not declared(nlinkt):
  type
    nlinkt* = nlinkt_520094291
else:
  static :
    hint("Declaration of " & "nlinkt" & " already exists, not redeclaring")
when not declared(structcryptoauthhmacsha512state):
  type
    structcryptoauthhmacsha512state* = structcryptoauthhmacsha512state_520094443
else:
  static :
    hint("Declaration of " & "structcryptoauthhmacsha512state" &
        " already exists, not redeclaring")
when not declared(ushort):
  type
    ushort* = ushort_520094269
else:
  static :
    hint("Declaration of " & "ushort" & " already exists, not redeclaring")
when not declared(cookieseekfunctiont):
  type
    cookieseekfunctiont* = cookieseekfunctiont_520094487
else:
  static :
    hint("Declaration of " & "cookieseekfunctiont" &
        " already exists, not redeclaring")
when not declared(daddrt):
  type
    daddrt* = daddrt_520094303
else:
  static :
    hint("Declaration of " & "daddrt" & " already exists, not redeclaring")
when not declared(structcryptosigned25519phstate):
  type
    structcryptosigned25519phstate* = structcryptosigned25519phstate_520094511
else:
  static :
    hint("Declaration of " & "structcryptosigned25519phstate" &
        " already exists, not redeclaring")
when not declared(compilerintptrt):
  type
    compilerintptrt* = compilerintptrt_520094181
else:
  static :
    hint("Declaration of " & "compilerintptrt" &
        " already exists, not redeclaring")
when not declared(int32t):
  type
    int32t* = int32t_520094191
else:
  static :
    hint("Declaration of " & "int32t" & " already exists, not redeclaring")
when not declared(uintfast8t):
  type
    uintfast8t* = uintfast8t_520094227
else:
  static :
    hint("Declaration of " & "uintfast8t" & " already exists, not redeclaring")
when not declared(compilerint64t):
  type
    compilerint64t* = compilerint64t_520094072
else:
  static :
    hint("Declaration of " & "compilerint64t" &
        " already exists, not redeclaring")
when not declared(compileruintleast16t):
  type
    compileruintleast16t* = compileruintleast16t_520094082
else:
  static :
    hint("Declaration of " & "compileruintleast16t" &
        " already exists, not redeclaring")
when not declared(compilerpidt):
  type
    compilerpidt* = compilerpidt_520094125
else:
  static :
    hint("Declaration of " & "compilerpidt" & " already exists, not redeclaring")
when not declared(unionpthreadrwlockattrt):
  type
    unionpthreadrwlockattrt* = unionpthreadrwlockattrt_520094417
else:
  static :
    hint("Declaration of " & "unionpthreadrwlockattrt" &
        " already exists, not redeclaring")
when not declared(compilercaddrt):
  type
    compilercaddrt* = compilercaddrt_520094179
else:
  static :
    hint("Declaration of " & "compilercaddrt" &
        " already exists, not redeclaring")
when not declared(compileruintleast64t):
  type
    compileruintleast64t* = compileruintleast64t_520094097
else:
  static :
    hint("Declaration of " & "compileruintleast64t" &
        " already exists, not redeclaring")
when not declared(compilergnucvalist):
  type
    compilergnucvalist* = compilergnucvalist_520094497
else:
  static :
    hint("Declaration of " & "compilergnucvalist" &
        " already exists, not redeclaring")
when not declared(lofft):
  type
    lofft* = lofft_520094281
else:
  static :
    hint("Declaration of " & "lofft" & " already exists, not redeclaring")
when not declared(compileruint8t):
  type
    compileruint8t* = compileruint8t_520094062
else:
  static :
    hint("Declaration of " & "compileruint8t" &
        " already exists, not redeclaring")
when not declared(randombytesimplementation):
  type
    randombytesimplementation* = randombytesimplementation_520094519
else:
  static :
    hint("Declaration of " & "randombytesimplementation" &
        " already exists, not redeclaring")
when not declared(internalfloat64x):
  type
    internalfloat64x* = internalfloat64x_520094253
else:
  static :
    hint("Declaration of " & "internalfloat64x" &
        " already exists, not redeclaring")
when not declared(pthreadkeyt):
  type
    pthreadkeyt* = pthreadkeyt_520094397
else:
  static :
    hint("Declaration of " & "pthreadkeyt" & " already exists, not redeclaring")
when not declared(pthreadmutext):
  type
    pthreadmutext* = pthreadmutext_520094407
else:
  static :
    hint("Declaration of " & "pthreadmutext" &
        " already exists, not redeclaring")
when not declared(structmbstatet):
  type
    structmbstatet* = structmbstatet_520094463
else:
  static :
    hint("Declaration of " & "structmbstatet" &
        " already exists, not redeclaring")
when not declared(compilerrlim64t):
  type
    compilerrlim64t* = compilerrlim64t_520094135
else:
  static :
    hint("Declaration of " & "compilerrlim64t" &
        " already exists, not redeclaring")
when not declared(pthreadt):
  type
    pthreadt* = pthreadt_520094387
else:
  static :
    hint("Declaration of " & "pthreadt" & " already exists, not redeclaring")
when not declared(cryptogenerichashstate):
  type
    cryptogenerichashstate* = cryptogenerichashstate_520094461
else:
  static :
    hint("Declaration of " & "cryptogenerichashstate" &
        " already exists, not redeclaring")
when not declared(quadt):
  type
    quadt* = quadt_520094275
else:
  static :
    hint("Declaration of " & "quadt" & " already exists, not redeclaring")
when not declared(devt):
  type
    devt* = devt_520094285
else:
  static :
    hint("Declaration of " & "devt" & " already exists, not redeclaring")
when not declared(cryptohashsha256state):
  type
    cryptohashsha256state* = cryptohashsha256state_520094451
else:
  static :
    hint("Declaration of " & "cryptohashsha256state" &
        " already exists, not redeclaring")
when not declared(structfdset):
  type
    structfdset* = structfdset_520094347
else:
  static :
    hint("Declaration of " & "structfdset" & " already exists, not redeclaring")
when not declared(keyt):
  type
    keyt* = keyt_520094307
else:
  static :
    hint("Declaration of " & "keyt" & " already exists, not redeclaring")
when not declared(unionatomicwidecounter):
  type
    unionatomicwidecounter* = unionatomicwidecounter_520094361
else:
  static :
    hint("Declaration of " & "unionatomicwidecounter" &
        " already exists, not redeclaring")
when not declared(inot):
  type
    inot* = inot_520094283
else:
  static :
    hint("Declaration of " & "inot" & " already exists, not redeclaring")
when not declared(compilerquadt):
  type
    compilerquadt* = compilerquadt_520094099
else:
  static :
    hint("Declaration of " & "compilerquadt" &
        " already exists, not redeclaring")
when not declared(pthreadcondattrt):
  type
    pthreadcondattrt* = pthreadcondattrt_520094395
else:
  static :
    hint("Declaration of " & "pthreadcondattrt" &
        " already exists, not redeclaring")
when not declared(structtimespec):
  type
    structtimespec* = structtimespec_520094341
else:
  static :
    hint("Declaration of " & "structtimespec" &
        " already exists, not redeclaring")
when not declared(compilerfsfilcnt64t):
  type
    compilerfsfilcnt64t* = compilerfsfilcnt64t_520094167
else:
  static :
    hint("Declaration of " & "compilerfsfilcnt64t" &
        " already exists, not redeclaring")
when not declared(compilermbstatet):
  type
    compilermbstatet* = compilermbstatet_520094465
else:
  static :
    hint("Declaration of " & "compilermbstatet" &
        " already exists, not redeclaring")
when not declared(structdivt):
  type
    structdivt* = structdivt_520094255
else:
  static :
    hint("Declaration of " & "structdivt" & " already exists, not redeclaring")
when not declared(compilerint32t):
  type
    compilerint32t* = compilerint32t_520094068
else:
  static :
    hint("Declaration of " & "compilerint32t" &
        " already exists, not redeclaring")
when not declared(structrandombytesimplementation):
  type
    structrandombytesimplementation* = structrandombytesimplementation_520094517
else:
  static :
    hint("Declaration of " & "structrandombytesimplementation" &
        " already exists, not redeclaring")
when not declared(uint64t):
  type
    uint64t* = uint64t_520094201
else:
  static :
    hint("Declaration of " & "uint64t" & " already exists, not redeclaring")
when not declared(unionpthreadcondt):
  type
    unionpthreadcondt* = unionpthreadcondt_520094409
else:
  static :
    hint("Declaration of " & "unionpthreadcondt" &
        " already exists, not redeclaring")
when not declared(structrandomdata):
  type
    structrandomdata* = structrandomdata_520094431
else:
  static :
    hint("Declaration of " & "structrandomdata" &
        " already exists, not redeclaring")
when not declared(uint8t):
  type
    uint8t* = uint8t_520094195
else:
  static :
    hint("Declaration of " & "uint8t" & " already exists, not redeclaring")
when not declared(uidt):
  type
    uidt* = uidt_520094293
else:
  static :
    hint("Declaration of " & "uidt" & " already exists, not redeclaring")
when not declared(structtimeval):
  type
    structtimeval* = structtimeval_520094339
else:
  static :
    hint("Declaration of " & "structtimeval" &
        " already exists, not redeclaring")
when not declared(registert):
  type
    registert* = registert_520094331
else:
  static :
    hint("Declaration of " & "registert" & " already exists, not redeclaring")
when not declared(compilerinot):
  type
    compilerinot* = compilerinot_520094113
else:
  static :
    hint("Declaration of " & "compilerinot" & " already exists, not redeclaring")
when not declared(intptrt):
  type
    intptrt* = intptrt_520094235
else:
  static :
    hint("Declaration of " & "intptrt" & " already exists, not redeclaring")
when not declared(compilersocklent):
  type
    compilersocklent* = compilersocklent_520094183
else:
  static :
    hint("Declaration of " & "compilersocklent" &
        " already exists, not redeclaring")
when not declared(compilersyscallslongt):
  type
    compilersyscallslongt* = compilersyscallslongt_520094173
else:
  static :
    hint("Declaration of " & "compilersyscallslongt" &
        " already exists, not redeclaring")
when not declared(intleast32t):
  type
    intleast32t* = intleast32t_520094207
else:
  static :
    hint("Declaration of " & "intleast32t" & " already exists, not redeclaring")
when not declared(uintleast32t):
  type
    uintleast32t* = uintleast32t_520094215
else:
  static :
    hint("Declaration of " & "uintleast32t" & " already exists, not redeclaring")
when not declared(idt):
  type
    idt* = idt_520094299
else:
  static :
    hint("Declaration of " & "idt" & " already exists, not redeclaring")
when not declared(compilersigsett):
  type
    compilersigsett* = compilersigsett_520094335
else:
  static :
    hint("Declaration of " & "compilersigsett" &
        " already exists, not redeclaring")
when not declared(compilerofft):
  type
    compilerofft* = compilerofft_520094121
else:
  static :
    hint("Declaration of " & "compilerofft" & " already exists, not redeclaring")
when not declared(uintfast64t):
  type
    uintfast64t* = uintfast64t_520094233
else:
  static :
    hint("Declaration of " & "uintfast64t" & " already exists, not redeclaring")
when not declared(susecondst):
  type
    susecondst* = susecondst_520094343
else:
  static :
    hint("Declaration of " & "susecondst" & " already exists, not redeclaring")
when not declared(blkcntt):
  type
    blkcntt* = blkcntt_520094355
else:
  static :
    hint("Declaration of " & "blkcntt" & " already exists, not redeclaring")
when not declared(structpthreadconds):
  type
    structpthreadconds* = structpthreadconds_520094377
else:
  static :
    hint("Declaration of " & "structpthreadconds" &
        " already exists, not redeclaring")
when not declared(intfast8t):
  type
    intfast8t* = intfast8t_520094219
else:
  static :
    hint("Declaration of " & "intfast8t" & " already exists, not redeclaring")
when not declared(unionpthreadbarrierattrt):
  type
    unionpthreadbarrierattrt* = unionpthreadbarrierattrt_520094427
else:
  static :
    hint("Declaration of " & "unionpthreadbarrierattrt" &
        " already exists, not redeclaring")
when not declared(compileruint32t):
  type
    compileruint32t* = compileruint32t_520094070
else:
  static :
    hint("Declaration of " & "compileruint32t" &
        " already exists, not redeclaring")
when not declared(int64t):
  type
    int64t* = int64t_520094193
else:
  static :
    hint("Declaration of " & "int64t" & " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256state):
  type
    cryptoauthhmacsha512256state* = cryptoauthhmacsha512256state_520094447
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256state" &
        " already exists, not redeclaring")
when not declared(unionpthreadmutext):
  type
    unionpthreadmutext* = unionpthreadmutext_520094405
else:
  static :
    hint("Declaration of " & "unionpthreadmutext" &
        " already exists, not redeclaring")
when not declared(pthreadbarriert):
  type
    pthreadbarriert* = pthreadbarriert_520094425
else:
  static :
    hint("Declaration of " & "pthreadbarriert" &
        " already exists, not redeclaring")
when not declared(gidt):
  type
    gidt* = gidt_520094287
else:
  static :
    hint("Declaration of " & "gidt" & " already exists, not redeclaring")
when not declared(unionpthreadrwlockt):
  type
    unionpthreadrwlockt* = unionpthreadrwlockt_520094413
else:
  static :
    hint("Declaration of " & "unionpthreadrwlockt" &
        " already exists, not redeclaring")
when not declared(pidt):
  type
    pidt* = pidt_520094297
else:
  static :
    hint("Declaration of " & "pidt" & " already exists, not redeclaring")
when not declared(compileratomicwidecounter):
  type
    compileratomicwidecounter* = compileratomicwidecounter_520094363
else:
  static :
    hint("Declaration of " & "compileratomicwidecounter" &
        " already exists, not redeclaring")
when not declared(compilerushort):
  type
    compilerushort* = compilerushort_520094054
else:
  static :
    hint("Declaration of " & "compilerushort" &
        " already exists, not redeclaring")
when not declared(compileruint16t):
  type
    compileruint16t* = compileruint16t_520094066
else:
  static :
    hint("Declaration of " & "compileruint16t" &
        " already exists, not redeclaring")
when not declared(uintleast64t):
  type
    uintleast64t* = uintleast64t_520094217
else:
  static :
    hint("Declaration of " & "uintleast64t" & " already exists, not redeclaring")
when not declared(uintleast8t):
  type
    uintleast8t* = uintleast8t_520094211
else:
  static :
    hint("Declaration of " & "uintleast8t" & " already exists, not redeclaring")
when not declared(lldivt):
  type
    lldivt* = lldivt_520094265
else:
  static :
    hint("Declaration of " & "lldivt" & " already exists, not redeclaring")
when not declared(compilerintleast32t):
  type
    compilerintleast32t* = compilerintleast32t_520094084
else:
  static :
    hint("Declaration of " & "compilerintleast32t" &
        " already exists, not redeclaring")
when not declared(compilersyscallulongt):
  type
    compilersyscallulongt* = compilersyscallulongt_520094175
else:
  static :
    hint("Declaration of " & "compilersyscallulongt" &
        " already exists, not redeclaring")
when not declared(unionpthreadattrt):
  type
    unionpthreadattrt* = unionpthreadattrt_520094401
else:
  static :
    hint("Declaration of " & "unionpthreadattrt" &
        " already exists, not redeclaring")
when not declared(pthreadrwlockattrt):
  type
    pthreadrwlockattrt* = pthreadrwlockattrt_520094419
else:
  static :
    hint("Declaration of " & "pthreadrwlockattrt" &
        " already exists, not redeclaring")
when not declared(wchart):
  type
    wchart* = wchart_520094437
else:
  static :
    hint("Declaration of " & "wchart" & " already exists, not redeclaring")
when not declared(pthreadrwlockt):
  type
    pthreadrwlockt* = pthreadrwlockt_520094415
else:
  static :
    hint("Declaration of " & "pthreadrwlockt" &
        " already exists, not redeclaring")
when not declared(structcryptosecretstreamxchacha20poly1305state):
  type
    structcryptosecretstreamxchacha20poly1305state* = structcryptosecretstreamxchacha20poly1305state_520094507
else:
  static :
    hint("Declaration of " & "structcryptosecretstreamxchacha20poly1305state" &
        " already exists, not redeclaring")
when not declared(uintfast32t):
  type
    uintfast32t* = uintfast32t_520094231
else:
  static :
    hint("Declaration of " & "uintfast32t" & " already exists, not redeclaring")
when not declared(compileruintmaxt):
  type
    compileruintmaxt* = compileruintmaxt_520094105
else:
  static :
    hint("Declaration of " & "compileruintmaxt" &
        " already exists, not redeclaring")
when not declared(compilerpthreadlistt):
  type
    compilerpthreadlistt* = compilerpthreadlistt_520094367
else:
  static :
    hint("Declaration of " & "compilerpthreadlistt" &
        " already exists, not redeclaring")
when not declared(compilerfile):
  type
    compilerfile* = compilerfile_520094475
else:
  static :
    hint("Declaration of " & "compilerfile" & " already exists, not redeclaring")
when not declared(uintmaxt):
  type
    uintmaxt* = uintmaxt_520094241
else:
  static :
    hint("Declaration of " & "uintmaxt" & " already exists, not redeclaring")
when not declared(compilerintleast16t):
  type
    compilerintleast16t* = compilerintleast16t_520094080
else:
  static :
    hint("Declaration of " & "compilerintleast16t" &
        " already exists, not redeclaring")
when not declared(compilerusecondst):
  type
    compilerusecondst* = compilerusecondst_520094141
else:
  static :
    hint("Declaration of " & "compilerusecondst" &
        " already exists, not redeclaring")
when not declared(compilerintleast64t):
  type
    compilerintleast64t* = compilerintleast64t_520094095
else:
  static :
    hint("Declaration of " & "compilerintleast64t" &
        " already exists, not redeclaring")
when not declared(uint64ttypedef):
  type
    uint64ttypedef* = uint64ttypedef_520094329
else:
  static :
    hint("Declaration of " & "uint64ttypedef" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512state):
  type
    cryptoauthhmacsha512state* = cryptoauthhmacsha512state_520094445
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512state" &
        " already exists, not redeclaring")
when not declared(pthreadspinlockt):
  type
    pthreadspinlockt* = pthreadspinlockt_520094421
else:
  static :
    hint("Declaration of " & "pthreadspinlockt" &
        " already exists, not redeclaring")
when not declared(unionpthreadbarriert):
  type
    unionpthreadbarriert* = unionpthreadbarriert_520094423
else:
  static :
    hint("Declaration of " & "unionpthreadbarriert" &
        " already exists, not redeclaring")
when not declared(uintfast16t):
  type
    uintfast16t* = uintfast16t_520094229
else:
  static :
    hint("Declaration of " & "uintfast16t" & " already exists, not redeclaring")
when not declared(compilerblksizet):
  type
    compilerblksizet* = compilerblksizet_520094155
else:
  static :
    hint("Declaration of " & "compilerblksizet" &
        " already exists, not redeclaring")
when not declared(structcryptohashsha256state):
  type
    structcryptohashsha256state* = structcryptohashsha256state_520094449
else:
  static :
    hint("Declaration of " & "structcryptohashsha256state" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmstate):
  type
    cryptoaeadaes256gcmstate* = cryptoaeadaes256gcmstate_520094245
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmstate" &
        " already exists, not redeclaring")
when not declared(compileruintleast32t):
  type
    compileruintleast32t* = compileruintleast32t_520094093
else:
  static :
    hint("Declaration of " & "compileruintleast32t" &
        " already exists, not redeclaring")
when not declared(compilerintleast8t):
  type
    compilerintleast8t* = compilerintleast8t_520094076
else:
  static :
    hint("Declaration of " & "compilerintleast8t" &
        " already exists, not redeclaring")
when not declared(uintptrt):
  type
    uintptrt* = uintptrt_520094237
else:
  static :
    hint("Declaration of " & "uintptrt" & " already exists, not redeclaring")
when not declared(uint8ttypedef):
  type
    uint8ttypedef* = uint8ttypedef_520094323
else:
  static :
    hint("Declaration of " & "uint8ttypedef" &
        " already exists, not redeclaring")
when not declared(compilerint8t):
  type
    compilerint8t* = compilerint8t_520094060
else:
  static :
    hint("Declaration of " & "compilerint8t" &
        " already exists, not redeclaring")
when not declared(compilerintmaxt):
  type
    compilerintmaxt* = compilerintmaxt_520094103
else:
  static :
    hint("Declaration of " & "compilerintmaxt" &
        " already exists, not redeclaring")
when not declared(compilerfsidt):
  type
    compilerfsidt* = compilerfsidt_520094129
else:
  static :
    hint("Declaration of " & "compilerfsidt" &
        " already exists, not redeclaring")
when not declared(ulongtypedef):
  type
    ulongtypedef* = ulongtypedef_520094317
else:
  static :
    hint("Declaration of " & "ulongtypedef" & " already exists, not redeclaring")
when not declared(compilersigatomict):
  type
    compilersigatomict* = compilersigatomict_520094185
else:
  static :
    hint("Declaration of " & "compilersigatomict" &
        " already exists, not redeclaring")
when not declared(ldivt):
  type
    ldivt* = ldivt_520094261
else:
  static :
    hint("Declaration of " & "ldivt" & " already exists, not redeclaring")
when not declared(structcryptogenerichashblake2bstate):
  type
    structcryptogenerichashblake2bstate* = structcryptogenerichashblake2bstate_520094457
else:
  static :
    hint("Declaration of " & "structcryptogenerichashblake2bstate" &
        " already exists, not redeclaring")
when not declared(compilersusecondst):
  type
    compilersusecondst* = compilersusecondst_520094143
else:
  static :
    hint("Declaration of " & "compilersusecondst" &
        " already exists, not redeclaring")
when not declared(compilerdaddrt):
  type
    compilerdaddrt* = compilerdaddrt_520094147
else:
  static :
    hint("Declaration of " & "compilerdaddrt" &
        " already exists, not redeclaring")
when not declared(pthreadoncet):
  type
    pthreadoncet* = pthreadoncet_520094399
else:
  static :
    hint("Declaration of " & "pthreadoncet" & " already exists, not redeclaring")
when not declared(compileruidt):
  type
    compileruidt* = compileruidt_520094109
else:
  static :
    hint("Declaration of " & "compileruidt" & " already exists, not redeclaring")
when not declared(structgfpos64t):
  type
    structgfpos64t* = structgfpos64t_520094471
else:
  static :
    hint("Declaration of " & "structgfpos64t" &
        " already exists, not redeclaring")
when not declared(intmaxt):
  type
    intmaxt* = intmaxt_520094239
else:
  static :
    hint("Declaration of " & "intmaxt" & " already exists, not redeclaring")
when not declared(compilerino64t):
  type
    compilerino64t* = compilerino64t_520094115
else:
  static :
    hint("Declaration of " & "compilerino64t" &
        " already exists, not redeclaring")
when not declared(uint):
  type
    uint* = uint_520094271
else:
  static :
    hint("Declaration of " & "uint" & " already exists, not redeclaring")
when not declared(structcryptohashsha512state):
  type
    structcryptohashsha512state* = structcryptohashsha512state_520094439
else:
  static :
    hint("Declaration of " & "structcryptohashsha512state" &
        " already exists, not redeclaring")
when not declared(compileroff64t):
  type
    compileroff64t* = compileroff64t_520094123
else:
  static :
    hint("Declaration of " & "compileroff64t" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519phstate):
  type
    cryptosigned25519phstate* = cryptosigned25519phstate_520094513
else:
  static :
    hint("Declaration of " & "cryptosigned25519phstate" &
        " already exists, not redeclaring")
when not declared(compileruint64t):
  type
    compileruint64t* = compileruint64t_520094074
else:
  static :
    hint("Declaration of " & "compileruint64t" &
        " already exists, not redeclaring")
when not declared(compilernlinkt):
  type
    compilernlinkt* = compilernlinkt_520094119
else:
  static :
    hint("Declaration of " & "compilernlinkt" &
        " already exists, not redeclaring")
when not declared(cookiewritefunctiont):
  type
    cookiewritefunctiont* = cookiewritefunctiont_520094485
else:
  static :
    hint("Declaration of " & "cookiewritefunctiont" &
        " already exists, not redeclaring")
when not declared(compilerclockidt):
  type
    compilerclockidt* = compilerclockidt_520094151
else:
  static :
    hint("Declaration of " & "compilerclockidt" &
        " already exists, not redeclaring")
when not declared(compilergidt):
  type
    compilergidt* = compilergidt_520094111
else:
  static :
    hint("Declaration of " & "compilergidt" & " already exists, not redeclaring")
when not declared(uint32ttypedef):
  type
    uint32ttypedef* = uint32ttypedef_520094327
else:
  static :
    hint("Declaration of " & "uint32ttypedef" &
        " already exists, not redeclaring")
when not declared(intleast64t):
  type
    intleast64t* = intleast64t_520094209
else:
  static :
    hint("Declaration of " & "intleast64t" & " already exists, not redeclaring")
when not declared(structcryptoauthhmacsha256state):
  type
    structcryptoauthhmacsha256state* = structcryptoauthhmacsha256state_520094453
else:
  static :
    hint("Declaration of " & "structcryptoauthhmacsha256state" &
        " already exists, not redeclaring")
when not declared(compilertimert):
  type
    compilertimert* = compilertimert_520094153
else:
  static :
    hint("Declaration of " & "compilertimert" &
        " already exists, not redeclaring")
when not declared(compilerfswordt):
  type
    compilerfswordt* = compilerfswordt_520094169
else:
  static :
    hint("Declaration of " & "compilerfswordt" &
        " already exists, not redeclaring")
when not declared(timet):
  type
    timet* = timet_520094313
else:
  static :
    hint("Declaration of " & "timet" & " already exists, not redeclaring")
when not declared(intleast16t):
  type
    intleast16t* = intleast16t_520094205
else:
  static :
    hint("Declaration of " & "intleast16t" & " already exists, not redeclaring")
when not declared(structpthreadrwlockarcht):
  type
    structpthreadrwlockarcht* = structpthreadrwlockarcht_520094375
else:
  static :
    hint("Declaration of " & "structpthreadrwlockarcht" &
        " already exists, not redeclaring")
when not declared(structdrand48data):
  type
    structdrand48data* = structdrand48data_520094433
else:
  static :
    hint("Declaration of " & "structdrand48data" &
        " already exists, not redeclaring")
when not declared(valist):
  type
    valist* = valist_520094495
else:
  static :
    hint("Declaration of " & "valist" & " already exists, not redeclaring")
when not declared(ushorttypedef):
  type
    ushorttypedef* = ushorttypedef_520094319
else:
  static :
    hint("Declaration of " & "ushorttypedef" &
        " already exists, not redeclaring")
when not declared(compileruchar):
  type
    compileruchar* = compileruchar_520094052
else:
  static :
    hint("Declaration of " & "compileruchar" &
        " already exists, not redeclaring")
when not declared(compileridt):
  type
    compileridt* = compileridt_520094137
else:
  static :
    hint("Declaration of " & "compileridt" & " already exists, not redeclaring")
when not declared(divt):
  type
    divt* = divt_520094257
else:
  static :
    hint("Declaration of " & "divt" & " already exists, not redeclaring")
when not declared(structlldivt):
  type
    structlldivt* = structlldivt_520094263
else:
  static :
    hint("Declaration of " & "structlldivt" & " already exists, not redeclaring")
when not declared(pthreadbarrierattrt):
  type
    pthreadbarrierattrt* = pthreadbarrierattrt_520094429
else:
  static :
    hint("Declaration of " & "pthreadbarrierattrt" &
        " already exists, not redeclaring")
when not declared(compilerssizet):
  type
    compilerssizet* = compilerssizet_520094171
else:
  static :
    hint("Declaration of " & "compilerssizet" &
        " already exists, not redeclaring")
when not declared(blksizet):
  type
    blksizet* = blksizet_520094353
else:
  static :
    hint("Declaration of " & "blksizet" & " already exists, not redeclaring")
when not declared(compilercomparfnt):
  type
    compilercomparfnt* = compilercomparfnt_520094435
else:
  static :
    hint("Declaration of " & "compilercomparfnt" &
        " already exists, not redeclaring")
when not declared(intfast64t):
  type
    intfast64t* = intfast64t_520094225
else:
  static :
    hint("Declaration of " & "intfast64t" & " already exists, not redeclaring")
when not declared(compilertsst):
  type
    compilertsst* = compilertsst_520094379
else:
  static :
    hint("Declaration of " & "compilertsst" & " already exists, not redeclaring")
when not declared(compilerlofft):
  type
    compilerlofft* = compilerlofft_520094177
else:
  static :
    hint("Declaration of " & "compilerlofft" &
        " already exists, not redeclaring")
when not declared(compilermodet):
  type
    compilermodet* = compilermodet_520094117
else:
  static :
    hint("Declaration of " & "compilermodet" &
        " already exists, not redeclaring")
when not declared(compilertimet):
  type
    compilertimet* = compilertimet_520094139
else:
  static :
    hint("Declaration of " & "compilertimet" &
        " already exists, not redeclaring")
when not declared(compilerkeyt):
  type
    compilerkeyt* = compilerkeyt_520094149
else:
  static :
    hint("Declaration of " & "compilerkeyt" & " already exists, not redeclaring")
when not declared(offt):
  type
    offt* = offt_520094295
else:
  static :
    hint("Declaration of " & "offt" & " already exists, not redeclaring")
when not declared(compileruint):
  type
    compileruint* = compileruint_520094056
else:
  static :
    hint("Declaration of " & "compileruint" & " already exists, not redeclaring")
when not declared(uint32t):
  type
    uint32t* = uint32t_520094199
else:
  static :
    hint("Declaration of " & "uint32t" & " already exists, not redeclaring")
when not declared(structpthreadinternalslist):
  type
    structpthreadinternalslist* = structpthreadinternalslist_520094369
else:
  static :
    hint("Declaration of " & "structpthreadinternalslist" &
        " already exists, not redeclaring")
when not declared(compilerrlimt):
  type
    compilerrlimt* = compilerrlimt_520094133
else:
  static :
    hint("Declaration of " & "compilerrlimt" &
        " already exists, not redeclaring")
when not declared(compilerdevt):
  type
    compilerdevt* = compilerdevt_520094107
else:
  static :
    hint("Declaration of " & "compilerdevt" & " already exists, not redeclaring")
when not declared(ssizet):
  type
    ssizet* = ssizet_520094301
else:
  static :
    hint("Declaration of " & "ssizet" & " already exists, not redeclaring")
when not declared(cryptosignstate):
  type
    cryptosignstate* = cryptosignstate_520094515
else:
  static :
    hint("Declaration of " & "cryptosignstate" &
        " already exists, not redeclaring")
when not declared(internalfloat32x):
  type
    internalfloat32x* = internalfloat32x_520094251
else:
  static :
    hint("Declaration of " & "internalfloat32x" &
        " already exists, not redeclaring")
when not declared(pthreadcondt):
  type
    pthreadcondt* = pthreadcondt_520094411
else:
  static :
    hint("Declaration of " & "pthreadcondt" & " already exists, not redeclaring")
when not declared(uint16ttypedef):
  type
    uint16ttypedef* = uint16ttypedef_520094325
else:
  static :
    hint("Declaration of " & "uint16ttypedef" &
        " already exists, not redeclaring")
when not declared(compilerblkcnt64t):
  type
    compilerblkcnt64t* = compilerblkcnt64t_520094159
else:
  static :
    hint("Declaration of " & "compilerblkcnt64t" &
        " already exists, not redeclaring")
when not declared(structfsidt):
  type
    structfsidt* = structfsidt_520094127
else:
  static :
    hint("Declaration of " & "structfsidt" & " already exists, not redeclaring")
when not declared(fsblkcntt):
  type
    fsblkcntt* = fsblkcntt_520094357
else:
  static :
    hint("Declaration of " & "fsblkcntt" & " already exists, not redeclaring")
when not declared(structgfpost):
  type
    structgfpost* = structgfpost_520094467
else:
  static :
    hint("Declaration of " & "structgfpost" & " already exists, not redeclaring")
when not declared(structiocookieiofunctionst):
  type
    structiocookieiofunctionst* = structiocookieiofunctionst_520094491
else:
  static :
    hint("Declaration of " & "structiocookieiofunctionst" &
        " already exists, not redeclaring")
when not declared(cookiereadfunctiont):
  type
    cookiereadfunctiont* = cookiereadfunctiont_520094483
else:
  static :
    hint("Declaration of " & "cookiereadfunctiont" &
        " already exists, not redeclaring")
when not declared(pthreadattrt):
  type
    pthreadattrt* = pthreadattrt_520094403
else:
  static :
    hint("Declaration of " & "pthreadattrt" & " already exists, not redeclaring")
when not declared(cryptoonetimeauthstate):
  type
    cryptoonetimeauthstate* = cryptoonetimeauthstate_520094505
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthstate" &
        " already exists, not redeclaring")
when not declared(compilerfsfilcntt):
  type
    compilerfsfilcntt* = compilerfsfilcntt_520094165
else:
  static :
    hint("Declaration of " & "compilerfsfilcntt" &
        " already exists, not redeclaring")
when not declared(pthreadmutexattrt):
  type
    pthreadmutexattrt* = pthreadmutexattrt_520094391
else:
  static :
    hint("Declaration of " & "pthreadmutexattrt" &
        " already exists, not redeclaring")
when not declared(structpthreadinternallist):
  type
    structpthreadinternallist* = structpthreadinternallist_520094365
else:
  static :
    hint("Declaration of " & "structpthreadinternallist" &
        " already exists, not redeclaring")
when not declared(compilerpthreadslistt):
  type
    compilerpthreadslistt* = compilerpthreadslistt_520094371
else:
  static :
    hint("Declaration of " & "compilerpthreadslistt" &
        " already exists, not redeclaring")
when not declared(int8t):
  type
    int8t* = int8t_520094187
else:
  static :
    hint("Declaration of " & "int8t" & " already exists, not redeclaring")
when not declared(structonceflag):
  type
    structonceflag* = structonceflag_520094383
else:
  static :
    hint("Declaration of " & "structonceflag" &
        " already exists, not redeclaring")
when not declared(compileruquadt):
  type
    compileruquadt* = compileruquadt_520094101
else:
  static :
    hint("Declaration of " & "compileruquadt" &
        " already exists, not redeclaring")
when not declared(uint16t):
  type
    uint16t* = uint16t_520094197
else:
  static :
    hint("Declaration of " & "uint16t" & " already exists, not redeclaring")
when not declared(intleast8t):
  type
    intleast8t* = intleast8t_520094203
else:
  static :
    hint("Declaration of " & "intleast8t" & " already exists, not redeclaring")
when not declared(compilerthrdt):
  type
    compilerthrdt* = compilerthrdt_520094381
else:
  static :
    hint("Declaration of " & "compilerthrdt" &
        " already exists, not redeclaring")
when not declared(cookieiofunctionst):
  type
    cookieiofunctionst* = cookieiofunctionst_520094493
else:
  static :
    hint("Declaration of " & "cookieiofunctionst" &
        " already exists, not redeclaring")
when not declared(structcryptoaeadaes256gcmstate):
  type
    structcryptoaeadaes256gcmstate* = structcryptoaeadaes256gcmstate_520094243
else:
  static :
    hint("Declaration of " & "structcryptoaeadaes256gcmstate" &
        " already exists, not redeclaring")
when not declared(compilerfsblkcntt):
  type
    compilerfsblkcntt* = compilerfsblkcntt_520094161
else:
  static :
    hint("Declaration of " & "compilerfsblkcntt" &
        " already exists, not redeclaring")
when not declared(uintleast16t):
  type
    uintleast16t* = uintleast16t_520094213
else:
  static :
    hint("Declaration of " & "uintleast16t" & " already exists, not redeclaring")
when not declared(clockidt):
  type
    clockidt* = clockidt_520094311
else:
  static :
    hint("Declaration of " & "clockidt" & " already exists, not redeclaring")
when not declared(caddrt):
  type
    caddrt* = caddrt_520094305
else:
  static :
    hint("Declaration of " & "caddrt" & " already exists, not redeclaring")
when not declared(internalfloat32):
  type
    internalfloat32* = internalfloat32_520094247
else:
  static :
    hint("Declaration of " & "internalfloat32" &
        " already exists, not redeclaring")
when not declared(compilersuseconds64t):
  type
    compilersuseconds64t* = compilersuseconds64t_520094145
else:
  static :
    hint("Declaration of " & "compilersuseconds64t" &
        " already exists, not redeclaring")
when not declared(compilerfsblkcnt64t):
  type
    compilerfsblkcnt64t* = compilerfsblkcnt64t_520094163
else:
  static :
    hint("Declaration of " & "compilerfsblkcnt64t" &
        " already exists, not redeclaring")
when not declared(clockt):
  type
    clockt* = clockt_520094309
else:
  static :
    hint("Declaration of " & "clockt" & " already exists, not redeclaring")
when not declared(uinttypedef):
  type
    uinttypedef* = uinttypedef_520094321
else:
  static :
    hint("Declaration of " & "uinttypedef" & " already exists, not redeclaring")
when not declared(fpost):
  type
    fpost* = fpost_520094499
else:
  static :
    hint("Declaration of " & "fpost" & " already exists, not redeclaring")
when not declared(compilerulong):
  type
    compilerulong* = compilerulong_520094058
else:
  static :
    hint("Declaration of " & "compilerulong" &
        " already exists, not redeclaring")
when not declared(intfast32t):
  type
    intfast32t* = intfast32t_520094223
else:
  static :
    hint("Declaration of " & "intfast32t" & " already exists, not redeclaring")
when not declared(compilerblkcntt):
  type
    compilerblkcntt* = compilerblkcntt_520094157
else:
  static :
    hint("Declaration of " & "compilerblkcntt" &
        " already exists, not redeclaring")
when not declared(cryptohashsha512state):
  type
    cryptohashsha512state* = cryptohashsha512state_520094441
else:
  static :
    hint("Declaration of " & "cryptohashsha512state" &
        " already exists, not redeclaring")
when not declared(int16t):
  type
    int16t* = int16t_520094189
else:
  static :
    hint("Declaration of " & "int16t" & " already exists, not redeclaring")
when not declared(structsigsett):
  type
    structsigsett* = structsigsett_520094333
else:
  static :
    hint("Declaration of " & "structsigsett" &
        " already exists, not redeclaring")
when not declared(compilerint16t):
  type
    compilerint16t* = compilerint16t_520094064
else:
  static :
    hint("Declaration of " & "compilerint16t" &
        " already exists, not redeclaring")
when not declared(compileruintleast8t):
  type
    compileruintleast8t* = compileruintleast8t_520094078
else:
  static :
    hint("Declaration of " & "compileruintleast8t" &
        " already exists, not redeclaring")
when not declared(structpthreadmutexs):
  type
    structpthreadmutexs* = structpthreadmutexs_520094373
else:
  static :
    hint("Declaration of " & "structpthreadmutexs" &
        " already exists, not redeclaring")
when not declared(File):
  type
    File* = File_520094479
else:
  static :
    hint("Declaration of " & "File" & " already exists, not redeclaring")
when not declared(structcryptoonetimeauthpoly1305state):
  type
    structcryptoonetimeauthpoly1305state* = structcryptoonetimeauthpoly1305state_520094501
else:
  static :
    hint("Declaration of " & "structcryptoonetimeauthpoly1305state" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305state):
  type
    cryptosecretstreamxchacha20poly1305state* = cryptosecretstreamxchacha20poly1305state_520094509
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305state" &
        " already exists, not redeclaring")
when not declared(cookieclosefunctiont):
  type
    cookieclosefunctiont* = cookieclosefunctiont_520094489
else:
  static :
    hint("Declaration of " & "cookieclosefunctiont" &
        " already exists, not redeclaring")
when not declared(unionpthreadmutexattrt):
  type
    unionpthreadmutexattrt* = unionpthreadmutexattrt_520094389
else:
  static :
    hint("Declaration of " & "unionpthreadmutexattrt" &
        " already exists, not redeclaring")
when not declared(timert):
  type
    timert* = timert_520094315
else:
  static :
    hint("Declaration of " & "timert" & " already exists, not redeclaring")
when not declared(unionpthreadcondattrt):
  type
    unionpthreadcondattrt* = unionpthreadcondattrt_520094393
else:
  static :
    hint("Declaration of " & "unionpthreadcondattrt" &
        " already exists, not redeclaring")
when not declared(uquadt):
  type
    uquadt* = uquadt_520094277
else:
  static :
    hint("Declaration of " & "uquadt" & " already exists, not redeclaring")
when not declared(ulong):
  type
    ulong* = ulong_520094273
else:
  static :
    hint("Declaration of " & "ulong" & " already exists, not redeclaring")
when not declared(fsfilcntt):
  type
    fsfilcntt* = fsfilcntt_520094359
else:
  static :
    hint("Declaration of " & "fsfilcntt" & " already exists, not redeclaring")
when not declared(compilerfpos64t):
  type
    compilerfpos64t* = compilerfpos64t_520094473
else:
  static :
    hint("Declaration of " & "compilerfpos64t" &
        " already exists, not redeclaring")
when not declared(structldivt):
  type
    structldivt* = structldivt_520094259
else:
  static :
    hint("Declaration of " & "structldivt" & " already exists, not redeclaring")
when not declared(intfast16t):
  type
    intfast16t* = intfast16t_520094221
else:
  static :
    hint("Declaration of " & "intfast16t" & " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256state):
  type
    cryptoauthhmacsha256state* = cryptoauthhmacsha256state_520094455
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256state" &
        " already exists, not redeclaring")
when not declared(internalfloat64):
  type
    internalfloat64* = internalfloat64_520094249
else:
  static :
    hint("Declaration of " & "internalfloat64" &
        " already exists, not redeclaring")
when not declared(sigsett):
  type
    sigsett* = sigsett_520094337
else:
  static :
    hint("Declaration of " & "sigsett" & " already exists, not redeclaring")
when not declared(internalstdinth):
  when 1 is static:
    const
      internalstdinth* = 1   ## Generated based on /usr/include/stdint.h:23:9
  else:
    let internalstdinth* = 1 ## Generated based on /usr/include/stdint.h:23:9
else:
  static :
    hint("Declaration of " & "internalstdinth" &
        " already exists, not redeclaring")
when not declared(internalfeaturesh):
  when 1 is static:
    const
      internalfeaturesh* = 1 ## Generated based on /usr/include/features.h:19:9
  else:
    let internalfeaturesh* = 1 ## Generated based on /usr/include/features.h:19:9
else:
  static :
    hint("Declaration of " & "internalfeaturesh" &
        " already exists, not redeclaring")
when not declared(internaldefaultsource):
  when 1 is static:
    const
      internaldefaultsource* = 1 ## Generated based on /usr/include/features.h:238:10
  else:
    let internaldefaultsource* = 1 ## Generated based on /usr/include/features.h:238:10
else:
  static :
    hint("Declaration of " & "internaldefaultsource" &
        " already exists, not redeclaring")
when not declared(compilerglibcuseisoc2x):
  when 0 is static:
    const
      compilerglibcuseisoc2x* = 0 ## Generated based on /usr/include/features.h:246:10
  else:
    let compilerglibcuseisoc2x* = 0 ## Generated based on /usr/include/features.h:246:10
else:
  static :
    hint("Declaration of " & "compilerglibcuseisoc2x" &
        " already exists, not redeclaring")
when not declared(compileruseisoc11):
  when 1 is static:
    const
      compileruseisoc11* = 1 ## Generated based on /usr/include/features.h:252:10
  else:
    let compileruseisoc11* = 1 ## Generated based on /usr/include/features.h:252:10
else:
  static :
    hint("Declaration of " & "compileruseisoc11" &
        " already exists, not redeclaring")
when not declared(compileruseisoc99):
  when 1 is static:
    const
      compileruseisoc99* = 1 ## Generated based on /usr/include/features.h:347:10
  else:
    let compileruseisoc99* = 1 ## Generated based on /usr/include/features.h:347:10
else:
  static :
    hint("Declaration of " & "compileruseisoc99" &
        " already exists, not redeclaring")
when not declared(compileruseisoc95):
  when 1 is static:
    const
      compileruseisoc95* = 1 ## Generated based on /usr/include/features.h:345:10
  else:
    let compileruseisoc95* = 1 ## Generated based on /usr/include/features.h:345:10
else:
  static :
    hint("Declaration of " & "compileruseisoc95" &
        " already exists, not redeclaring")
when not declared(compileruseposiximplicitly):
  when 1 is static:
    const
      compileruseposiximplicitly* = 1 ## Generated based on /usr/include/features.h:287:11
  else:
    let compileruseposiximplicitly* = 1 ## Generated based on /usr/include/features.h:287:11
else:
  static :
    hint("Declaration of " & "compileruseposiximplicitly" &
        " already exists, not redeclaring")
when not declared(internalposixsource):
  when 1 is static:
    const
      internalposixsource* = 1 ## Generated based on /usr/include/features.h:290:10
  else:
    let internalposixsource* = 1 ## Generated based on /usr/include/features.h:290:10
else:
  static :
    hint("Declaration of " & "internalposixsource" &
        " already exists, not redeclaring")
when not declared(internalposixcsource):
  when cast[clong](200809'i64) is static:
    const
      internalposixcsource* = cast[clong](200809'i64) ## Generated based on /usr/include/features.h:292:10
  else:
    let internalposixcsource* = cast[clong](200809'i64) ## Generated based on /usr/include/features.h:292:10
else:
  static :
    hint("Declaration of " & "internalposixcsource" &
        " already exists, not redeclaring")
when not declared(compileruseposix):
  when 1 is static:
    const
      compileruseposix* = 1  ## Generated based on /usr/include/features.h:327:10
  else:
    let compileruseposix* = 1 ## Generated based on /usr/include/features.h:327:10
else:
  static :
    hint("Declaration of " & "compileruseposix" &
        " already exists, not redeclaring")
when not declared(compileruseposix2):
  when 1 is static:
    const
      compileruseposix2* = 1 ## Generated based on /usr/include/features.h:331:10
  else:
    let compileruseposix2* = 1 ## Generated based on /usr/include/features.h:331:10
else:
  static :
    hint("Declaration of " & "compileruseposix2" &
        " already exists, not redeclaring")
when not declared(compileruseposix199309):
  when 1 is static:
    const
      compileruseposix199309* = 1 ## Generated based on /usr/include/features.h:335:10
  else:
    let compileruseposix199309* = 1 ## Generated based on /usr/include/features.h:335:10
else:
  static :
    hint("Declaration of " & "compileruseposix199309" &
        " already exists, not redeclaring")
when not declared(compileruseposix199506):
  when 1 is static:
    const
      compileruseposix199506* = 1 ## Generated based on /usr/include/features.h:339:10
  else:
    let compileruseposix199506* = 1 ## Generated based on /usr/include/features.h:339:10
else:
  static :
    hint("Declaration of " & "compileruseposix199506" &
        " already exists, not redeclaring")
when not declared(compilerusexopen2k):
  when 1 is static:
    const
      compilerusexopen2k* = 1 ## Generated based on /usr/include/features.h:343:10
  else:
    let compilerusexopen2k* = 1 ## Generated based on /usr/include/features.h:343:10
else:
  static :
    hint("Declaration of " & "compilerusexopen2k" &
        " already exists, not redeclaring")
when not declared(compilerusexopen2k8):
  when 1 is static:
    const
      compilerusexopen2k8* = 1 ## Generated based on /usr/include/features.h:351:10
  else:
    let compilerusexopen2k8* = 1 ## Generated based on /usr/include/features.h:351:10
else:
  static :
    hint("Declaration of " & "compilerusexopen2k8" &
        " already exists, not redeclaring")
when not declared(internalatfilesource):
  when 1 is static:
    const
      internalatfilesource* = 1 ## Generated based on /usr/include/features.h:353:10
  else:
    let internalatfilesource* = 1 ## Generated based on /usr/include/features.h:353:10
else:
  static :
    hint("Declaration of " & "internalatfilesource" &
        " already exists, not redeclaring")
when not declared(compilerwordsize):
  when 64 is static:
    const
      compilerwordsize* = 64 ## Generated based on /usr/include/bits/wordsize.h:4:10
  else:
    let compilerwordsize* = 64 ## Generated based on /usr/include/bits/wordsize.h:4:10
else:
  static :
    hint("Declaration of " & "compilerwordsize" &
        " already exists, not redeclaring")
when not declared(compilerwordsizetime64compat32):
  when 1 is static:
    const
      compilerwordsizetime64compat32* = 1 ## Generated based on /usr/include/bits/wordsize.h:12:10
  else:
    let compilerwordsizetime64compat32* = 1 ## Generated based on /usr/include/bits/wordsize.h:12:10
else:
  static :
    hint("Declaration of " & "compilerwordsizetime64compat32" &
        " already exists, not redeclaring")
when not declared(compilersyscallwordsize):
  when 64 is static:
    const
      compilersyscallwordsize* = 64 ## Generated based on /usr/include/bits/wordsize.h:14:10
  else:
    let compilersyscallwordsize* = 64 ## Generated based on /usr/include/bits/wordsize.h:14:10
else:
  static :
    hint("Declaration of " & "compilersyscallwordsize" &
        " already exists, not redeclaring")
when not declared(compilertimesize):
  when compilerwordsize is typedesc:
    type
      compilertimesize* = compilerwordsize ## Generated based on /usr/include/bits/timesize.h:26:10
  else:
    when compilerwordsize is static:
      const
        compilertimesize* = compilerwordsize ## Generated based on /usr/include/bits/timesize.h:26:10
    else:
      let compilertimesize* = compilerwordsize ## Generated based on /usr/include/bits/timesize.h:26:10
else:
  static :
    hint("Declaration of " & "compilertimesize" &
        " already exists, not redeclaring")
when not declared(compilerusemisc):
  when 1 is static:
    const
      compilerusemisc* = 1   ## Generated based on /usr/include/features.h:397:10
  else:
    let compilerusemisc* = 1 ## Generated based on /usr/include/features.h:397:10
else:
  static :
    hint("Declaration of " & "compilerusemisc" &
        " already exists, not redeclaring")
when not declared(compileruseatfile):
  when 1 is static:
    const
      compileruseatfile* = 1 ## Generated based on /usr/include/features.h:401:10
  else:
    let compileruseatfile* = 1 ## Generated based on /usr/include/features.h:401:10
else:
  static :
    hint("Declaration of " & "compileruseatfile" &
        " already exists, not redeclaring")
when not declared(compilerusefortifylevel):
  when 0 is static:
    const
      compilerusefortifylevel* = 0 ## Generated based on /usr/include/features.h:434:10
  else:
    let compilerusefortifylevel* = 0 ## Generated based on /usr/include/features.h:434:10
else:
  static :
    hint("Declaration of " & "compilerusefortifylevel" &
        " already exists, not redeclaring")
when not declared(compilerglibcusedeprecatedgets):
  when 0 is static:
    const
      compilerglibcusedeprecatedgets* = 0 ## Generated based on /usr/include/features.h:442:10
  else:
    let compilerglibcusedeprecatedgets* = 0 ## Generated based on /usr/include/features.h:442:10
else:
  static :
    hint("Declaration of " & "compilerglibcusedeprecatedgets" &
        " already exists, not redeclaring")
when not declared(compilerglibcusedeprecatedscanf):
  when 0 is static:
    const
      compilerglibcusedeprecatedscanf* = 0 ## Generated based on /usr/include/features.h:465:10
  else:
    let compilerglibcusedeprecatedscanf* = 0 ## Generated based on /usr/include/features.h:465:10
else:
  static :
    hint("Declaration of " & "compilerglibcusedeprecatedscanf" &
        " already exists, not redeclaring")
when not declared(compilerglibcusec2xstrtol):
  when 0 is static:
    const
      compilerglibcusec2xstrtol* = 0 ## Generated based on /usr/include/features.h:476:10
  else:
    let compilerglibcusec2xstrtol* = 0 ## Generated based on /usr/include/features.h:476:10
else:
  static :
    hint("Declaration of " & "compilerglibcusec2xstrtol" &
        " already exists, not redeclaring")
when not declared(internalstdcpredefh):
  when 1 is static:
    const
      internalstdcpredefh* = 1 ## Generated based on /usr/include/stdc-predef.h:19:9
  else:
    let internalstdcpredefh* = 1 ## Generated based on /usr/include/stdc-predef.h:19:9
else:
  static :
    hint("Declaration of " & "internalstdcpredefh" &
        " already exists, not redeclaring")
when not declared(compilerstdciec559):
  when 1 is static:
    const
      compilerstdciec559* = 1 ## Generated based on /usr/include/stdc-predef.h:42:10
  else:
    let compilerstdciec559* = 1 ## Generated based on /usr/include/stdc-predef.h:42:10
else:
  static :
    hint("Declaration of " & "compilerstdciec559" &
        " already exists, not redeclaring")
when not declared(compilerstdciec60559bfp):
  when cast[clong](201404'i64) is static:
    const
      compilerstdciec60559bfp* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:43:10
  else:
    let compilerstdciec60559bfp* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:43:10
else:
  static :
    hint("Declaration of " & "compilerstdciec60559bfp" &
        " already exists, not redeclaring")
when not declared(compilerstdciec559complex):
  when 1 is static:
    const
      compilerstdciec559complex* = 1 ## Generated based on /usr/include/stdc-predef.h:52:10
  else:
    let compilerstdciec559complex* = 1 ## Generated based on /usr/include/stdc-predef.h:52:10
else:
  static :
    hint("Declaration of " & "compilerstdciec559complex" &
        " already exists, not redeclaring")
when not declared(compilerstdciec60559complex):
  when cast[clong](201404'i64) is static:
    const
      compilerstdciec60559complex* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:53:10
  else:
    let compilerstdciec60559complex* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:53:10
else:
  static :
    hint("Declaration of " & "compilerstdciec60559complex" &
        " already exists, not redeclaring")
when not declared(compilerstdciso10646):
  when cast[clong](201706'i64) is static:
    const
      compilerstdciso10646* = cast[clong](201706'i64) ## Generated based on /usr/include/stdc-predef.h:62:9
  else:
    let compilerstdciso10646* = cast[clong](201706'i64) ## Generated based on /usr/include/stdc-predef.h:62:9
else:
  static :
    hint("Declaration of " & "compilerstdciso10646" &
        " already exists, not redeclaring")
when not declared(compilergnulibrary):
  when 6 is static:
    const
      compilergnulibrary* = 6 ## Generated based on /usr/include/features.h:490:9
  else:
    let compilergnulibrary* = 6 ## Generated based on /usr/include/features.h:490:9
else:
  static :
    hint("Declaration of " & "compilergnulibrary" &
        " already exists, not redeclaring")
when not declared(compilerglibc):
  when 2 is static:
    const
      compilerglibc* = 2     ## Generated based on /usr/include/features.h:494:9
  else:
    let compilerglibc* = 2   ## Generated based on /usr/include/features.h:494:9
else:
  static :
    hint("Declaration of " & "compilerglibc" &
        " already exists, not redeclaring")
when not declared(compilerglibcminor):
  when 39 is static:
    const
      compilerglibcminor* = 39 ## Generated based on /usr/include/features.h:495:9
  else:
    let compilerglibcminor* = 39 ## Generated based on /usr/include/features.h:495:9
else:
  static :
    hint("Declaration of " & "compilerglibcminor" &
        " already exists, not redeclaring")
when not declared(internalsyscdefsh):
  when 1 is static:
    const
      internalsyscdefsh* = 1 ## Generated based on /usr/include/sys/cdefs.h:20:9
  else:
    let internalsyscdefsh* = 1 ## Generated based on /usr/include/sys/cdefs.h:20:9
else:
  static :
    hint("Declaration of " & "internalsyscdefsh" &
        " already exists, not redeclaring")
when not declared(compilerglibcc99flexarravailable):
  when 1 is static:
    const
      compilerglibcc99flexarravailable* = 1 ## Generated based on /usr/include/sys/cdefs.h:226:10
  else:
    let compilerglibcc99flexarravailable* = 1 ## Generated based on /usr/include/sys/cdefs.h:226:10
else:
  static :
    hint("Declaration of " & "compilerglibcc99flexarravailable" &
        " already exists, not redeclaring")
when not declared(compilerldoubleredirectstofloat128abi):
  when 0 is static:
    const
      compilerldoubleredirectstofloat128abi* = 0 ## Generated based on /usr/include/bits/long-double.h:21:9
  else:
    let compilerldoubleredirectstofloat128abi* = 0 ## Generated based on /usr/include/bits/long-double.h:21:9
else:
  static :
    hint("Declaration of " & "compilerldoubleredirectstofloat128abi" &
        " already exists, not redeclaring")
when not declared(compilerhavegenericselection):
  when 1 is static:
    const
      compilerhavegenericselection* = 1 ## Generated based on /usr/include/sys/cdefs.h:672:10
  else:
    let compilerhavegenericselection* = 1 ## Generated based on /usr/include/sys/cdefs.h:672:10
else:
  static :
    hint("Declaration of " & "compilerhavegenericselection" &
        " already exists, not redeclaring")
when not declared(compilerglibcuselibext2):
  when 0 is static:
    const
      compilerglibcuselibext2* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:42:10
  else:
    let compilerglibcuselibext2* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:42:10
else:
  static :
    hint("Declaration of " & "compilerglibcuselibext2" &
        " already exists, not redeclaring")
when not declared(compilerglibcuseiec60559bfpext):
  when 0 is static:
    const
      compilerglibcuseiec60559bfpext* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:71:10
  else:
    let compilerglibcuseiec60559bfpext* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:71:10
else:
  static :
    hint("Declaration of " & "compilerglibcuseiec60559bfpext" &
        " already exists, not redeclaring")
when not declared(compilerglibcuseiec60559bfpextc2x):
  when 0 is static:
    const
      compilerglibcuseiec60559bfpextc2x* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:77:10
  else:
    let compilerglibcuseiec60559bfpextc2x* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:77:10
else:
  static :
    hint("Declaration of " & "compilerglibcuseiec60559bfpextc2x" &
        " already exists, not redeclaring")
when not declared(compilerglibcuseiec60559ext):
  when 0 is static:
    const
      compilerglibcuseiec60559ext* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:83:10
  else:
    let compilerglibcuseiec60559ext* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:83:10
else:
  static :
    hint("Declaration of " & "compilerglibcuseiec60559ext" &
        " already exists, not redeclaring")
when not declared(compilerglibcuseiec60559funcsext):
  when 0 is static:
    const
      compilerglibcuseiec60559funcsext* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:94:10
  else:
    let compilerglibcuseiec60559funcsext* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:94:10
else:
  static :
    hint("Declaration of " & "compilerglibcuseiec60559funcsext" &
        " already exists, not redeclaring")
when not declared(compilerglibcuseiec60559funcsextc2x):
  when 0 is static:
    const
      compilerglibcuseiec60559funcsextc2x* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:100:10
  else:
    let compilerglibcuseiec60559funcsextc2x* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:100:10
else:
  static :
    hint("Declaration of " & "compilerglibcuseiec60559funcsextc2x" &
        " already exists, not redeclaring")
when not declared(compilerglibcuseiec60559typesext):
  when 0 is static:
    const
      compilerglibcuseiec60559typesext* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:109:10
  else:
    let compilerglibcuseiec60559typesext* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:109:10
else:
  static :
    hint("Declaration of " & "compilerglibcuseiec60559typesext" &
        " already exists, not redeclaring")
when not declared(internalbitstypesh):
  when 1 is static:
    const
      internalbitstypesh* = 1 ## Generated based on /usr/include/bits/types.h:24:9
  else:
    let internalbitstypesh* = 1 ## Generated based on /usr/include/bits/types.h:24:9
else:
  static :
    hint("Declaration of " & "internalbitstypesh" &
        " already exists, not redeclaring")
when not declared(compilers32type):
  when int is typedesc:
    type
      compilers32type* = int ## Generated based on /usr/include/bits/types.h:111:9
  else:
    when int is static:
      const
        compilers32type* = int ## Generated based on /usr/include/bits/types.h:111:9
    else:
      let compilers32type* = int ## Generated based on /usr/include/bits/types.h:111:9
else:
  static :
    hint("Declaration of " & "compilers32type" &
        " already exists, not redeclaring")
when not declared(compilerslong32type):
  when int is typedesc:
    type
      compilerslong32type* = int ## Generated based on /usr/include/bits/types.h:132:10
  else:
    when int is static:
      const
        compilerslong32type* = int ## Generated based on /usr/include/bits/types.h:132:10
    else:
      let compilerslong32type* = int ## Generated based on /usr/include/bits/types.h:132:10
else:
  static :
    hint("Declaration of " & "compilerslong32type" &
        " already exists, not redeclaring")
when not declared(compilerstdtype):
  when typedef is typedesc:
    type
      compilerstdtype* = typedef ## Generated based on /usr/include/bits/types.h:137:10
  else:
    when typedef is static:
      const
        compilerstdtype* = typedef ## Generated based on /usr/include/bits/types.h:137:10
    else:
      let compilerstdtype* = typedef ## Generated based on /usr/include/bits/types.h:137:10
else:
  static :
    hint("Declaration of " & "compilerstdtype" &
        " already exists, not redeclaring")
when not declared(internalbitstypesizesh):
  when 1 is static:
    const
      internalbitstypesizesh* = 1 ## Generated based on /usr/include/bits/typesizes.h:24:9
  else:
    let internalbitstypesizesh* = 1 ## Generated based on /usr/include/bits/typesizes.h:24:9
else:
  static :
    hint("Declaration of " & "internalbitstypesizesh" &
        " already exists, not redeclaring")
when not declared(compilerofftmatchesoff64t):
  when 1 is static:
    const
      compilerofftmatchesoff64t* = 1 ## Generated based on /usr/include/bits/typesizes.h:81:10
  else:
    let compilerofftmatchesoff64t* = 1 ## Generated based on /usr/include/bits/typesizes.h:81:10
else:
  static :
    hint("Declaration of " & "compilerofftmatchesoff64t" &
        " already exists, not redeclaring")
when not declared(compilerinotmatchesino64t):
  when 1 is static:
    const
      compilerinotmatchesino64t* = 1 ## Generated based on /usr/include/bits/typesizes.h:84:10
  else:
    let compilerinotmatchesino64t* = 1 ## Generated based on /usr/include/bits/typesizes.h:84:10
else:
  static :
    hint("Declaration of " & "compilerinotmatchesino64t" &
        " already exists, not redeclaring")
when not declared(compilerrlimtmatchesrlim64t):
  when 1 is static:
    const
      compilerrlimtmatchesrlim64t* = 1 ## Generated based on /usr/include/bits/typesizes.h:87:10
  else:
    let compilerrlimtmatchesrlim64t* = 1 ## Generated based on /usr/include/bits/typesizes.h:87:10
else:
  static :
    hint("Declaration of " & "compilerrlimtmatchesrlim64t" &
        " already exists, not redeclaring")
when not declared(compilerstatfsmatchesstatfs64):
  when 1 is static:
    const
      compilerstatfsmatchesstatfs64* = 1 ## Generated based on /usr/include/bits/typesizes.h:90:10
  else:
    let compilerstatfsmatchesstatfs64* = 1 ## Generated based on /usr/include/bits/typesizes.h:90:10
else:
  static :
    hint("Declaration of " & "compilerstatfsmatchesstatfs64" &
        " already exists, not redeclaring")
when not declared(compilerkerneloldtimevalmatchestimeval64):
  when 1 is static:
    const
      compilerkerneloldtimevalmatchestimeval64* = 1 ## Generated based on /usr/include/bits/typesizes.h:93:10
  else:
    let compilerkerneloldtimevalmatchestimeval64* = 1 ## Generated based on /usr/include/bits/typesizes.h:93:10
else:
  static :
    hint("Declaration of " & "compilerkerneloldtimevalmatchestimeval64" &
        " already exists, not redeclaring")
when not declared(compilerfdsetsize):
  when 1024 is static:
    const
      compilerfdsetsize* = 1024 ## Generated based on /usr/include/bits/typesizes.h:103:9
  else:
    let compilerfdsetsize* = 1024 ## Generated based on /usr/include/bits/typesizes.h:103:9
else:
  static :
    hint("Declaration of " & "compilerfdsetsize" &
        " already exists, not redeclaring")
when not declared(internalbitstime64h):
  when 1 is static:
    const
      internalbitstime64h* = 1 ## Generated based on /usr/include/bits/time64.h:24:9
  else:
    let internalbitstime64h* = 1 ## Generated based on /usr/include/bits/time64.h:24:9
else:
  static :
    hint("Declaration of " & "internalbitstime64h" &
        " already exists, not redeclaring")
when not declared(internalbitswcharh):
  when 1 is static:
    const
      internalbitswcharh* = 1 ## Generated based on /usr/include/bits/wchar.h:20:9
  else:
    let internalbitswcharh* = 1 ## Generated based on /usr/include/bits/wchar.h:20:9
else:
  static :
    hint("Declaration of " & "internalbitswcharh" &
        " already exists, not redeclaring")
when not declared(internalbitsstdintintnh):
  when 1 is static:
    const
      internalbitsstdintintnh* = 1 ## Generated based on /usr/include/bits/stdint-intn.h:20:9
  else:
    let internalbitsstdintintnh* = 1 ## Generated based on /usr/include/bits/stdint-intn.h:20:9
else:
  static :
    hint("Declaration of " & "internalbitsstdintintnh" &
        " already exists, not redeclaring")
when not declared(internalbitsstdintuintnh):
  when 1 is static:
    const
      internalbitsstdintuintnh* = 1 ## Generated based on /usr/include/bits/stdint-uintn.h:20:9
  else:
    let internalbitsstdintuintnh* = 1 ## Generated based on /usr/include/bits/stdint-uintn.h:20:9
else:
  static :
    hint("Declaration of " & "internalbitsstdintuintnh" &
        " already exists, not redeclaring")
when not declared(internalbitsstdintleasth):
  when 1 is static:
    const
      internalbitsstdintleasth* = 1 ## Generated based on /usr/include/bits/stdint-least.h:20:9
  else:
    let internalbitsstdintleasth* = 1 ## Generated based on /usr/include/bits/stdint-least.h:20:9
else:
  static :
    hint("Declaration of " & "internalbitsstdintleasth" &
        " already exists, not redeclaring")
when not declared(Int8min):
  when -128 is static:
    const
      Int8min* = -128        ## Generated based on /usr/include/stdint.h:105:10
  else:
    let Int8min* = -128      ## Generated based on /usr/include/stdint.h:105:10
else:
  static :
    hint("Declaration of " & "Int8min" & " already exists, not redeclaring")
when not declared(Int8max):
  when 127 is static:
    const
      Int8max* = 127         ## Generated based on /usr/include/stdint.h:110:10
  else:
    let Int8max* = 127       ## Generated based on /usr/include/stdint.h:110:10
else:
  static :
    hint("Declaration of " & "Int8max" & " already exists, not redeclaring")
when not declared(Int16max):
  when 32767 is static:
    const
      Int16max* = 32767      ## Generated based on /usr/include/stdint.h:111:10
  else:
    let Int16max* = 32767    ## Generated based on /usr/include/stdint.h:111:10
else:
  static :
    hint("Declaration of " & "Int16max" & " already exists, not redeclaring")
when not declared(Int32max):
  when 2147483647 is static:
    const
      Int32max* = 2147483647 ## Generated based on /usr/include/stdint.h:112:10
  else:
    let Int32max* = 2147483647 ## Generated based on /usr/include/stdint.h:112:10
else:
  static :
    hint("Declaration of " & "Int32max" & " already exists, not redeclaring")
when not declared(Uint8max):
  when 255 is static:
    const
      Uint8max* = 255        ## Generated based on /usr/include/stdint.h:116:10
  else:
    let Uint8max* = 255      ## Generated based on /usr/include/stdint.h:116:10
else:
  static :
    hint("Declaration of " & "Uint8max" & " already exists, not redeclaring")
when not declared(Uint16max):
  when 65535 is static:
    const
      Uint16max* = 65535     ## Generated based on /usr/include/stdint.h:117:10
  else:
    let Uint16max* = 65535   ## Generated based on /usr/include/stdint.h:117:10
else:
  static :
    hint("Declaration of " & "Uint16max" & " already exists, not redeclaring")
when not declared(Uint32max):
  when cast[cuint](4294967295'i64) is static:
    const
      Uint32max* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
  else:
    let Uint32max* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
else:
  static :
    hint("Declaration of " & "Uint32max" & " already exists, not redeclaring")
when not declared(Intleast8min):
  when -128 is static:
    const
      Intleast8min* = -128   ## Generated based on /usr/include/stdint.h:123:10
  else:
    let Intleast8min* = -128 ## Generated based on /usr/include/stdint.h:123:10
else:
  static :
    hint("Declaration of " & "Intleast8min" & " already exists, not redeclaring")
when not declared(Intleast8max):
  when 127 is static:
    const
      Intleast8max* = 127    ## Generated based on /usr/include/stdint.h:128:10
  else:
    let Intleast8max* = 127  ## Generated based on /usr/include/stdint.h:128:10
else:
  static :
    hint("Declaration of " & "Intleast8max" & " already exists, not redeclaring")
when not declared(Intleast16max):
  when 32767 is static:
    const
      Intleast16max* = 32767 ## Generated based on /usr/include/stdint.h:129:10
  else:
    let Intleast16max* = 32767 ## Generated based on /usr/include/stdint.h:129:10
else:
  static :
    hint("Declaration of " & "Intleast16max" &
        " already exists, not redeclaring")
when not declared(Intleast32max):
  when 2147483647 is static:
    const
      Intleast32max* = 2147483647 ## Generated based on /usr/include/stdint.h:130:10
  else:
    let Intleast32max* = 2147483647 ## Generated based on /usr/include/stdint.h:130:10
else:
  static :
    hint("Declaration of " & "Intleast32max" &
        " already exists, not redeclaring")
when not declared(Uintleast8max):
  when 255 is static:
    const
      Uintleast8max* = 255   ## Generated based on /usr/include/stdint.h:134:10
  else:
    let Uintleast8max* = 255 ## Generated based on /usr/include/stdint.h:134:10
else:
  static :
    hint("Declaration of " & "Uintleast8max" &
        " already exists, not redeclaring")
when not declared(Uintleast16max):
  when 65535 is static:
    const
      Uintleast16max* = 65535 ## Generated based on /usr/include/stdint.h:135:10
  else:
    let Uintleast16max* = 65535 ## Generated based on /usr/include/stdint.h:135:10
else:
  static :
    hint("Declaration of " & "Uintleast16max" &
        " already exists, not redeclaring")
when not declared(Uintleast32max):
  when cast[cuint](4294967295'i64) is static:
    const
      Uintleast32max* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:136:10
  else:
    let Uintleast32max* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:136:10
else:
  static :
    hint("Declaration of " & "Uintleast32max" &
        " already exists, not redeclaring")
when not declared(Intfast8min):
  when -128 is static:
    const
      Intfast8min* = -128    ## Generated based on /usr/include/stdint.h:141:10
  else:
    let Intfast8min* = -128  ## Generated based on /usr/include/stdint.h:141:10
else:
  static :
    hint("Declaration of " & "Intfast8min" & " already exists, not redeclaring")
when not declared(Intfast8max):
  when 127 is static:
    const
      Intfast8max* = 127     ## Generated based on /usr/include/stdint.h:151:10
  else:
    let Intfast8max* = 127   ## Generated based on /usr/include/stdint.h:151:10
else:
  static :
    hint("Declaration of " & "Intfast8max" & " already exists, not redeclaring")
when not declared(Intfast16max):
  when cast[clong](9223372036854775807'i64) is static:
    const
      Intfast16max* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:153:11
  else:
    let Intfast16max* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:153:11
else:
  static :
    hint("Declaration of " & "Intfast16max" & " already exists, not redeclaring")
when not declared(Intfast32max):
  when cast[clong](9223372036854775807'i64) is static:
    const
      Intfast32max* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:154:11
  else:
    let Intfast32max* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:154:11
else:
  static :
    hint("Declaration of " & "Intfast32max" & " already exists, not redeclaring")
when not declared(Uintfast8max):
  when 255 is static:
    const
      Uintfast8max* = 255    ## Generated based on /usr/include/stdint.h:162:10
  else:
    let Uintfast8max* = 255  ## Generated based on /usr/include/stdint.h:162:10
else:
  static :
    hint("Declaration of " & "Uintfast8max" & " already exists, not redeclaring")
when not declared(Uintfast16max):
  when cast[culong](18446744073709551615'u) is static:
    const
      Uintfast16max* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:164:11
  else:
    let Uintfast16max* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:164:11
else:
  static :
    hint("Declaration of " & "Uintfast16max" &
        " already exists, not redeclaring")
when not declared(Uintfast32max):
  when cast[culong](18446744073709551615'u) is static:
    const
      Uintfast32max* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:165:11
  else:
    let Uintfast32max* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:165:11
else:
  static :
    hint("Declaration of " & "Uintfast32max" &
        " already exists, not redeclaring")
when not declared(Intptrmax):
  when cast[clong](9223372036854775807'i64) is static:
    const
      Intptrmax* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:176:11
  else:
    let Intptrmax* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:176:11
else:
  static :
    hint("Declaration of " & "Intptrmax" & " already exists, not redeclaring")
when not declared(Uintptrmax):
  when cast[culong](18446744073709551615'u) is static:
    const
      Uintptrmax* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:177:11
  else:
    let Uintptrmax* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:177:11
else:
  static :
    hint("Declaration of " & "Uintptrmax" & " already exists, not redeclaring")
when not declared(Ptrdiffmax):
  when cast[clong](9223372036854775807'i64) is static:
    const
      Ptrdiffmax* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:199:11
  else:
    let Ptrdiffmax* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:199:11
else:
  static :
    hint("Declaration of " & "Ptrdiffmax" & " already exists, not redeclaring")
when not declared(Sigatomicmax):
  when 2147483647 is static:
    const
      Sigatomicmax* = 2147483647 ## Generated based on /usr/include/stdint.h:212:10
  else:
    let Sigatomicmax* = 2147483647 ## Generated based on /usr/include/stdint.h:212:10
else:
  static :
    hint("Declaration of " & "Sigatomicmax" & " already exists, not redeclaring")
when not declared(Sizemax):
  when cast[culong](18446744073709551615'u) is static:
    const
      Sizemax* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
  else:
    let Sizemax* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
else:
  static :
    hint("Declaration of " & "Sizemax" & " already exists, not redeclaring")
when not declared(Wintmin):
  when cast[cuint](0'i64) is static:
    const
      Wintmin* = cast[cuint](0'i64) ## Generated based on /usr/include/stdint.h:233:10
  else:
    let Wintmin* = cast[cuint](0'i64) ## Generated based on /usr/include/stdint.h:233:10
else:
  static :
    hint("Declaration of " & "Wintmin" & " already exists, not redeclaring")
when not declared(Wintmax):
  when cast[cuint](4294967295'i64) is static:
    const
      Wintmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:234:10
  else:
    let Wintmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:234:10
else:
  static :
    hint("Declaration of " & "Wintmax" & " already exists, not redeclaring")
when not declared(internallibclimitsh):
  when 1 is static:
    const
      internallibclimitsh* = 1 ## Generated based on /usr/include/limits.h:23:9
  else:
    let internallibclimitsh* = 1 ## Generated based on /usr/include/limits.h:23:9
else:
  static :
    hint("Declaration of " & "internallibclimitsh" &
        " already exists, not redeclaring")
when not declared(Mblenmax):
  when 16 is static:
    const
      Mblenmax* = 16         ## Generated based on /usr/include/limits.h:32:9
  else:
    let Mblenmax* = 16       ## Generated based on /usr/include/limits.h:32:9
else:
  static :
    hint("Declaration of " & "Mblenmax" & " already exists, not redeclaring")
when not declared(internalbitsposix1limh):
  when 1 is static:
    const
      internalbitsposix1limh* = 1 ## Generated based on /usr/include/bits/posix1_lim.h:25:9
  else:
    let internalbitsposix1limh* = 1 ## Generated based on /usr/include/bits/posix1_lim.h:25:9
else:
  static :
    hint("Declaration of " & "internalbitsposix1limh" &
        " already exists, not redeclaring")
when not declared(internalposixaiolistiomax):
  when 2 is static:
    const
      internalposixaiolistiomax* = 2 ## Generated based on /usr/include/bits/posix1_lim.h:32:9
  else:
    let internalposixaiolistiomax* = 2 ## Generated based on /usr/include/bits/posix1_lim.h:32:9
else:
  static :
    hint("Declaration of " & "internalposixaiolistiomax" &
        " already exists, not redeclaring")
when not declared(internalposixaiomax):
  when 1 is static:
    const
      internalposixaiomax* = 1 ## Generated based on /usr/include/bits/posix1_lim.h:35:9
  else:
    let internalposixaiomax* = 1 ## Generated based on /usr/include/bits/posix1_lim.h:35:9
else:
  static :
    hint("Declaration of " & "internalposixaiomax" &
        " already exists, not redeclaring")
when not declared(internalposixargmax):
  when 4096 is static:
    const
      internalposixargmax* = 4096 ## Generated based on /usr/include/bits/posix1_lim.h:38:9
  else:
    let internalposixargmax* = 4096 ## Generated based on /usr/include/bits/posix1_lim.h:38:9
else:
  static :
    hint("Declaration of " & "internalposixargmax" &
        " already exists, not redeclaring")
when not declared(internalposixchildmax):
  when 25 is static:
    const
      internalposixchildmax* = 25 ## Generated based on /usr/include/bits/posix1_lim.h:42:10
  else:
    let internalposixchildmax* = 25 ## Generated based on /usr/include/bits/posix1_lim.h:42:10
else:
  static :
    hint("Declaration of " & "internalposixchildmax" &
        " already exists, not redeclaring")
when not declared(internalposixdelaytimermax):
  when 32 is static:
    const
      internalposixdelaytimermax* = 32 ## Generated based on /usr/include/bits/posix1_lim.h:48:9
  else:
    let internalposixdelaytimermax* = 32 ## Generated based on /usr/include/bits/posix1_lim.h:48:9
else:
  static :
    hint("Declaration of " & "internalposixdelaytimermax" &
        " already exists, not redeclaring")
when not declared(internalposixhostnamemax):
  when 255 is static:
    const
      internalposixhostnamemax* = 255 ## Generated based on /usr/include/bits/posix1_lim.h:52:9
  else:
    let internalposixhostnamemax* = 255 ## Generated based on /usr/include/bits/posix1_lim.h:52:9
else:
  static :
    hint("Declaration of " & "internalposixhostnamemax" &
        " already exists, not redeclaring")
when not declared(internalposixlinkmax):
  when 8 is static:
    const
      internalposixlinkmax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:55:9
  else:
    let internalposixlinkmax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:55:9
else:
  static :
    hint("Declaration of " & "internalposixlinkmax" &
        " already exists, not redeclaring")
when not declared(internalposixloginnamemax):
  when 9 is static:
    const
      internalposixloginnamemax* = 9 ## Generated based on /usr/include/bits/posix1_lim.h:58:9
  else:
    let internalposixloginnamemax* = 9 ## Generated based on /usr/include/bits/posix1_lim.h:58:9
else:
  static :
    hint("Declaration of " & "internalposixloginnamemax" &
        " already exists, not redeclaring")
when not declared(internalposixmaxcanon):
  when 255 is static:
    const
      internalposixmaxcanon* = 255 ## Generated based on /usr/include/bits/posix1_lim.h:61:9
  else:
    let internalposixmaxcanon* = 255 ## Generated based on /usr/include/bits/posix1_lim.h:61:9
else:
  static :
    hint("Declaration of " & "internalposixmaxcanon" &
        " already exists, not redeclaring")
when not declared(internalposixmaxinput):
  when 255 is static:
    const
      internalposixmaxinput* = 255 ## Generated based on /usr/include/bits/posix1_lim.h:65:9
  else:
    let internalposixmaxinput* = 255 ## Generated based on /usr/include/bits/posix1_lim.h:65:9
else:
  static :
    hint("Declaration of " & "internalposixmaxinput" &
        " already exists, not redeclaring")
when not declared(internalposixmqopenmax):
  when 8 is static:
    const
      internalposixmqopenmax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:68:9
  else:
    let internalposixmqopenmax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:68:9
else:
  static :
    hint("Declaration of " & "internalposixmqopenmax" &
        " already exists, not redeclaring")
when not declared(internalposixmqpriomax):
  when 32 is static:
    const
      internalposixmqpriomax* = 32 ## Generated based on /usr/include/bits/posix1_lim.h:71:9
  else:
    let internalposixmqpriomax* = 32 ## Generated based on /usr/include/bits/posix1_lim.h:71:9
else:
  static :
    hint("Declaration of " & "internalposixmqpriomax" &
        " already exists, not redeclaring")
when not declared(internalposixnamemax):
  when 14 is static:
    const
      internalposixnamemax* = 14 ## Generated based on /usr/include/bits/posix1_lim.h:74:9
  else:
    let internalposixnamemax* = 14 ## Generated based on /usr/include/bits/posix1_lim.h:74:9
else:
  static :
    hint("Declaration of " & "internalposixnamemax" &
        " already exists, not redeclaring")
when not declared(internalposixngroupsmax):
  when 8 is static:
    const
      internalposixngroupsmax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:78:10
  else:
    let internalposixngroupsmax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:78:10
else:
  static :
    hint("Declaration of " & "internalposixngroupsmax" &
        " already exists, not redeclaring")
when not declared(internalposixopenmax):
  when 20 is static:
    const
      internalposixopenmax* = 20 ## Generated based on /usr/include/bits/posix1_lim.h:85:10
  else:
    let internalposixopenmax* = 20 ## Generated based on /usr/include/bits/posix1_lim.h:85:10
else:
  static :
    hint("Declaration of " & "internalposixopenmax" &
        " already exists, not redeclaring")
when not declared(internalposixpathmax):
  when 256 is static:
    const
      internalposixpathmax* = 256 ## Generated based on /usr/include/bits/posix1_lim.h:97:9
  else:
    let internalposixpathmax* = 256 ## Generated based on /usr/include/bits/posix1_lim.h:97:9
else:
  static :
    hint("Declaration of " & "internalposixpathmax" &
        " already exists, not redeclaring")
when not declared(internalposixpipebuf):
  when 512 is static:
    const
      internalposixpipebuf* = 512 ## Generated based on /usr/include/bits/posix1_lim.h:100:9
  else:
    let internalposixpipebuf* = 512 ## Generated based on /usr/include/bits/posix1_lim.h:100:9
else:
  static :
    hint("Declaration of " & "internalposixpipebuf" &
        " already exists, not redeclaring")
when not declared(internalposixredupmax):
  when 255 is static:
    const
      internalposixredupmax* = 255 ## Generated based on /usr/include/bits/posix1_lim.h:104:9
  else:
    let internalposixredupmax* = 255 ## Generated based on /usr/include/bits/posix1_lim.h:104:9
else:
  static :
    hint("Declaration of " & "internalposixredupmax" &
        " already exists, not redeclaring")
when not declared(internalposixrtsigmax):
  when 8 is static:
    const
      internalposixrtsigmax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:107:9
  else:
    let internalposixrtsigmax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:107:9
else:
  static :
    hint("Declaration of " & "internalposixrtsigmax" &
        " already exists, not redeclaring")
when not declared(internalposixsemnsemsmax):
  when 256 is static:
    const
      internalposixsemnsemsmax* = 256 ## Generated based on /usr/include/bits/posix1_lim.h:110:9
  else:
    let internalposixsemnsemsmax* = 256 ## Generated based on /usr/include/bits/posix1_lim.h:110:9
else:
  static :
    hint("Declaration of " & "internalposixsemnsemsmax" &
        " already exists, not redeclaring")
when not declared(internalposixsemvaluemax):
  when 32767 is static:
    const
      internalposixsemvaluemax* = 32767 ## Generated based on /usr/include/bits/posix1_lim.h:113:9
  else:
    let internalposixsemvaluemax* = 32767 ## Generated based on /usr/include/bits/posix1_lim.h:113:9
else:
  static :
    hint("Declaration of " & "internalposixsemvaluemax" &
        " already exists, not redeclaring")
when not declared(internalposixsigqueuemax):
  when 32 is static:
    const
      internalposixsigqueuemax* = 32 ## Generated based on /usr/include/bits/posix1_lim.h:116:9
  else:
    let internalposixsigqueuemax* = 32 ## Generated based on /usr/include/bits/posix1_lim.h:116:9
else:
  static :
    hint("Declaration of " & "internalposixsigqueuemax" &
        " already exists, not redeclaring")
when not declared(internalposixssizemax):
  when 32767 is static:
    const
      internalposixssizemax* = 32767 ## Generated based on /usr/include/bits/posix1_lim.h:119:9
  else:
    let internalposixssizemax* = 32767 ## Generated based on /usr/include/bits/posix1_lim.h:119:9
else:
  static :
    hint("Declaration of " & "internalposixssizemax" &
        " already exists, not redeclaring")
when not declared(internalposixstreammax):
  when 8 is static:
    const
      internalposixstreammax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:122:9
  else:
    let internalposixstreammax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:122:9
else:
  static :
    hint("Declaration of " & "internalposixstreammax" &
        " already exists, not redeclaring")
when not declared(internalposixsymlinkmax):
  when 255 is static:
    const
      internalposixsymlinkmax* = 255 ## Generated based on /usr/include/bits/posix1_lim.h:125:9
  else:
    let internalposixsymlinkmax* = 255 ## Generated based on /usr/include/bits/posix1_lim.h:125:9
else:
  static :
    hint("Declaration of " & "internalposixsymlinkmax" &
        " already exists, not redeclaring")
when not declared(internalposixsymloopmax):
  when 8 is static:
    const
      internalposixsymloopmax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:129:9
  else:
    let internalposixsymloopmax* = 8 ## Generated based on /usr/include/bits/posix1_lim.h:129:9
else:
  static :
    hint("Declaration of " & "internalposixsymloopmax" &
        " already exists, not redeclaring")
when not declared(internalposixtimermax):
  when 32 is static:
    const
      internalposixtimermax* = 32 ## Generated based on /usr/include/bits/posix1_lim.h:132:9
  else:
    let internalposixtimermax* = 32 ## Generated based on /usr/include/bits/posix1_lim.h:132:9
else:
  static :
    hint("Declaration of " & "internalposixtimermax" &
        " already exists, not redeclaring")
when not declared(internalposixttynamemax):
  when 9 is static:
    const
      internalposixttynamemax* = 9 ## Generated based on /usr/include/bits/posix1_lim.h:135:9
  else:
    let internalposixttynamemax* = 9 ## Generated based on /usr/include/bits/posix1_lim.h:135:9
else:
  static :
    hint("Declaration of " & "internalposixttynamemax" &
        " already exists, not redeclaring")
when not declared(internalposixtznamemax):
  when 6 is static:
    const
      internalposixtznamemax* = 6 ## Generated based on /usr/include/bits/posix1_lim.h:139:10
  else:
    let internalposixtznamemax* = 6 ## Generated based on /usr/include/bits/posix1_lim.h:139:10
else:
  static :
    hint("Declaration of " & "internalposixtznamemax" &
        " already exists, not redeclaring")
when not declared(internalposixclockresmin):
  when 20000000 is static:
    const
      internalposixclockresmin* = 20000000 ## Generated based on /usr/include/bits/posix1_lim.h:157:9
  else:
    let internalposixclockresmin* = 20000000 ## Generated based on /usr/include/bits/posix1_lim.h:157:9
else:
  static :
    hint("Declaration of " & "internalposixclockresmin" &
        " already exists, not redeclaring")
when not declared(Nropen):
  when 1024 is static:
    const
      Nropen* = 1024         ## Generated based on /usr/include/linux/limits.h:5:9
  else:
    let Nropen* = 1024       ## Generated based on /usr/include/linux/limits.h:5:9
else:
  static :
    hint("Declaration of " & "Nropen" & " already exists, not redeclaring")
when not declared(Ngroupsmax):
  when 65536 is static:
    const
      Ngroupsmax* = 65536    ## Generated based on /usr/include/linux/limits.h:7:9
  else:
    let Ngroupsmax* = 65536  ## Generated based on /usr/include/linux/limits.h:7:9
else:
  static :
    hint("Declaration of " & "Ngroupsmax" & " already exists, not redeclaring")
when not declared(Argmax):
  when 131072 is static:
    const
      Argmax* = 131072       ## Generated based on /usr/include/linux/limits.h:8:9
  else:
    let Argmax* = 131072     ## Generated based on /usr/include/linux/limits.h:8:9
else:
  static :
    hint("Declaration of " & "Argmax" & " already exists, not redeclaring")
when not declared(Linkmax):
  when 127 is static:
    const
      Linkmax* = 127         ## Generated based on /usr/include/linux/limits.h:9:9
  else:
    let Linkmax* = 127       ## Generated based on /usr/include/linux/limits.h:9:9
else:
  static :
    hint("Declaration of " & "Linkmax" & " already exists, not redeclaring")
when not declared(Maxcanon):
  when 255 is static:
    const
      Maxcanon* = 255        ## Generated based on /usr/include/linux/limits.h:10:9
  else:
    let Maxcanon* = 255      ## Generated based on /usr/include/linux/limits.h:10:9
else:
  static :
    hint("Declaration of " & "Maxcanon" & " already exists, not redeclaring")
when not declared(Maxinput):
  when 255 is static:
    const
      Maxinput* = 255        ## Generated based on /usr/include/linux/limits.h:11:9
  else:
    let Maxinput* = 255      ## Generated based on /usr/include/linux/limits.h:11:9
else:
  static :
    hint("Declaration of " & "Maxinput" & " already exists, not redeclaring")
when not declared(Namemax):
  when 255 is static:
    const
      Namemax* = 255         ## Generated based on /usr/include/linux/limits.h:12:9
  else:
    let Namemax* = 255       ## Generated based on /usr/include/linux/limits.h:12:9
else:
  static :
    hint("Declaration of " & "Namemax" & " already exists, not redeclaring")
when not declared(Pathmax):
  when 4096 is static:
    const
      Pathmax* = 4096        ## Generated based on /usr/include/linux/limits.h:13:9
  else:
    let Pathmax* = 4096      ## Generated based on /usr/include/linux/limits.h:13:9
else:
  static :
    hint("Declaration of " & "Pathmax" & " already exists, not redeclaring")
when not declared(Pipebuf):
  when 4096 is static:
    const
      Pipebuf* = 4096        ## Generated based on /usr/include/linux/limits.h:14:9
  else:
    let Pipebuf* = 4096      ## Generated based on /usr/include/linux/limits.h:14:9
else:
  static :
    hint("Declaration of " & "Pipebuf" & " already exists, not redeclaring")
when not declared(Xattrnamemax):
  when 255 is static:
    const
      Xattrnamemax* = 255    ## Generated based on /usr/include/linux/limits.h:15:9
  else:
    let Xattrnamemax* = 255  ## Generated based on /usr/include/linux/limits.h:15:9
else:
  static :
    hint("Declaration of " & "Xattrnamemax" & " already exists, not redeclaring")
when not declared(Xattrsizemax):
  when 65536 is static:
    const
      Xattrsizemax* = 65536  ## Generated based on /usr/include/linux/limits.h:16:9
  else:
    let Xattrsizemax* = 65536 ## Generated based on /usr/include/linux/limits.h:16:9
else:
  static :
    hint("Declaration of " & "Xattrsizemax" & " already exists, not redeclaring")
when not declared(Xattrlistmax):
  when 65536 is static:
    const
      Xattrlistmax* = 65536  ## Generated based on /usr/include/linux/limits.h:17:9
  else:
    let Xattrlistmax* = 65536 ## Generated based on /usr/include/linux/limits.h:17:9
else:
  static :
    hint("Declaration of " & "Xattrlistmax" & " already exists, not redeclaring")
when not declared(Rtsigmax):
  when 32 is static:
    const
      Rtsigmax* = 32         ## Generated based on /usr/include/linux/limits.h:19:9
  else:
    let Rtsigmax* = 32       ## Generated based on /usr/include/linux/limits.h:19:9
else:
  static :
    hint("Declaration of " & "Rtsigmax" & " already exists, not redeclaring")
when not declared(internalposixthreadkeysmax):
  when 128 is static:
    const
      internalposixthreadkeysmax* = 128 ## Generated based on /usr/include/bits/local_lim.h:62:9
  else:
    let internalposixthreadkeysmax* = 128 ## Generated based on /usr/include/bits/local_lim.h:62:9
else:
  static :
    hint("Declaration of " & "internalposixthreadkeysmax" &
        " already exists, not redeclaring")
when not declared(Pthreadkeysmax):
  when 1024 is static:
    const
      Pthreadkeysmax* = 1024 ## Generated based on /usr/include/bits/local_lim.h:64:9
  else:
    let Pthreadkeysmax* = 1024 ## Generated based on /usr/include/bits/local_lim.h:64:9
else:
  static :
    hint("Declaration of " & "Pthreadkeysmax" &
        " already exists, not redeclaring")
when not declared(internalposixthreaddestructoriterations):
  when 4 is static:
    const
      internalposixthreaddestructoriterations* = 4 ## Generated based on /usr/include/bits/local_lim.h:67:9
  else:
    let internalposixthreaddestructoriterations* = 4 ## Generated based on /usr/include/bits/local_lim.h:67:9
else:
  static :
    hint("Declaration of " & "internalposixthreaddestructoriterations" &
        " already exists, not redeclaring")
when not declared(Pthreaddestructoriterations):
  when internalposixthreaddestructoriterations is typedesc:
    type
      Pthreaddestructoriterations* = internalposixthreaddestructoriterations ## Generated based on /usr/include/bits/local_lim.h:69:9
  else:
    when internalposixthreaddestructoriterations is static:
      const
        Pthreaddestructoriterations* = internalposixthreaddestructoriterations ## Generated based on /usr/include/bits/local_lim.h:69:9
    else:
      let Pthreaddestructoriterations* = internalposixthreaddestructoriterations ## Generated based on /usr/include/bits/local_lim.h:69:9
else:
  static :
    hint("Declaration of " & "Pthreaddestructoriterations" &
        " already exists, not redeclaring")
when not declared(internalposixthreadthreadsmax):
  when 64 is static:
    const
      internalposixthreadthreadsmax* = 64 ## Generated based on /usr/include/bits/local_lim.h:72:9
  else:
    let internalposixthreadthreadsmax* = 64 ## Generated based on /usr/include/bits/local_lim.h:72:9
else:
  static :
    hint("Declaration of " & "internalposixthreadthreadsmax" &
        " already exists, not redeclaring")
when not declared(Aiopriodeltamax):
  when 20 is static:
    const
      Aiopriodeltamax* = 20  ## Generated based on /usr/include/bits/local_lim.h:78:9
  else:
    let Aiopriodeltamax* = 20 ## Generated based on /usr/include/bits/local_lim.h:78:9
else:
  static :
    hint("Declaration of " & "Aiopriodeltamax" &
        " already exists, not redeclaring")
when not declared(Pthreadstackmin):
  when 16384 is static:
    const
      Pthreadstackmin* = 16384 ## Generated based on /usr/include/bits/pthread_stack_min.h:20:9
  else:
    let Pthreadstackmin* = 16384 ## Generated based on /usr/include/bits/pthread_stack_min.h:20:9
else:
  static :
    hint("Declaration of " & "Pthreadstackmin" &
        " already exists, not redeclaring")
when not declared(Delaytimermax):
  when 2147483647 is static:
    const
      Delaytimermax* = 2147483647 ## Generated based on /usr/include/bits/local_lim.h:84:9
  else:
    let Delaytimermax* = 2147483647 ## Generated based on /usr/include/bits/local_lim.h:84:9
else:
  static :
    hint("Declaration of " & "Delaytimermax" &
        " already exists, not redeclaring")
when not declared(Ttynamemax):
  when 32 is static:
    const
      Ttynamemax* = 32       ## Generated based on /usr/include/bits/local_lim.h:87:9
  else:
    let Ttynamemax* = 32     ## Generated based on /usr/include/bits/local_lim.h:87:9
else:
  static :
    hint("Declaration of " & "Ttynamemax" & " already exists, not redeclaring")
when not declared(Loginnamemax):
  when 256 is static:
    const
      Loginnamemax* = 256    ## Generated based on /usr/include/bits/local_lim.h:90:9
  else:
    let Loginnamemax* = 256  ## Generated based on /usr/include/bits/local_lim.h:90:9
else:
  static :
    hint("Declaration of " & "Loginnamemax" & " already exists, not redeclaring")
when not declared(Hostnamemax):
  when 64 is static:
    const
      Hostnamemax* = 64      ## Generated based on /usr/include/bits/local_lim.h:93:9
  else:
    let Hostnamemax* = 64    ## Generated based on /usr/include/bits/local_lim.h:93:9
else:
  static :
    hint("Declaration of " & "Hostnamemax" & " already exists, not redeclaring")
when not declared(Mqpriomax):
  when 32768 is static:
    const
      Mqpriomax* = 32768     ## Generated based on /usr/include/bits/local_lim.h:96:9
  else:
    let Mqpriomax* = 32768   ## Generated based on /usr/include/bits/local_lim.h:96:9
else:
  static :
    hint("Declaration of " & "Mqpriomax" & " already exists, not redeclaring")
when not declared(Semvaluemax):
  when 2147483647 is static:
    const
      Semvaluemax* = 2147483647 ## Generated based on /usr/include/bits/local_lim.h:99:9
  else:
    let Semvaluemax* = 2147483647 ## Generated based on /usr/include/bits/local_lim.h:99:9
else:
  static :
    hint("Declaration of " & "Semvaluemax" & " already exists, not redeclaring")
when not declared(internalbitsposix2limh):
  when 1 is static:
    const
      internalbitsposix2limh* = 1 ## Generated based on /usr/include/bits/posix2_lim.h:23:9
  else:
    let internalbitsposix2limh* = 1 ## Generated based on /usr/include/bits/posix2_lim.h:23:9
else:
  static :
    hint("Declaration of " & "internalbitsposix2limh" &
        " already exists, not redeclaring")
when not declared(internalposix2bcbasemax):
  when 99 is static:
    const
      internalposix2bcbasemax* = 99 ## Generated based on /usr/include/bits/posix2_lim.h:27:9
  else:
    let internalposix2bcbasemax* = 99 ## Generated based on /usr/include/bits/posix2_lim.h:27:9
else:
  static :
    hint("Declaration of " & "internalposix2bcbasemax" &
        " already exists, not redeclaring")
when not declared(internalposix2bcdimmax):
  when 2048 is static:
    const
      internalposix2bcdimmax* = 2048 ## Generated based on /usr/include/bits/posix2_lim.h:30:9
  else:
    let internalposix2bcdimmax* = 2048 ## Generated based on /usr/include/bits/posix2_lim.h:30:9
else:
  static :
    hint("Declaration of " & "internalposix2bcdimmax" &
        " already exists, not redeclaring")
when not declared(internalposix2bcscalemax):
  when 99 is static:
    const
      internalposix2bcscalemax* = 99 ## Generated based on /usr/include/bits/posix2_lim.h:33:9
  else:
    let internalposix2bcscalemax* = 99 ## Generated based on /usr/include/bits/posix2_lim.h:33:9
else:
  static :
    hint("Declaration of " & "internalposix2bcscalemax" &
        " already exists, not redeclaring")
when not declared(internalposix2bcstringmax):
  when 1000 is static:
    const
      internalposix2bcstringmax* = 1000 ## Generated based on /usr/include/bits/posix2_lim.h:36:9
  else:
    let internalposix2bcstringmax* = 1000 ## Generated based on /usr/include/bits/posix2_lim.h:36:9
else:
  static :
    hint("Declaration of " & "internalposix2bcstringmax" &
        " already exists, not redeclaring")
when not declared(internalposix2collweightsmax):
  when 2 is static:
    const
      internalposix2collweightsmax* = 2 ## Generated based on /usr/include/bits/posix2_lim.h:40:9
  else:
    let internalposix2collweightsmax* = 2 ## Generated based on /usr/include/bits/posix2_lim.h:40:9
else:
  static :
    hint("Declaration of " & "internalposix2collweightsmax" &
        " already exists, not redeclaring")
when not declared(internalposix2exprnestmax):
  when 32 is static:
    const
      internalposix2exprnestmax* = 32 ## Generated based on /usr/include/bits/posix2_lim.h:44:9
  else:
    let internalposix2exprnestmax* = 32 ## Generated based on /usr/include/bits/posix2_lim.h:44:9
else:
  static :
    hint("Declaration of " & "internalposix2exprnestmax" &
        " already exists, not redeclaring")
when not declared(internalposix2linemax):
  when 2048 is static:
    const
      internalposix2linemax* = 2048 ## Generated based on /usr/include/bits/posix2_lim.h:47:9
  else:
    let internalposix2linemax* = 2048 ## Generated based on /usr/include/bits/posix2_lim.h:47:9
else:
  static :
    hint("Declaration of " & "internalposix2linemax" &
        " already exists, not redeclaring")
when not declared(internalposix2redupmax):
  when 255 is static:
    const
      internalposix2redupmax* = 255 ## Generated based on /usr/include/bits/posix2_lim.h:51:9
  else:
    let internalposix2redupmax* = 255 ## Generated based on /usr/include/bits/posix2_lim.h:51:9
else:
  static :
    hint("Declaration of " & "internalposix2redupmax" &
        " already exists, not redeclaring")
when not declared(internalposix2charclassnamemax):
  when 14 is static:
    const
      internalposix2charclassnamemax* = 14 ## Generated based on /usr/include/bits/posix2_lim.h:55:9
  else:
    let internalposix2charclassnamemax* = 14 ## Generated based on /usr/include/bits/posix2_lim.h:55:9
else:
  static :
    hint("Declaration of " & "internalposix2charclassnamemax" &
        " already exists, not redeclaring")
when not declared(Bcbasemax):
  when internalposix2bcbasemax is typedesc:
    type
      Bcbasemax* = internalposix2bcbasemax ## Generated based on /usr/include/bits/posix2_lim.h:63:9
  else:
    when internalposix2bcbasemax is static:
      const
        Bcbasemax* = internalposix2bcbasemax ## Generated based on /usr/include/bits/posix2_lim.h:63:9
    else:
      let Bcbasemax* = internalposix2bcbasemax ## Generated based on /usr/include/bits/posix2_lim.h:63:9
else:
  static :
    hint("Declaration of " & "Bcbasemax" & " already exists, not redeclaring")
when not declared(Bcdimmax):
  when internalposix2bcdimmax is typedesc:
    type
      Bcdimmax* = internalposix2bcdimmax ## Generated based on /usr/include/bits/posix2_lim.h:66:9
  else:
    when internalposix2bcdimmax is static:
      const
        Bcdimmax* = internalposix2bcdimmax ## Generated based on /usr/include/bits/posix2_lim.h:66:9
    else:
      let Bcdimmax* = internalposix2bcdimmax ## Generated based on /usr/include/bits/posix2_lim.h:66:9
else:
  static :
    hint("Declaration of " & "Bcdimmax" & " already exists, not redeclaring")
when not declared(Bcscalemax):
  when internalposix2bcscalemax is typedesc:
    type
      Bcscalemax* = internalposix2bcscalemax ## Generated based on /usr/include/bits/posix2_lim.h:69:9
  else:
    when internalposix2bcscalemax is static:
      const
        Bcscalemax* = internalposix2bcscalemax ## Generated based on /usr/include/bits/posix2_lim.h:69:9
    else:
      let Bcscalemax* = internalposix2bcscalemax ## Generated based on /usr/include/bits/posix2_lim.h:69:9
else:
  static :
    hint("Declaration of " & "Bcscalemax" & " already exists, not redeclaring")
when not declared(Bcstringmax):
  when internalposix2bcstringmax is typedesc:
    type
      Bcstringmax* = internalposix2bcstringmax ## Generated based on /usr/include/bits/posix2_lim.h:72:9
  else:
    when internalposix2bcstringmax is static:
      const
        Bcstringmax* = internalposix2bcstringmax ## Generated based on /usr/include/bits/posix2_lim.h:72:9
    else:
      let Bcstringmax* = internalposix2bcstringmax ## Generated based on /usr/include/bits/posix2_lim.h:72:9
else:
  static :
    hint("Declaration of " & "Bcstringmax" & " already exists, not redeclaring")
when not declared(Collweightsmax):
  when 255 is static:
    const
      Collweightsmax* = 255  ## Generated based on /usr/include/bits/posix2_lim.h:75:9
  else:
    let Collweightsmax* = 255 ## Generated based on /usr/include/bits/posix2_lim.h:75:9
else:
  static :
    hint("Declaration of " & "Collweightsmax" &
        " already exists, not redeclaring")
when not declared(Exprnestmax):
  when internalposix2exprnestmax is typedesc:
    type
      Exprnestmax* = internalposix2exprnestmax ## Generated based on /usr/include/bits/posix2_lim.h:78:9
  else:
    when internalposix2exprnestmax is static:
      const
        Exprnestmax* = internalposix2exprnestmax ## Generated based on /usr/include/bits/posix2_lim.h:78:9
    else:
      let Exprnestmax* = internalposix2exprnestmax ## Generated based on /usr/include/bits/posix2_lim.h:78:9
else:
  static :
    hint("Declaration of " & "Exprnestmax" & " already exists, not redeclaring")
when not declared(Linemax):
  when internalposix2linemax is typedesc:
    type
      Linemax* = internalposix2linemax ## Generated based on /usr/include/bits/posix2_lim.h:81:9
  else:
    when internalposix2linemax is static:
      const
        Linemax* = internalposix2linemax ## Generated based on /usr/include/bits/posix2_lim.h:81:9
    else:
      let Linemax* = internalposix2linemax ## Generated based on /usr/include/bits/posix2_lim.h:81:9
else:
  static :
    hint("Declaration of " & "Linemax" & " already exists, not redeclaring")
when not declared(Charclassnamemax):
  when 2048 is static:
    const
      Charclassnamemax* = 2048 ## Generated based on /usr/include/bits/posix2_lim.h:84:9
  else:
    let Charclassnamemax* = 2048 ## Generated based on /usr/include/bits/posix2_lim.h:84:9
else:
  static :
    hint("Declaration of " & "Charclassnamemax" &
        " already exists, not redeclaring")
when not declared(Redupmax):
  when 32767 is static:
    const
      Redupmax* = 32767      ## Generated based on /usr/include/bits/posix2_lim.h:88:9
  else:
    let Redupmax* = 32767    ## Generated based on /usr/include/bits/posix2_lim.h:88:9
else:
  static :
    hint("Declaration of " & "Redupmax" & " already exists, not redeclaring")
when not declared(Sodiumversionstring):
  when "1.0.18" is static:
    const
      Sodiumversionstring* = "1.0.18" ## Generated based on /usr/include/sodium/version.h:7:9
  else:
    let Sodiumversionstring* = "1.0.18" ## Generated based on /usr/include/sodium/version.h:7:9
else:
  static :
    hint("Declaration of " & "Sodiumversionstring" &
        " already exists, not redeclaring")
when not declared(Sodiumlibraryversionmajor):
  when 10 is static:
    const
      Sodiumlibraryversionmajor* = 10 ## Generated based on /usr/include/sodium/version.h:9:9
  else:
    let Sodiumlibraryversionmajor* = 10 ## Generated based on /usr/include/sodium/version.h:9:9
else:
  static :
    hint("Declaration of " & "Sodiumlibraryversionmajor" &
        " already exists, not redeclaring")
when not declared(Sodiumlibraryversionminor):
  when 3 is static:
    const
      Sodiumlibraryversionminor* = 3 ## Generated based on /usr/include/sodium/version.h:10:9
  else:
    let Sodiumlibraryversionminor* = 3 ## Generated based on /usr/include/sodium/version.h:10:9
else:
  static :
    hint("Declaration of " & "Sodiumlibraryversionminor" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmkeybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoaeadaes256gcmkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_aead_aes256gcm.h:37:9
  else:
    let cryptoaeadaes256gcmkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_aead_aes256gcm.h:37:9
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmnsecbytes):
  when cast[cuint](0'i64) is static:
    const
      cryptoaeadaes256gcmnsecbytes* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_aead_aes256gcm.h:41:9
  else:
    let cryptoaeadaes256gcmnsecbytes* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_aead_aes256gcm.h:41:9
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmnsecbytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmnpubbytes):
  when cast[cuint](12'i64) is static:
    const
      cryptoaeadaes256gcmnpubbytes* = cast[cuint](12'i64) ## Generated based on /usr/include/sodium/crypto_aead_aes256gcm.h:45:9
  else:
    let cryptoaeadaes256gcmnpubbytes* = cast[cuint](12'i64) ## Generated based on /usr/include/sodium/crypto_aead_aes256gcm.h:45:9
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmnpubbytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmabytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoaeadaes256gcmabytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_aead_aes256gcm.h:49:9
  else:
    let cryptoaeadaes256gcmabytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_aead_aes256gcm.h:49:9
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmabytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfkeybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoaeadchacha20poly1305ietfkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:16:9
  else:
    let cryptoaeadchacha20poly1305ietfkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:16:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfnsecbytes):
  when cast[cuint](0'i64) is static:
    const
      cryptoaeadchacha20poly1305ietfnsecbytes* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:20:9
  else:
    let cryptoaeadchacha20poly1305ietfnsecbytes* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:20:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfnsecbytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfnpubbytes):
  when cast[cuint](12'i64) is static:
    const
      cryptoaeadchacha20poly1305ietfnpubbytes* = cast[cuint](12'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:24:9
  else:
    let cryptoaeadchacha20poly1305ietfnpubbytes* = cast[cuint](12'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:24:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfnpubbytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfabytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoaeadchacha20poly1305ietfabytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:29:9
  else:
    let cryptoaeadchacha20poly1305ietfabytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:29:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfabytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoaeadchacha20poly1305keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:94:9
  else:
    let cryptoaeadchacha20poly1305keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:94:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305keybytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305nsecbytes):
  when cast[cuint](0'i64) is static:
    const
      cryptoaeadchacha20poly1305nsecbytes* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:98:9
  else:
    let cryptoaeadchacha20poly1305nsecbytes* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:98:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305nsecbytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305npubbytes):
  when cast[cuint](8'i64) is static:
    const
      cryptoaeadchacha20poly1305npubbytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:102:9
  else:
    let cryptoaeadchacha20poly1305npubbytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:102:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305npubbytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305abytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoaeadchacha20poly1305abytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:106:9
  else:
    let cryptoaeadchacha20poly1305abytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:106:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305abytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfkeybytesconst):
  when cryptoaeadchacha20poly1305ietfkeybytes is typedesc:
    type
      cryptoaeadchacha20poly1305ietfkeybytesconst* = cryptoaeadchacha20poly1305ietfkeybytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:170:9
  else:
    when cryptoaeadchacha20poly1305ietfkeybytes is static:
      const
        cryptoaeadchacha20poly1305ietfkeybytesconst* = cryptoaeadchacha20poly1305ietfkeybytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:170:9
    else:
      let cryptoaeadchacha20poly1305ietfkeybytesconst* = cryptoaeadchacha20poly1305ietfkeybytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:170:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfkeybytesconst" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfnsecbytesconst):
  when cryptoaeadchacha20poly1305ietfnsecbytes is typedesc:
    type
      cryptoaeadchacha20poly1305ietfnsecbytesconst* = cryptoaeadchacha20poly1305ietfnsecbytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:171:9
  else:
    when cryptoaeadchacha20poly1305ietfnsecbytes is static:
      const
        cryptoaeadchacha20poly1305ietfnsecbytesconst* = cryptoaeadchacha20poly1305ietfnsecbytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:171:9
    else:
      let cryptoaeadchacha20poly1305ietfnsecbytesconst* = cryptoaeadchacha20poly1305ietfnsecbytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:171:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfnsecbytesconst" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfnpubbytesconst):
  when cryptoaeadchacha20poly1305ietfnpubbytes is typedesc:
    type
      cryptoaeadchacha20poly1305ietfnpubbytesconst* = cryptoaeadchacha20poly1305ietfnpubbytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:172:9
  else:
    when cryptoaeadchacha20poly1305ietfnpubbytes is static:
      const
        cryptoaeadchacha20poly1305ietfnpubbytesconst* = cryptoaeadchacha20poly1305ietfnpubbytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:172:9
    else:
      let cryptoaeadchacha20poly1305ietfnpubbytesconst* = cryptoaeadchacha20poly1305ietfnpubbytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:172:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfnpubbytesconst" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfabytesconst):
  when cryptoaeadchacha20poly1305ietfabytes is typedesc:
    type
      cryptoaeadchacha20poly1305ietfabytesconst* = cryptoaeadchacha20poly1305ietfabytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:173:9
  else:
    when cryptoaeadchacha20poly1305ietfabytes is static:
      const
        cryptoaeadchacha20poly1305ietfabytesconst* = cryptoaeadchacha20poly1305ietfabytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:173:9
    else:
      let cryptoaeadchacha20poly1305ietfabytesconst* = cryptoaeadchacha20poly1305ietfabytes ## Generated based on /usr/include/sodium/crypto_aead_chacha20poly1305.h:173:9
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfabytesconst" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfkeybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoaeadxchacha20poly1305ietfkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:14:9
  else:
    let cryptoaeadxchacha20poly1305ietfkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:14:9
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfnsecbytes):
  when cast[cuint](0'i64) is static:
    const
      cryptoaeadxchacha20poly1305ietfnsecbytes* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:18:9
  else:
    let cryptoaeadxchacha20poly1305ietfnsecbytes* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:18:9
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfnsecbytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfnpubbytes):
  when cast[cuint](24'i64) is static:
    const
      cryptoaeadxchacha20poly1305ietfnpubbytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:22:9
  else:
    let cryptoaeadxchacha20poly1305ietfnpubbytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:22:9
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfnpubbytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfabytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoaeadxchacha20poly1305ietfabytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:26:9
  else:
    let cryptoaeadxchacha20poly1305ietfabytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:26:9
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfabytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfkeybytesconst):
  when cryptoaeadxchacha20poly1305ietfkeybytes is typedesc:
    type
      cryptoaeadxchacha20poly1305ietfkeybytesconst* = cryptoaeadxchacha20poly1305ietfkeybytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:90:9
  else:
    when cryptoaeadxchacha20poly1305ietfkeybytes is static:
      const
        cryptoaeadxchacha20poly1305ietfkeybytesconst* = cryptoaeadxchacha20poly1305ietfkeybytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:90:9
    else:
      let cryptoaeadxchacha20poly1305ietfkeybytesconst* = cryptoaeadxchacha20poly1305ietfkeybytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:90:9
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfkeybytesconst" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfnsecbytesconst):
  when cryptoaeadxchacha20poly1305ietfnsecbytes is typedesc:
    type
      cryptoaeadxchacha20poly1305ietfnsecbytesconst* = cryptoaeadxchacha20poly1305ietfnsecbytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:91:9
  else:
    when cryptoaeadxchacha20poly1305ietfnsecbytes is static:
      const
        cryptoaeadxchacha20poly1305ietfnsecbytesconst* = cryptoaeadxchacha20poly1305ietfnsecbytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:91:9
    else:
      let cryptoaeadxchacha20poly1305ietfnsecbytesconst* = cryptoaeadxchacha20poly1305ietfnsecbytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:91:9
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfnsecbytesconst" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfnpubbytesconst):
  when cryptoaeadxchacha20poly1305ietfnpubbytes is typedesc:
    type
      cryptoaeadxchacha20poly1305ietfnpubbytesconst* = cryptoaeadxchacha20poly1305ietfnpubbytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:92:9
  else:
    when cryptoaeadxchacha20poly1305ietfnpubbytes is static:
      const
        cryptoaeadxchacha20poly1305ietfnpubbytesconst* = cryptoaeadxchacha20poly1305ietfnpubbytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:92:9
    else:
      let cryptoaeadxchacha20poly1305ietfnpubbytesconst* = cryptoaeadxchacha20poly1305ietfnpubbytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:92:9
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfnpubbytesconst" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfabytesconst):
  when cryptoaeadxchacha20poly1305ietfabytes is typedesc:
    type
      cryptoaeadxchacha20poly1305ietfabytesconst* = cryptoaeadxchacha20poly1305ietfabytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:93:9
  else:
    when cryptoaeadxchacha20poly1305ietfabytes is static:
      const
        cryptoaeadxchacha20poly1305ietfabytesconst* = cryptoaeadxchacha20poly1305ietfabytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:93:9
    else:
      let cryptoaeadxchacha20poly1305ietfabytesconst* = cryptoaeadxchacha20poly1305ietfabytes ## Generated based on /usr/include/sodium/crypto_aead_xchacha20poly1305.h:93:9
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfabytesconst" &
        " already exists, not redeclaring")
when not declared(internalstdlibh):
  when 1 is static:
    const
      internalstdlibh* = 1   ## Generated based on /usr/include/stdlib.h:36:9
  else:
    let internalstdlibh* = 1 ## Generated based on /usr/include/stdlib.h:36:9
else:
  static :
    hint("Declaration of " & "internalstdlibh" &
        " already exists, not redeclaring")
when not declared(Wnohang):
  when 1 is static:
    const
      Wnohang* = 1           ## Generated based on /usr/include/bits/waitflags.h:25:9
  else:
    let Wnohang* = 1         ## Generated based on /usr/include/bits/waitflags.h:25:9
else:
  static :
    hint("Declaration of " & "Wnohang" & " already exists, not redeclaring")
when not declared(Wuntraced):
  when 2 is static:
    const
      Wuntraced* = 2         ## Generated based on /usr/include/bits/waitflags.h:26:9
  else:
    let Wuntraced* = 2       ## Generated based on /usr/include/bits/waitflags.h:26:9
else:
  static :
    hint("Declaration of " & "Wuntraced" & " already exists, not redeclaring")
when not declared(Wstopped):
  when 2 is static:
    const
      Wstopped* = 2          ## Generated based on /usr/include/bits/waitflags.h:30:10
  else:
    let Wstopped* = 2        ## Generated based on /usr/include/bits/waitflags.h:30:10
else:
  static :
    hint("Declaration of " & "Wstopped" & " already exists, not redeclaring")
when not declared(Wexited):
  when 4 is static:
    const
      Wexited* = 4           ## Generated based on /usr/include/bits/waitflags.h:31:10
  else:
    let Wexited* = 4         ## Generated based on /usr/include/bits/waitflags.h:31:10
else:
  static :
    hint("Declaration of " & "Wexited" & " already exists, not redeclaring")
when not declared(Wcontinued):
  when 8 is static:
    const
      Wcontinued* = 8        ## Generated based on /usr/include/bits/waitflags.h:32:10
  else:
    let Wcontinued* = 8      ## Generated based on /usr/include/bits/waitflags.h:32:10
else:
  static :
    hint("Declaration of " & "Wcontinued" & " already exists, not redeclaring")
when not declared(Wnowait):
  when 16777216 is static:
    const
      Wnowait* = 16777216    ## Generated based on /usr/include/bits/waitflags.h:33:10
  else:
    let Wnowait* = 16777216  ## Generated based on /usr/include/bits/waitflags.h:33:10
else:
  static :
    hint("Declaration of " & "Wnowait" & " already exists, not redeclaring")
when not declared(compilerwnothread):
  when 536870912 is static:
    const
      compilerwnothread* = 536870912 ## Generated based on /usr/include/bits/waitflags.h:36:9
  else:
    let compilerwnothread* = 536870912 ## Generated based on /usr/include/bits/waitflags.h:36:9
else:
  static :
    hint("Declaration of " & "compilerwnothread" &
        " already exists, not redeclaring")
when not declared(compilerwall):
  when 1073741824 is static:
    const
      compilerwall* = 1073741824 ## Generated based on /usr/include/bits/waitflags.h:38:9
  else:
    let compilerwall* = 1073741824 ## Generated based on /usr/include/bits/waitflags.h:38:9
else:
  static :
    hint("Declaration of " & "compilerwall" & " already exists, not redeclaring")
when not declared(compilerwclone):
  when 2147483648 is static:
    const
      compilerwclone* = 2147483648'i64 ## Generated based on /usr/include/bits/waitflags.h:39:9
  else:
    let compilerwclone* = 2147483648'i64 ## Generated based on /usr/include/bits/waitflags.h:39:9
else:
  static :
    hint("Declaration of " & "compilerwclone" &
        " already exists, not redeclaring")
when not declared(compilerwcontinued):
  when 65535 is static:
    const
      compilerwcontinued* = 65535 ## Generated based on /usr/include/bits/waitstatus.h:58:9
  else:
    let compilerwcontinued* = 65535 ## Generated based on /usr/include/bits/waitstatus.h:58:9
else:
  static :
    hint("Declaration of " & "compilerwcontinued" &
        " already exists, not redeclaring")
when not declared(compilerwcoreflag):
  when 128 is static:
    const
      compilerwcoreflag* = 128 ## Generated based on /usr/include/bits/waitstatus.h:59:9
  else:
    let compilerwcoreflag* = 128 ## Generated based on /usr/include/bits/waitstatus.h:59:9
else:
  static :
    hint("Declaration of " & "compilerwcoreflag" &
        " already exists, not redeclaring")
when not declared(compilerhavefloat128):
  when 0 is static:
    const
      compilerhavefloat128* = 0 ## Generated based on /usr/include/bits/floatn.h:34:10
  else:
    let compilerhavefloat128* = 0 ## Generated based on /usr/include/bits/floatn.h:34:10
else:
  static :
    hint("Declaration of " & "compilerhavefloat128" &
        " already exists, not redeclaring")
when not declared(compilerhavedistinctfloat128):
  when 0 is static:
    const
      compilerhavedistinctfloat128* = 0 ## Generated based on /usr/include/bits/floatn.h:42:10
  else:
    let compilerhavedistinctfloat128* = 0 ## Generated based on /usr/include/bits/floatn.h:42:10
else:
  static :
    hint("Declaration of " & "compilerhavedistinctfloat128" &
        " already exists, not redeclaring")
when not declared(compilerhavefloat64x):
  when 1 is static:
    const
      compilerhavefloat64x* = 1 ## Generated based on /usr/include/bits/floatn.h:48:9
  else:
    let compilerhavefloat64x* = 1 ## Generated based on /usr/include/bits/floatn.h:48:9
else:
  static :
    hint("Declaration of " & "compilerhavefloat64x" &
        " already exists, not redeclaring")
when not declared(compilerhavefloat64xlongdouble):
  when 1 is static:
    const
      compilerhavefloat64xlongdouble* = 1 ## Generated based on /usr/include/bits/floatn.h:54:9
  else:
    let compilerhavefloat64xlongdouble* = 1 ## Generated based on /usr/include/bits/floatn.h:54:9
else:
  static :
    hint("Declaration of " & "compilerhavefloat64xlongdouble" &
        " already exists, not redeclaring")
when not declared(compilerhavefloat16):
  when 0 is static:
    const
      compilerhavefloat16* = 0 ## Generated based on /usr/include/bits/floatn-common.h:34:9
  else:
    let compilerhavefloat16* = 0 ## Generated based on /usr/include/bits/floatn-common.h:34:9
else:
  static :
    hint("Declaration of " & "compilerhavefloat16" &
        " already exists, not redeclaring")
when not declared(compilerhavefloat32):
  when 1 is static:
    const
      compilerhavefloat32* = 1 ## Generated based on /usr/include/bits/floatn-common.h:35:9
  else:
    let compilerhavefloat32* = 1 ## Generated based on /usr/include/bits/floatn-common.h:35:9
else:
  static :
    hint("Declaration of " & "compilerhavefloat32" &
        " already exists, not redeclaring")
when not declared(compilerhavefloat64):
  when 1 is static:
    const
      compilerhavefloat64* = 1 ## Generated based on /usr/include/bits/floatn-common.h:36:9
  else:
    let compilerhavefloat64* = 1 ## Generated based on /usr/include/bits/floatn-common.h:36:9
else:
  static :
    hint("Declaration of " & "compilerhavefloat64" &
        " already exists, not redeclaring")
when not declared(compilerhavefloat32x):
  when 1 is static:
    const
      compilerhavefloat32x* = 1 ## Generated based on /usr/include/bits/floatn-common.h:37:9
  else:
    let compilerhavefloat32x* = 1 ## Generated based on /usr/include/bits/floatn-common.h:37:9
else:
  static :
    hint("Declaration of " & "compilerhavefloat32x" &
        " already exists, not redeclaring")
when not declared(compilerhavefloat128x):
  when 0 is static:
    const
      compilerhavefloat128x* = 0 ## Generated based on /usr/include/bits/floatn-common.h:38:9
  else:
    let compilerhavefloat128x* = 0 ## Generated based on /usr/include/bits/floatn-common.h:38:9
else:
  static :
    hint("Declaration of " & "compilerhavefloat128x" &
        " already exists, not redeclaring")
when not declared(compilerhavedistinctfloat16):
  when compilerhavefloat16 is typedesc:
    type
      compilerhavedistinctfloat16* = compilerhavefloat16 ## Generated based on /usr/include/bits/floatn-common.h:52:9
  else:
    when compilerhavefloat16 is static:
      const
        compilerhavedistinctfloat16* = compilerhavefloat16 ## Generated based on /usr/include/bits/floatn-common.h:52:9
    else:
      let compilerhavedistinctfloat16* = compilerhavefloat16 ## Generated based on /usr/include/bits/floatn-common.h:52:9
else:
  static :
    hint("Declaration of " & "compilerhavedistinctfloat16" &
        " already exists, not redeclaring")
when not declared(compilerhavedistinctfloat32):
  when 0 is static:
    const
      compilerhavedistinctfloat32* = 0 ## Generated based on /usr/include/bits/floatn-common.h:53:9
  else:
    let compilerhavedistinctfloat32* = 0 ## Generated based on /usr/include/bits/floatn-common.h:53:9
else:
  static :
    hint("Declaration of " & "compilerhavedistinctfloat32" &
        " already exists, not redeclaring")
when not declared(compilerhavedistinctfloat64):
  when 0 is static:
    const
      compilerhavedistinctfloat64* = 0 ## Generated based on /usr/include/bits/floatn-common.h:54:9
  else:
    let compilerhavedistinctfloat64* = 0 ## Generated based on /usr/include/bits/floatn-common.h:54:9
else:
  static :
    hint("Declaration of " & "compilerhavedistinctfloat64" &
        " already exists, not redeclaring")
when not declared(compilerhavedistinctfloat32x):
  when 0 is static:
    const
      compilerhavedistinctfloat32x* = 0 ## Generated based on /usr/include/bits/floatn-common.h:55:9
  else:
    let compilerhavedistinctfloat32x* = 0 ## Generated based on /usr/include/bits/floatn-common.h:55:9
else:
  static :
    hint("Declaration of " & "compilerhavedistinctfloat32x" &
        " already exists, not redeclaring")
when not declared(compilerhavedistinctfloat64x):
  when 0 is static:
    const
      compilerhavedistinctfloat64x* = 0 ## Generated based on /usr/include/bits/floatn-common.h:56:9
  else:
    let compilerhavedistinctfloat64x* = 0 ## Generated based on /usr/include/bits/floatn-common.h:56:9
else:
  static :
    hint("Declaration of " & "compilerhavedistinctfloat64x" &
        " already exists, not redeclaring")
when not declared(compilerhavedistinctfloat128x):
  when compilerhavefloat128x is typedesc:
    type
      compilerhavedistinctfloat128x* = compilerhavefloat128x ## Generated based on /usr/include/bits/floatn-common.h:57:9
  else:
    when compilerhavefloat128x is static:
      const
        compilerhavedistinctfloat128x* = compilerhavefloat128x ## Generated based on /usr/include/bits/floatn-common.h:57:9
    else:
      let compilerhavedistinctfloat128x* = compilerhavefloat128x ## Generated based on /usr/include/bits/floatn-common.h:57:9
else:
  static :
    hint("Declaration of " & "compilerhavedistinctfloat128x" &
        " already exists, not redeclaring")
when not declared(compilerhavefloatnnottypedef):
  when 0 is static:
    const
      compilerhavefloatnnottypedef* = 0 ## Generated based on /usr/include/bits/floatn-common.h:72:10
  else:
    let compilerhavefloatnnottypedef* = 0 ## Generated based on /usr/include/bits/floatn-common.h:72:10
else:
  static :
    hint("Declaration of " & "compilerhavefloatnnottypedef" &
        " already exists, not redeclaring")
when not declared(compilerldivtdefined):
  when 1 is static:
    const
      compilerldivtdefined* = 1 ## Generated based on /usr/include/stdlib.h:72:10
  else:
    let compilerldivtdefined* = 1 ## Generated based on /usr/include/stdlib.h:72:10
else:
  static :
    hint("Declaration of " & "compilerldivtdefined" &
        " already exists, not redeclaring")
when not declared(compilerlldivtdefined):
  when 1 is static:
    const
      compilerlldivtdefined* = 1 ## Generated based on /usr/include/stdlib.h:82:10
  else:
    let compilerlldivtdefined* = 1 ## Generated based on /usr/include/stdlib.h:82:10
else:
  static :
    hint("Declaration of " & "compilerlldivtdefined" &
        " already exists, not redeclaring")
when not declared(Randmax):
  when 2147483647 is static:
    const
      Randmax* = 2147483647  ## Generated based on /usr/include/stdlib.h:87:9
  else:
    let Randmax* = 2147483647 ## Generated based on /usr/include/stdlib.h:87:9
else:
  static :
    hint("Declaration of " & "Randmax" & " already exists, not redeclaring")
when not declared(Exitfailure):
  when 1 is static:
    const
      Exitfailure* = 1       ## Generated based on /usr/include/stdlib.h:92:9
  else:
    let Exitfailure* = 1     ## Generated based on /usr/include/stdlib.h:92:9
else:
  static :
    hint("Declaration of " & "Exitfailure" & " already exists, not redeclaring")
when not declared(Exitsuccess):
  when 0 is static:
    const
      Exitsuccess* = 0       ## Generated based on /usr/include/stdlib.h:93:9
  else:
    let Exitsuccess* = 0     ## Generated based on /usr/include/stdlib.h:93:9
else:
  static :
    hint("Declaration of " & "Exitsuccess" & " already exists, not redeclaring")
when not declared(internalsystypesh):
  when 1 is static:
    const
      internalsystypesh* = 1 ## Generated based on /usr/include/sys/types.h:23:9
  else:
    let internalsystypesh* = 1 ## Generated based on /usr/include/sys/types.h:23:9
else:
  static :
    hint("Declaration of " & "internalsystypesh" &
        " already exists, not redeclaring")
when not declared(compilerclocktdefined):
  when 1 is static:
    const
      compilerclocktdefined* = 1 ## Generated based on /usr/include/bits/types/clock_t.h:2:9
  else:
    let compilerclocktdefined* = 1 ## Generated based on /usr/include/bits/types/clock_t.h:2:9
else:
  static :
    hint("Declaration of " & "compilerclocktdefined" &
        " already exists, not redeclaring")
when not declared(compilerclockidtdefined):
  when 1 is static:
    const
      compilerclockidtdefined* = 1 ## Generated based on /usr/include/bits/types/clockid_t.h:2:9
  else:
    let compilerclockidtdefined* = 1 ## Generated based on /usr/include/bits/types/clockid_t.h:2:9
else:
  static :
    hint("Declaration of " & "compilerclockidtdefined" &
        " already exists, not redeclaring")
when not declared(compilertimetdefined):
  when 1 is static:
    const
      compilertimetdefined* = 1 ## Generated based on /usr/include/bits/types/time_t.h:2:9
  else:
    let compilertimetdefined* = 1 ## Generated based on /usr/include/bits/types/time_t.h:2:9
else:
  static :
    hint("Declaration of " & "compilertimetdefined" &
        " already exists, not redeclaring")
when not declared(compilertimertdefined):
  when 1 is static:
    const
      compilertimertdefined* = 1 ## Generated based on /usr/include/bits/types/timer_t.h:2:9
  else:
    let compilertimertdefined* = 1 ## Generated based on /usr/include/bits/types/timer_t.h:2:9
else:
  static :
    hint("Declaration of " & "compilertimertdefined" &
        " already exists, not redeclaring")
when not declared(compilerbittypesdefined):
  when 1 is static:
    const
      compilerbittypesdefined* = 1 ## Generated based on /usr/include/sys/types.h:171:9
  else:
    let compilerbittypesdefined* = 1 ## Generated based on /usr/include/sys/types.h:171:9
else:
  static :
    hint("Declaration of " & "compilerbittypesdefined" &
        " already exists, not redeclaring")
when not declared(internalendianh):
  when 1 is static:
    const
      internalendianh* = 1   ## Generated based on /usr/include/endian.h:19:9
  else:
    let internalendianh* = 1 ## Generated based on /usr/include/endian.h:19:9
else:
  static :
    hint("Declaration of " & "internalendianh" &
        " already exists, not redeclaring")
when not declared(internalbitsendianh):
  when 1 is static:
    const
      internalbitsendianh* = 1 ## Generated based on /usr/include/bits/endian.h:20:9
  else:
    let internalbitsendianh* = 1 ## Generated based on /usr/include/bits/endian.h:20:9
else:
  static :
    hint("Declaration of " & "internalbitsendianh" &
        " already exists, not redeclaring")
when not declared(compilerlittleendian):
  when 1234 is static:
    const
      compilerlittleendian* = 1234 ## Generated based on /usr/include/bits/endian.h:30:9
  else:
    let compilerlittleendian* = 1234 ## Generated based on /usr/include/bits/endian.h:30:9
else:
  static :
    hint("Declaration of " & "compilerlittleendian" &
        " already exists, not redeclaring")
when not declared(compilerbigendian):
  when 4321 is static:
    const
      compilerbigendian* = 4321 ## Generated based on /usr/include/bits/endian.h:31:9
  else:
    let compilerbigendian* = 4321 ## Generated based on /usr/include/bits/endian.h:31:9
else:
  static :
    hint("Declaration of " & "compilerbigendian" &
        " already exists, not redeclaring")
when not declared(compilerpdpendian):
  when 3412 is static:
    const
      compilerpdpendian* = 3412 ## Generated based on /usr/include/bits/endian.h:32:9
  else:
    let compilerpdpendian* = 3412 ## Generated based on /usr/include/bits/endian.h:32:9
else:
  static :
    hint("Declaration of " & "compilerpdpendian" &
        " already exists, not redeclaring")
when not declared(internalbitsendiannessh):
  when 1 is static:
    const
      internalbitsendiannessh* = 1 ## Generated based on /usr/include/bits/endianness.h:2:9
  else:
    let internalbitsendiannessh* = 1 ## Generated based on /usr/include/bits/endianness.h:2:9
else:
  static :
    hint("Declaration of " & "internalbitsendiannessh" &
        " already exists, not redeclaring")
when not declared(compilerbyteorder):
  when compilerlittleendian is typedesc:
    type
      compilerbyteorder* = compilerlittleendian ## Generated based on /usr/include/bits/endianness.h:9:9
  else:
    when compilerlittleendian is static:
      const
        compilerbyteorder* = compilerlittleendian ## Generated based on /usr/include/bits/endianness.h:9:9
    else:
      let compilerbyteorder* = compilerlittleendian ## Generated based on /usr/include/bits/endianness.h:9:9
else:
  static :
    hint("Declaration of " & "compilerbyteorder" &
        " already exists, not redeclaring")
when not declared(Littleendian):
  when compilerlittleendian is typedesc:
    type
      Littleendian* = compilerlittleendian ## Generated based on /usr/include/endian.h:27:10
  else:
    when compilerlittleendian is static:
      const
        Littleendian* = compilerlittleendian ## Generated based on /usr/include/endian.h:27:10
    else:
      let Littleendian* = compilerlittleendian ## Generated based on /usr/include/endian.h:27:10
else:
  static :
    hint("Declaration of " & "Littleendian" & " already exists, not redeclaring")
when not declared(Bigendian):
  when compilerbigendian is typedesc:
    type
      Bigendian* = compilerbigendian ## Generated based on /usr/include/endian.h:28:10
  else:
    when compilerbigendian is static:
      const
        Bigendian* = compilerbigendian ## Generated based on /usr/include/endian.h:28:10
    else:
      let Bigendian* = compilerbigendian ## Generated based on /usr/include/endian.h:28:10
else:
  static :
    hint("Declaration of " & "Bigendian" & " already exists, not redeclaring")
when not declared(Pdpendian):
  when compilerpdpendian is typedesc:
    type
      Pdpendian* = compilerpdpendian ## Generated based on /usr/include/endian.h:29:10
  else:
    when compilerpdpendian is static:
      const
        Pdpendian* = compilerpdpendian ## Generated based on /usr/include/endian.h:29:10
    else:
      let Pdpendian* = compilerpdpendian ## Generated based on /usr/include/endian.h:29:10
else:
  static :
    hint("Declaration of " & "Pdpendian" & " already exists, not redeclaring")
when not declared(internalbitsbyteswaph):
  when 1 is static:
    const
      internalbitsbyteswaph* = 1 ## Generated based on /usr/include/bits/byteswap.h:24:9
  else:
    let internalbitsbyteswaph* = 1 ## Generated based on /usr/include/bits/byteswap.h:24:9
else:
  static :
    hint("Declaration of " & "internalbitsbyteswaph" &
        " already exists, not redeclaring")
when not declared(internalbitsuintnidentityh):
  when 1 is static:
    const
      internalbitsuintnidentityh* = 1 ## Generated based on /usr/include/bits/uintn-identity.h:24:9
  else:
    let internalbitsuintnidentityh* = 1 ## Generated based on /usr/include/bits/uintn-identity.h:24:9
else:
  static :
    hint("Declaration of " & "internalbitsuintnidentityh" &
        " already exists, not redeclaring")
when not declared(internalsysselecth):
  when 1 is static:
    const
      internalsysselecth* = 1 ## Generated based on /usr/include/sys/select.h:22:9
  else:
    let internalsysselecth* = 1 ## Generated based on /usr/include/sys/select.h:22:9
else:
  static :
    hint("Declaration of " & "internalsysselecth" &
        " already exists, not redeclaring")
when not declared(compilersigsettdefined):
  when 1 is static:
    const
      compilersigsettdefined* = 1 ## Generated based on /usr/include/bits/types/sigset_t.h:2:9
  else:
    let compilersigsettdefined* = 1 ## Generated based on /usr/include/bits/types/sigset_t.h:2:9
else:
  static :
    hint("Declaration of " & "compilersigsettdefined" &
        " already exists, not redeclaring")
when not declared(compilertimevaldefined):
  when 1 is static:
    const
      compilertimevaldefined* = 1 ## Generated based on /usr/include/bits/types/struct_timeval.h:2:9
  else:
    let compilertimevaldefined* = 1 ## Generated based on /usr/include/bits/types/struct_timeval.h:2:9
else:
  static :
    hint("Declaration of " & "compilertimevaldefined" &
        " already exists, not redeclaring")
when not declared(internalstructtimespec):
  when 1 is static:
    const
      internalstructtimespec* = 1 ## Generated based on /usr/include/bits/types/struct_timespec.h:3:9
  else:
    let internalstructtimespec* = 1 ## Generated based on /usr/include/bits/types/struct_timespec.h:3:9
else:
  static :
    hint("Declaration of " & "internalstructtimespec" &
        " already exists, not redeclaring")
when not declared(Fdsetsize):
  when compilerfdsetsize is typedesc:
    type
      Fdsetsize* = compilerfdsetsize ## Generated based on /usr/include/sys/select.h:73:9
  else:
    when compilerfdsetsize is static:
      const
        Fdsetsize* = compilerfdsetsize ## Generated based on /usr/include/sys/select.h:73:9
    else:
      let Fdsetsize* = compilerfdsetsize ## Generated based on /usr/include/sys/select.h:73:9
else:
  static :
    hint("Declaration of " & "Fdsetsize" & " already exists, not redeclaring")
when not declared(internalbitspthreadtypescommonh):
  when 1 is static:
    const
      internalbitspthreadtypescommonh* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:20:10
  else:
    let internalbitspthreadtypescommonh* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:20:10
else:
  static :
    hint("Declaration of " & "internalbitspthreadtypescommonh" &
        " already exists, not redeclaring")
when not declared(internalthreadsharedtypesh):
  when 1 is static:
    const
      internalthreadsharedtypesh* = 1 ## Generated based on /usr/include/bits/thread-shared-types.h:20:9
  else:
    let internalthreadsharedtypesh* = 1 ## Generated based on /usr/include/bits/thread-shared-types.h:20:9
else:
  static :
    hint("Declaration of " & "internalthreadsharedtypesh" &
        " already exists, not redeclaring")
when not declared(internalbitspthreadtypesarchh):
  when 1 is static:
    const
      internalbitspthreadtypesarchh* = 1 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:19:9
  else:
    let internalbitspthreadtypesarchh* = 1 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:19:9
else:
  static :
    hint("Declaration of " & "internalbitspthreadtypesarchh" &
        " already exists, not redeclaring")
when not declared(compilersizeofpthreadmutext):
  when 40 is static:
    const
      compilersizeofpthreadmutext* = 40 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:25:11
  else:
    let compilersizeofpthreadmutext* = 40 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:25:11
else:
  static :
    hint("Declaration of " & "compilersizeofpthreadmutext" &
        " already exists, not redeclaring")
when not declared(compilersizeofpthreadattrt):
  when 56 is static:
    const
      compilersizeofpthreadattrt* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:26:11
  else:
    let compilersizeofpthreadattrt* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:26:11
else:
  static :
    hint("Declaration of " & "compilersizeofpthreadattrt" &
        " already exists, not redeclaring")
when not declared(compilersizeofpthreadrwlockt):
  when 56 is static:
    const
      compilersizeofpthreadrwlockt* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:27:11
  else:
    let compilersizeofpthreadrwlockt* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:27:11
else:
  static :
    hint("Declaration of " & "compilersizeofpthreadrwlockt" &
        " already exists, not redeclaring")
when not declared(compilersizeofpthreadbarriert):
  when 32 is static:
    const
      compilersizeofpthreadbarriert* = 32 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:28:11
  else:
    let compilersizeofpthreadbarriert* = 32 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:28:11
else:
  static :
    hint("Declaration of " & "compilersizeofpthreadbarriert" &
        " already exists, not redeclaring")
when not declared(compilersizeofpthreadmutexattrt):
  when 4 is static:
    const
      compilersizeofpthreadmutexattrt* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:41:9
  else:
    let compilersizeofpthreadmutexattrt* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:41:9
else:
  static :
    hint("Declaration of " & "compilersizeofpthreadmutexattrt" &
        " already exists, not redeclaring")
when not declared(compilersizeofpthreadcondt):
  when 48 is static:
    const
      compilersizeofpthreadcondt* = 48 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:42:9
  else:
    let compilersizeofpthreadcondt* = 48 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:42:9
else:
  static :
    hint("Declaration of " & "compilersizeofpthreadcondt" &
        " already exists, not redeclaring")
when not declared(compilersizeofpthreadcondattrt):
  when 4 is static:
    const
      compilersizeofpthreadcondattrt* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:43:9
  else:
    let compilersizeofpthreadcondattrt* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:43:9
else:
  static :
    hint("Declaration of " & "compilersizeofpthreadcondattrt" &
        " already exists, not redeclaring")
when not declared(compilersizeofpthreadrwlockattrt):
  when 8 is static:
    const
      compilersizeofpthreadrwlockattrt* = 8 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:44:9
  else:
    let compilersizeofpthreadrwlockattrt* = 8 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:44:9
else:
  static :
    hint("Declaration of " & "compilersizeofpthreadrwlockattrt" &
        " already exists, not redeclaring")
when not declared(compilersizeofpthreadbarrierattrt):
  when 4 is static:
    const
      compilersizeofpthreadbarrierattrt* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:45:9
  else:
    let compilersizeofpthreadbarrierattrt* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:45:9
else:
  static :
    hint("Declaration of " & "compilersizeofpthreadbarrierattrt" &
        " already exists, not redeclaring")
when not declared(internalthreadmutexinternalh):
  when 1 is static:
    const
      internalthreadmutexinternalh* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:20:9
  else:
    let internalthreadmutexinternalh* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:20:9
else:
  static :
    hint("Declaration of " & "internalthreadmutexinternalh" &
        " already exists, not redeclaring")
when not declared(compilerpthreadmutexhaveprev):
  when 1 is static:
    const
      compilerpthreadmutexhaveprev* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:37:10
  else:
    let compilerpthreadmutexhaveprev* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:37:10
else:
  static :
    hint("Declaration of " & "compilerpthreadmutexhaveprev" &
        " already exists, not redeclaring")
when not declared(compilerhavepthreadattrt):
  when 1 is static:
    const
      compilerhavepthreadattrt* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:63:10
  else:
    let compilerhavepthreadattrt* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:63:10
else:
  static :
    hint("Declaration of " & "compilerhavepthreadattrt" &
        " already exists, not redeclaring")
when not declared(internalallocah):
  when 1 is static:
    const
      internalallocah* = 1   ## Generated based on /usr/include/alloca.h:19:9
  else:
    let internalallocah* = 1 ## Generated based on /usr/include/alloca.h:19:9
else:
  static :
    hint("Declaration of " & "internalallocah" &
        " already exists, not redeclaring")
when not declared(cryptohashsha512bytes):
  when cast[cuint](64'i64) is static:
    const
      cryptohashsha512bytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_hash_sha512.h:33:9
  else:
    let cryptohashsha512bytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_hash_sha512.h:33:9
else:
  static :
    hint("Declaration of " & "cryptohashsha512bytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512bytes):
  when cast[cuint](64'i64) is static:
    const
      cryptoauthhmacsha512bytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512.h:15:9
  else:
    let cryptoauthhmacsha512bytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512.h:15:9
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512bytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoauthhmacsha512keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512.h:19:9
  else:
    let cryptoauthhmacsha512keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512.h:19:9
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512keybytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256bytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoauthhmacsha512256bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512256.h:15:9
  else:
    let cryptoauthhmacsha512256bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512256.h:15:9
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256bytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoauthhmacsha512256keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512256.h:19:9
  else:
    let cryptoauthhmacsha512256keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha512256.h:19:9
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256keybytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthbytes):
  when cryptoauthhmacsha512256bytes is typedesc:
    type
      cryptoauthbytes* = cryptoauthhmacsha512256bytes ## Generated based on /usr/include/sodium/crypto_auth.h:16:9
  else:
    when cryptoauthhmacsha512256bytes is static:
      const
        cryptoauthbytes* = cryptoauthhmacsha512256bytes ## Generated based on /usr/include/sodium/crypto_auth.h:16:9
    else:
      let cryptoauthbytes* = cryptoauthhmacsha512256bytes ## Generated based on /usr/include/sodium/crypto_auth.h:16:9
else:
  static :
    hint("Declaration of " & "cryptoauthbytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthkeybytes):
  when cryptoauthhmacsha512256keybytes is typedesc:
    type
      cryptoauthkeybytes* = cryptoauthhmacsha512256keybytes ## Generated based on /usr/include/sodium/crypto_auth.h:20:9
  else:
    when cryptoauthhmacsha512256keybytes is static:
      const
        cryptoauthkeybytes* = cryptoauthhmacsha512256keybytes ## Generated based on /usr/include/sodium/crypto_auth.h:20:9
    else:
      let cryptoauthkeybytes* = cryptoauthhmacsha512256keybytes ## Generated based on /usr/include/sodium/crypto_auth.h:20:9
else:
  static :
    hint("Declaration of " & "cryptoauthkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthprimitive):
  when "hmacsha512256" is static:
    const
      cryptoauthprimitive* = "hmacsha512256" ## Generated based on /usr/include/sodium/crypto_auth.h:24:9
  else:
    let cryptoauthprimitive* = "hmacsha512256" ## Generated based on /usr/include/sodium/crypto_auth.h:24:9
else:
  static :
    hint("Declaration of " & "cryptoauthprimitive" &
        " already exists, not redeclaring")
when not declared(cryptohashsha256bytes):
  when cast[cuint](32'i64) is static:
    const
      cryptohashsha256bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_hash_sha256.h:33:9
  else:
    let cryptohashsha256bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_hash_sha256.h:33:9
else:
  static :
    hint("Declaration of " & "cryptohashsha256bytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256bytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoauthhmacsha256bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha256.h:15:9
  else:
    let cryptoauthhmacsha256bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha256.h:15:9
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256bytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoauthhmacsha256keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha256.h:19:9
  else:
    let cryptoauthhmacsha256keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_auth_hmacsha256.h:19:9
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256keybytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamxsalsa20keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptostreamxsalsa20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_xsalsa20.h:23:9
  else:
    let cryptostreamxsalsa20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_xsalsa20.h:23:9
else:
  static :
    hint("Declaration of " & "cryptostreamxsalsa20keybytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamxsalsa20noncebytes):
  when cast[cuint](24'i64) is static:
    const
      cryptostreamxsalsa20noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_stream_xsalsa20.h:27:9
  else:
    let cryptostreamxsalsa20noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_stream_xsalsa20.h:27:9
else:
  static :
    hint("Declaration of " & "cryptostreamxsalsa20noncebytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305seedbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoboxcurve25519xsalsa20poly1305seedbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:15:9
  else:
    let cryptoboxcurve25519xsalsa20poly1305seedbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:15:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305seedbytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305publickeybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoboxcurve25519xsalsa20poly1305publickeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:19:9
  else:
    let cryptoboxcurve25519xsalsa20poly1305publickeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:19:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305publickeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305secretkeybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoboxcurve25519xsalsa20poly1305secretkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:23:9
  else:
    let cryptoboxcurve25519xsalsa20poly1305secretkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:23:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305secretkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305beforenmbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoboxcurve25519xsalsa20poly1305beforenmbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:27:9
  else:
    let cryptoboxcurve25519xsalsa20poly1305beforenmbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:27:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305beforenmbytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305noncebytes):
  when cast[cuint](24'i64) is static:
    const
      cryptoboxcurve25519xsalsa20poly1305noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:31:9
  else:
    let cryptoboxcurve25519xsalsa20poly1305noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:31:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305noncebytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305macbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoboxcurve25519xsalsa20poly1305macbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:35:9
  else:
    let cryptoboxcurve25519xsalsa20poly1305macbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:35:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305macbytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305boxzerobytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoboxcurve25519xsalsa20poly1305boxzerobytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:64:9
  else:
    let cryptoboxcurve25519xsalsa20poly1305boxzerobytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xsalsa20poly1305.h:64:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305boxzerobytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxseedbytes):
  when cryptoboxcurve25519xsalsa20poly1305seedbytes is typedesc:
    type
      cryptoboxseedbytes* = cryptoboxcurve25519xsalsa20poly1305seedbytes ## Generated based on /usr/include/sodium/crypto_box.h:23:9
  else:
    when cryptoboxcurve25519xsalsa20poly1305seedbytes is static:
      const
        cryptoboxseedbytes* = cryptoboxcurve25519xsalsa20poly1305seedbytes ## Generated based on /usr/include/sodium/crypto_box.h:23:9
    else:
      let cryptoboxseedbytes* = cryptoboxcurve25519xsalsa20poly1305seedbytes ## Generated based on /usr/include/sodium/crypto_box.h:23:9
else:
  static :
    hint("Declaration of " & "cryptoboxseedbytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxpublickeybytes):
  when cryptoboxcurve25519xsalsa20poly1305publickeybytes is typedesc:
    type
      cryptoboxpublickeybytes* = cryptoboxcurve25519xsalsa20poly1305publickeybytes ## Generated based on /usr/include/sodium/crypto_box.h:27:9
  else:
    when cryptoboxcurve25519xsalsa20poly1305publickeybytes is static:
      const
        cryptoboxpublickeybytes* = cryptoboxcurve25519xsalsa20poly1305publickeybytes ## Generated based on /usr/include/sodium/crypto_box.h:27:9
    else:
      let cryptoboxpublickeybytes* = cryptoboxcurve25519xsalsa20poly1305publickeybytes ## Generated based on /usr/include/sodium/crypto_box.h:27:9
else:
  static :
    hint("Declaration of " & "cryptoboxpublickeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxsecretkeybytes):
  when cryptoboxcurve25519xsalsa20poly1305secretkeybytes is typedesc:
    type
      cryptoboxsecretkeybytes* = cryptoboxcurve25519xsalsa20poly1305secretkeybytes ## Generated based on /usr/include/sodium/crypto_box.h:31:9
  else:
    when cryptoboxcurve25519xsalsa20poly1305secretkeybytes is static:
      const
        cryptoboxsecretkeybytes* = cryptoboxcurve25519xsalsa20poly1305secretkeybytes ## Generated based on /usr/include/sodium/crypto_box.h:31:9
    else:
      let cryptoboxsecretkeybytes* = cryptoboxcurve25519xsalsa20poly1305secretkeybytes ## Generated based on /usr/include/sodium/crypto_box.h:31:9
else:
  static :
    hint("Declaration of " & "cryptoboxsecretkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxnoncebytes):
  when cryptoboxcurve25519xsalsa20poly1305noncebytes is typedesc:
    type
      cryptoboxnoncebytes* = cryptoboxcurve25519xsalsa20poly1305noncebytes ## Generated based on /usr/include/sodium/crypto_box.h:35:9
  else:
    when cryptoboxcurve25519xsalsa20poly1305noncebytes is static:
      const
        cryptoboxnoncebytes* = cryptoboxcurve25519xsalsa20poly1305noncebytes ## Generated based on /usr/include/sodium/crypto_box.h:35:9
    else:
      let cryptoboxnoncebytes* = cryptoboxcurve25519xsalsa20poly1305noncebytes ## Generated based on /usr/include/sodium/crypto_box.h:35:9
else:
  static :
    hint("Declaration of " & "cryptoboxnoncebytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxmacbytes):
  when cryptoboxcurve25519xsalsa20poly1305macbytes is typedesc:
    type
      cryptoboxmacbytes* = cryptoboxcurve25519xsalsa20poly1305macbytes ## Generated based on /usr/include/sodium/crypto_box.h:39:9
  else:
    when cryptoboxcurve25519xsalsa20poly1305macbytes is static:
      const
        cryptoboxmacbytes* = cryptoboxcurve25519xsalsa20poly1305macbytes ## Generated based on /usr/include/sodium/crypto_box.h:39:9
    else:
      let cryptoboxmacbytes* = cryptoboxcurve25519xsalsa20poly1305macbytes ## Generated based on /usr/include/sodium/crypto_box.h:39:9
else:
  static :
    hint("Declaration of " & "cryptoboxmacbytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxprimitive):
  when "curve25519xsalsa20poly1305" is static:
    const
      cryptoboxprimitive* = "curve25519xsalsa20poly1305" ## Generated based on /usr/include/sodium/crypto_box.h:47:9
  else:
    let cryptoboxprimitive* = "curve25519xsalsa20poly1305" ## Generated based on /usr/include/sodium/crypto_box.h:47:9
else:
  static :
    hint("Declaration of " & "cryptoboxprimitive" &
        " already exists, not redeclaring")
when not declared(cryptoboxbeforenmbytes):
  when cryptoboxcurve25519xsalsa20poly1305beforenmbytes is typedesc:
    type
      cryptoboxbeforenmbytes* = cryptoboxcurve25519xsalsa20poly1305beforenmbytes ## Generated based on /usr/include/sodium/crypto_box.h:90:9
  else:
    when cryptoboxcurve25519xsalsa20poly1305beforenmbytes is static:
      const
        cryptoboxbeforenmbytes* = cryptoboxcurve25519xsalsa20poly1305beforenmbytes ## Generated based on /usr/include/sodium/crypto_box.h:90:9
    else:
      let cryptoboxbeforenmbytes* = cryptoboxcurve25519xsalsa20poly1305beforenmbytes ## Generated based on /usr/include/sodium/crypto_box.h:90:9
else:
  static :
    hint("Declaration of " & "cryptoboxbeforenmbytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxboxzerobytes):
  when cryptoboxcurve25519xsalsa20poly1305boxzerobytes is typedesc:
    type
      cryptoboxboxzerobytes* = cryptoboxcurve25519xsalsa20poly1305boxzerobytes ## Generated based on /usr/include/sodium/crypto_box.h:146:9
  else:
    when cryptoboxcurve25519xsalsa20poly1305boxzerobytes is static:
      const
        cryptoboxboxzerobytes* = cryptoboxcurve25519xsalsa20poly1305boxzerobytes ## Generated based on /usr/include/sodium/crypto_box.h:146:9
    else:
      let cryptoboxboxzerobytes* = cryptoboxcurve25519xsalsa20poly1305boxzerobytes ## Generated based on /usr/include/sodium/crypto_box.h:146:9
else:
  static :
    hint("Declaration of " & "cryptoboxboxzerobytes" &
        " already exists, not redeclaring")
when not declared(cryptocorehsalsa20outputbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptocorehsalsa20outputbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_hsalsa20.h:11:9
  else:
    let cryptocorehsalsa20outputbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_hsalsa20.h:11:9
else:
  static :
    hint("Declaration of " & "cryptocorehsalsa20outputbytes" &
        " already exists, not redeclaring")
when not declared(cryptocorehsalsa20inputbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptocorehsalsa20inputbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_hsalsa20.h:15:9
  else:
    let cryptocorehsalsa20inputbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_hsalsa20.h:15:9
else:
  static :
    hint("Declaration of " & "cryptocorehsalsa20inputbytes" &
        " already exists, not redeclaring")
when not declared(cryptocorehsalsa20keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptocorehsalsa20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_hsalsa20.h:19:9
  else:
    let cryptocorehsalsa20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_hsalsa20.h:19:9
else:
  static :
    hint("Declaration of " & "cryptocorehsalsa20keybytes" &
        " already exists, not redeclaring")
when not declared(cryptocorehsalsa20constbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptocorehsalsa20constbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_hsalsa20.h:23:9
  else:
    let cryptocorehsalsa20constbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_hsalsa20.h:23:9
else:
  static :
    hint("Declaration of " & "cryptocorehsalsa20constbytes" &
        " already exists, not redeclaring")
when not declared(cryptocorehchacha20outputbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptocorehchacha20outputbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_hchacha20.h:11:9
  else:
    let cryptocorehchacha20outputbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_hchacha20.h:11:9
else:
  static :
    hint("Declaration of " & "cryptocorehchacha20outputbytes" &
        " already exists, not redeclaring")
when not declared(cryptocorehchacha20inputbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptocorehchacha20inputbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_hchacha20.h:15:9
  else:
    let cryptocorehchacha20inputbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_hchacha20.h:15:9
else:
  static :
    hint("Declaration of " & "cryptocorehchacha20inputbytes" &
        " already exists, not redeclaring")
when not declared(cryptocorehchacha20keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptocorehchacha20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_hchacha20.h:19:9
  else:
    let cryptocorehchacha20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_hchacha20.h:19:9
else:
  static :
    hint("Declaration of " & "cryptocorehchacha20keybytes" &
        " already exists, not redeclaring")
when not declared(cryptocorehchacha20constbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptocorehchacha20constbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_hchacha20.h:23:9
  else:
    let cryptocorehchacha20constbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_hchacha20.h:23:9
else:
  static :
    hint("Declaration of " & "cryptocorehchacha20constbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa20outputbytes):
  when cast[cuint](64'i64) is static:
    const
      cryptocoresalsa20outputbytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa20.h:11:9
  else:
    let cryptocoresalsa20outputbytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa20.h:11:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa20outputbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa20inputbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptocoresalsa20inputbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa20.h:15:9
  else:
    let cryptocoresalsa20inputbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa20.h:15:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa20inputbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa20keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptocoresalsa20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa20.h:19:9
  else:
    let cryptocoresalsa20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa20.h:19:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa20keybytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa20constbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptocoresalsa20constbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa20.h:23:9
  else:
    let cryptocoresalsa20constbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa20.h:23:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa20constbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa2012outputbytes):
  when cast[cuint](64'i64) is static:
    const
      cryptocoresalsa2012outputbytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa2012.h:11:9
  else:
    let cryptocoresalsa2012outputbytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa2012.h:11:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa2012outputbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa2012inputbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptocoresalsa2012inputbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa2012.h:15:9
  else:
    let cryptocoresalsa2012inputbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa2012.h:15:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa2012inputbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa2012keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptocoresalsa2012keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa2012.h:19:9
  else:
    let cryptocoresalsa2012keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa2012.h:19:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa2012keybytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa2012constbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptocoresalsa2012constbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa2012.h:23:9
  else:
    let cryptocoresalsa2012constbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa2012.h:23:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa2012constbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa208outputbytes):
  when cast[cuint](64'i64) is static:
    const
      cryptocoresalsa208outputbytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa208.h:11:9
  else:
    let cryptocoresalsa208outputbytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa208.h:11:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa208outputbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa208inputbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptocoresalsa208inputbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa208.h:16:9
  else:
    let cryptocoresalsa208inputbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa208.h:16:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa208inputbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa208keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptocoresalsa208keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa208.h:21:9
  else:
    let cryptocoresalsa208keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa208.h:21:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa208keybytes" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa208constbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptocoresalsa208constbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa208.h:26:9
  else:
    let cryptocoresalsa208constbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_core_salsa208.h:26:9
else:
  static :
    hint("Declaration of " & "cryptocoresalsa208constbytes" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bbytesmin):
  when cast[cuint](16'i64) is static:
    const
      cryptogenerichashblake2bbytesmin* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:33:9
  else:
    let cryptogenerichashblake2bbytesmin* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:33:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bbytesmin" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bbytesmax):
  when cast[cuint](64'i64) is static:
    const
      cryptogenerichashblake2bbytesmax* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:37:9
  else:
    let cryptogenerichashblake2bbytesmax* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:37:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bbytesmax" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptogenerichashblake2bbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:41:9
  else:
    let cryptogenerichashblake2bbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:41:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bbytes" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bkeybytesmin):
  when cast[cuint](16'i64) is static:
    const
      cryptogenerichashblake2bkeybytesmin* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:45:9
  else:
    let cryptogenerichashblake2bkeybytesmin* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:45:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bkeybytesmin" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bkeybytesmax):
  when cast[cuint](64'i64) is static:
    const
      cryptogenerichashblake2bkeybytesmax* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:49:9
  else:
    let cryptogenerichashblake2bkeybytesmax* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:49:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bkeybytesmax" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bkeybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptogenerichashblake2bkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:53:9
  else:
    let cryptogenerichashblake2bkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:53:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bsaltbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptogenerichashblake2bsaltbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:57:9
  else:
    let cryptogenerichashblake2bsaltbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:57:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bsaltbytes" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bpersonalbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptogenerichashblake2bpersonalbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:61:9
  else:
    let cryptogenerichashblake2bpersonalbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_generichash_blake2b.h:61:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bpersonalbytes" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashbytesmin):
  when cryptogenerichashblake2bbytesmin is typedesc:
    type
      cryptogenerichashbytesmin* = cryptogenerichashblake2bbytesmin ## Generated based on /usr/include/sodium/crypto_generichash.h:16:9
  else:
    when cryptogenerichashblake2bbytesmin is static:
      const
        cryptogenerichashbytesmin* = cryptogenerichashblake2bbytesmin ## Generated based on /usr/include/sodium/crypto_generichash.h:16:9
    else:
      let cryptogenerichashbytesmin* = cryptogenerichashblake2bbytesmin ## Generated based on /usr/include/sodium/crypto_generichash.h:16:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashbytesmin" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashbytesmax):
  when cryptogenerichashblake2bbytesmax is typedesc:
    type
      cryptogenerichashbytesmax* = cryptogenerichashblake2bbytesmax ## Generated based on /usr/include/sodium/crypto_generichash.h:20:9
  else:
    when cryptogenerichashblake2bbytesmax is static:
      const
        cryptogenerichashbytesmax* = cryptogenerichashblake2bbytesmax ## Generated based on /usr/include/sodium/crypto_generichash.h:20:9
    else:
      let cryptogenerichashbytesmax* = cryptogenerichashblake2bbytesmax ## Generated based on /usr/include/sodium/crypto_generichash.h:20:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashbytesmax" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashbytes):
  when cryptogenerichashblake2bbytes is typedesc:
    type
      cryptogenerichashbytes* = cryptogenerichashblake2bbytes ## Generated based on /usr/include/sodium/crypto_generichash.h:24:9
  else:
    when cryptogenerichashblake2bbytes is static:
      const
        cryptogenerichashbytes* = cryptogenerichashblake2bbytes ## Generated based on /usr/include/sodium/crypto_generichash.h:24:9
    else:
      let cryptogenerichashbytes* = cryptogenerichashblake2bbytes ## Generated based on /usr/include/sodium/crypto_generichash.h:24:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashbytes" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashkeybytesmin):
  when cryptogenerichashblake2bkeybytesmin is typedesc:
    type
      cryptogenerichashkeybytesmin* = cryptogenerichashblake2bkeybytesmin ## Generated based on /usr/include/sodium/crypto_generichash.h:28:9
  else:
    when cryptogenerichashblake2bkeybytesmin is static:
      const
        cryptogenerichashkeybytesmin* = cryptogenerichashblake2bkeybytesmin ## Generated based on /usr/include/sodium/crypto_generichash.h:28:9
    else:
      let cryptogenerichashkeybytesmin* = cryptogenerichashblake2bkeybytesmin ## Generated based on /usr/include/sodium/crypto_generichash.h:28:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashkeybytesmin" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashkeybytesmax):
  when cryptogenerichashblake2bkeybytesmax is typedesc:
    type
      cryptogenerichashkeybytesmax* = cryptogenerichashblake2bkeybytesmax ## Generated based on /usr/include/sodium/crypto_generichash.h:32:9
  else:
    when cryptogenerichashblake2bkeybytesmax is static:
      const
        cryptogenerichashkeybytesmax* = cryptogenerichashblake2bkeybytesmax ## Generated based on /usr/include/sodium/crypto_generichash.h:32:9
    else:
      let cryptogenerichashkeybytesmax* = cryptogenerichashblake2bkeybytesmax ## Generated based on /usr/include/sodium/crypto_generichash.h:32:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashkeybytesmax" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashkeybytes):
  when cryptogenerichashblake2bkeybytes is typedesc:
    type
      cryptogenerichashkeybytes* = cryptogenerichashblake2bkeybytes ## Generated based on /usr/include/sodium/crypto_generichash.h:36:9
  else:
    when cryptogenerichashblake2bkeybytes is static:
      const
        cryptogenerichashkeybytes* = cryptogenerichashblake2bkeybytes ## Generated based on /usr/include/sodium/crypto_generichash.h:36:9
    else:
      let cryptogenerichashkeybytes* = cryptogenerichashblake2bkeybytes ## Generated based on /usr/include/sodium/crypto_generichash.h:36:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashprimitive):
  when "blake2b" is static:
    const
      cryptogenerichashprimitive* = "blake2b" ## Generated based on /usr/include/sodium/crypto_generichash.h:40:9
  else:
    let cryptogenerichashprimitive* = "blake2b" ## Generated based on /usr/include/sodium/crypto_generichash.h:40:9
else:
  static :
    hint("Declaration of " & "cryptogenerichashprimitive" &
        " already exists, not redeclaring")
when not declared(cryptohashbytes):
  when cryptohashsha512bytes is typedesc:
    type
      cryptohashbytes* = cryptohashsha512bytes ## Generated based on /usr/include/sodium/crypto_hash.h:23:9
  else:
    when cryptohashsha512bytes is static:
      const
        cryptohashbytes* = cryptohashsha512bytes ## Generated based on /usr/include/sodium/crypto_hash.h:23:9
    else:
      let cryptohashbytes* = cryptohashsha512bytes ## Generated based on /usr/include/sodium/crypto_hash.h:23:9
else:
  static :
    hint("Declaration of " & "cryptohashbytes" &
        " already exists, not redeclaring")
when not declared(cryptohashprimitive):
  when "sha512" is static:
    const
      cryptohashprimitive* = "sha512" ## Generated based on /usr/include/sodium/crypto_hash.h:31:9
  else:
    let cryptohashprimitive* = "sha512" ## Generated based on /usr/include/sodium/crypto_hash.h:31:9
else:
  static :
    hint("Declaration of " & "cryptohashprimitive" &
        " already exists, not redeclaring")
when not declared(cryptokdfblake2bbytesmin):
  when 16 is static:
    const
      cryptokdfblake2bbytesmin* = 16 ## Generated based on /usr/include/sodium/crypto_kdf_blake2b.h:17:9
  else:
    let cryptokdfblake2bbytesmin* = 16 ## Generated based on /usr/include/sodium/crypto_kdf_blake2b.h:17:9
else:
  static :
    hint("Declaration of " & "cryptokdfblake2bbytesmin" &
        " already exists, not redeclaring")
when not declared(cryptokdfblake2bbytesmax):
  when 64 is static:
    const
      cryptokdfblake2bbytesmax* = 64 ## Generated based on /usr/include/sodium/crypto_kdf_blake2b.h:21:9
  else:
    let cryptokdfblake2bbytesmax* = 64 ## Generated based on /usr/include/sodium/crypto_kdf_blake2b.h:21:9
else:
  static :
    hint("Declaration of " & "cryptokdfblake2bbytesmax" &
        " already exists, not redeclaring")
when not declared(cryptokdfblake2bcontextbytes):
  when 8 is static:
    const
      cryptokdfblake2bcontextbytes* = 8 ## Generated based on /usr/include/sodium/crypto_kdf_blake2b.h:25:9
  else:
    let cryptokdfblake2bcontextbytes* = 8 ## Generated based on /usr/include/sodium/crypto_kdf_blake2b.h:25:9
else:
  static :
    hint("Declaration of " & "cryptokdfblake2bcontextbytes" &
        " already exists, not redeclaring")
when not declared(cryptokdfblake2bkeybytes):
  when 32 is static:
    const
      cryptokdfblake2bkeybytes* = 32 ## Generated based on /usr/include/sodium/crypto_kdf_blake2b.h:29:9
  else:
    let cryptokdfblake2bkeybytes* = 32 ## Generated based on /usr/include/sodium/crypto_kdf_blake2b.h:29:9
else:
  static :
    hint("Declaration of " & "cryptokdfblake2bkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptokdfbytesmin):
  when cryptokdfblake2bbytesmin is typedesc:
    type
      cryptokdfbytesmin* = cryptokdfblake2bbytesmin ## Generated based on /usr/include/sodium/crypto_kdf.h:17:9
  else:
    when cryptokdfblake2bbytesmin is static:
      const
        cryptokdfbytesmin* = cryptokdfblake2bbytesmin ## Generated based on /usr/include/sodium/crypto_kdf.h:17:9
    else:
      let cryptokdfbytesmin* = cryptokdfblake2bbytesmin ## Generated based on /usr/include/sodium/crypto_kdf.h:17:9
else:
  static :
    hint("Declaration of " & "cryptokdfbytesmin" &
        " already exists, not redeclaring")
when not declared(cryptokdfbytesmax):
  when cryptokdfblake2bbytesmax is typedesc:
    type
      cryptokdfbytesmax* = cryptokdfblake2bbytesmax ## Generated based on /usr/include/sodium/crypto_kdf.h:21:9
  else:
    when cryptokdfblake2bbytesmax is static:
      const
        cryptokdfbytesmax* = cryptokdfblake2bbytesmax ## Generated based on /usr/include/sodium/crypto_kdf.h:21:9
    else:
      let cryptokdfbytesmax* = cryptokdfblake2bbytesmax ## Generated based on /usr/include/sodium/crypto_kdf.h:21:9
else:
  static :
    hint("Declaration of " & "cryptokdfbytesmax" &
        " already exists, not redeclaring")
when not declared(cryptokdfcontextbytes):
  when cryptokdfblake2bcontextbytes is typedesc:
    type
      cryptokdfcontextbytes* = cryptokdfblake2bcontextbytes ## Generated based on /usr/include/sodium/crypto_kdf.h:25:9
  else:
    when cryptokdfblake2bcontextbytes is static:
      const
        cryptokdfcontextbytes* = cryptokdfblake2bcontextbytes ## Generated based on /usr/include/sodium/crypto_kdf.h:25:9
    else:
      let cryptokdfcontextbytes* = cryptokdfblake2bcontextbytes ## Generated based on /usr/include/sodium/crypto_kdf.h:25:9
else:
  static :
    hint("Declaration of " & "cryptokdfcontextbytes" &
        " already exists, not redeclaring")
when not declared(cryptokdfkeybytes):
  when cryptokdfblake2bkeybytes is typedesc:
    type
      cryptokdfkeybytes* = cryptokdfblake2bkeybytes ## Generated based on /usr/include/sodium/crypto_kdf.h:29:9
  else:
    when cryptokdfblake2bkeybytes is static:
      const
        cryptokdfkeybytes* = cryptokdfblake2bkeybytes ## Generated based on /usr/include/sodium/crypto_kdf.h:29:9
    else:
      let cryptokdfkeybytes* = cryptokdfblake2bkeybytes ## Generated based on /usr/include/sodium/crypto_kdf.h:29:9
else:
  static :
    hint("Declaration of " & "cryptokdfkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptokdfprimitive):
  when "blake2b" is static:
    const
      cryptokdfprimitive* = "blake2b" ## Generated based on /usr/include/sodium/crypto_kdf.h:33:9
  else:
    let cryptokdfprimitive* = "blake2b" ## Generated based on /usr/include/sodium/crypto_kdf.h:33:9
else:
  static :
    hint("Declaration of " & "cryptokdfprimitive" &
        " already exists, not redeclaring")
when not declared(cryptokxpublickeybytes):
  when 32 is static:
    const
      cryptokxpublickeybytes* = 32 ## Generated based on /usr/include/sodium/crypto_kx.h:15:9
  else:
    let cryptokxpublickeybytes* = 32 ## Generated based on /usr/include/sodium/crypto_kx.h:15:9
else:
  static :
    hint("Declaration of " & "cryptokxpublickeybytes" &
        " already exists, not redeclaring")
when not declared(cryptokxsecretkeybytes):
  when 32 is static:
    const
      cryptokxsecretkeybytes* = 32 ## Generated based on /usr/include/sodium/crypto_kx.h:19:9
  else:
    let cryptokxsecretkeybytes* = 32 ## Generated based on /usr/include/sodium/crypto_kx.h:19:9
else:
  static :
    hint("Declaration of " & "cryptokxsecretkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptokxseedbytes):
  when 32 is static:
    const
      cryptokxseedbytes* = 32 ## Generated based on /usr/include/sodium/crypto_kx.h:23:9
  else:
    let cryptokxseedbytes* = 32 ## Generated based on /usr/include/sodium/crypto_kx.h:23:9
else:
  static :
    hint("Declaration of " & "cryptokxseedbytes" &
        " already exists, not redeclaring")
when not declared(cryptokxsessionkeybytes):
  when 32 is static:
    const
      cryptokxsessionkeybytes* = 32 ## Generated based on /usr/include/sodium/crypto_kx.h:27:9
  else:
    let cryptokxsessionkeybytes* = 32 ## Generated based on /usr/include/sodium/crypto_kx.h:27:9
else:
  static :
    hint("Declaration of " & "cryptokxsessionkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptokxprimitive):
  when "x25519blake2b" is static:
    const
      cryptokxprimitive* = "x25519blake2b" ## Generated based on /usr/include/sodium/crypto_kx.h:31:9
  else:
    let cryptokxprimitive* = "x25519blake2b" ## Generated based on /usr/include/sodium/crypto_kx.h:31:9
else:
  static :
    hint("Declaration of " & "cryptokxprimitive" &
        " already exists, not redeclaring")
when not declared(internalstdioh):
  when 1 is static:
    const
      internalstdioh* = 1    ## Generated based on /usr/include/stdio.h:25:9
  else:
    let internalstdioh* = 1  ## Generated based on /usr/include/stdio.h:25:9
else:
  static :
    hint("Declaration of " & "internalstdioh" &
        " already exists, not redeclaring")
when not declared(compilerfpostdefined):
  when 1 is static:
    const
      compilerfpostdefined* = 1 ## Generated based on /usr/include/bits/types/__fpos_t.h:2:9
  else:
    let compilerfpostdefined* = 1 ## Generated based on /usr/include/bits/types/__fpos_t.h:2:9
else:
  static :
    hint("Declaration of " & "compilerfpostdefined" &
        " already exists, not redeclaring")
when not declared(compilermbstatetdefined):
  when 1 is static:
    const
      compilermbstatetdefined* = 1 ## Generated based on /usr/include/bits/types/__mbstate_t.h:2:9
  else:
    let compilermbstatetdefined* = 1 ## Generated based on /usr/include/bits/types/__mbstate_t.h:2:9
else:
  static :
    hint("Declaration of " & "compilermbstatetdefined" &
        " already exists, not redeclaring")
when not declared(compilerfpos64tdefined):
  when 1 is static:
    const
      compilerfpos64tdefined* = 1 ## Generated based on /usr/include/bits/types/__fpos64_t.h:2:9
  else:
    let compilerfpos64tdefined* = 1 ## Generated based on /usr/include/bits/types/__fpos64_t.h:2:9
else:
  static :
    hint("Declaration of " & "compilerfpos64tdefined" &
        " already exists, not redeclaring")
when not declared(compilerfiledefined):
  when 1 is static:
    const
      compilerfiledefined* = 1 ## Generated based on /usr/include/bits/types/__FILE.h:2:9
  else:
    let compilerfiledefined* = 1 ## Generated based on /usr/include/bits/types/__FILE.h:2:9
else:
  static :
    hint("Declaration of " & "compilerfiledefined" &
        " already exists, not redeclaring")
when not declared(compilerfiledefinedconst):
  when 1 is static:
    const
      compilerfiledefinedconst* = 1 ## Generated based on /usr/include/bits/types/FILE.h:2:9
  else:
    let compilerfiledefinedconst* = 1 ## Generated based on /usr/include/bits/types/FILE.h:2:9
else:
  static :
    hint("Declaration of " & "compilerfiledefinedconst" &
        " already exists, not redeclaring")
when not declared(compilerstructfiledefined):
  when 1 is static:
    const
      compilerstructfiledefined* = 1 ## Generated based on /usr/include/bits/types/struct_FILE.h:19:9
  else:
    let compilerstructfiledefined* = 1 ## Generated based on /usr/include/bits/types/struct_FILE.h:19:9
else:
  static :
    hint("Declaration of " & "compilerstructfiledefined" &
        " already exists, not redeclaring")
when not declared(internalioeofseen):
  when 16 is static:
    const
      internalioeofseen* = 16 ## Generated based on /usr/include/bits/types/struct_FILE.h:111:9
  else:
    let internalioeofseen* = 16 ## Generated based on /usr/include/bits/types/struct_FILE.h:111:9
else:
  static :
    hint("Declaration of " & "internalioeofseen" &
        " already exists, not redeclaring")
when not declared(internalioerrseen):
  when 32 is static:
    const
      internalioerrseen* = 32 ## Generated based on /usr/include/bits/types/struct_FILE.h:114:9
  else:
    let internalioerrseen* = 32 ## Generated based on /usr/include/bits/types/struct_FILE.h:114:9
else:
  static :
    hint("Declaration of " & "internalioerrseen" &
        " already exists, not redeclaring")
when not declared(internaliouserlock):
  when 32768 is static:
    const
      internaliouserlock* = 32768 ## Generated based on /usr/include/bits/types/struct_FILE.h:117:9
  else:
    let internaliouserlock* = 32768 ## Generated based on /usr/include/bits/types/struct_FILE.h:117:9
else:
  static :
    hint("Declaration of " & "internaliouserlock" &
        " already exists, not redeclaring")
when not declared(compilercookieiofunctionstdefined):
  when 1 is static:
    const
      compilercookieiofunctionstdefined* = 1 ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:19:9
  else:
    let compilercookieiofunctionstdefined* = 1 ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:19:9
else:
  static :
    hint("Declaration of " & "compilercookieiofunctionstdefined" &
        " already exists, not redeclaring")
when not declared(internaliofbf):
  when 0 is static:
    const
      internaliofbf* = 0     ## Generated based on /usr/include/stdio.h:94:9
  else:
    let internaliofbf* = 0   ## Generated based on /usr/include/stdio.h:94:9
else:
  static :
    hint("Declaration of " & "internaliofbf" &
        " already exists, not redeclaring")
when not declared(internaliolbf):
  when 1 is static:
    const
      internaliolbf* = 1     ## Generated based on /usr/include/stdio.h:95:9
  else:
    let internaliolbf* = 1   ## Generated based on /usr/include/stdio.h:95:9
else:
  static :
    hint("Declaration of " & "internaliolbf" &
        " already exists, not redeclaring")
when not declared(internalionbf):
  when 2 is static:
    const
      internalionbf* = 2     ## Generated based on /usr/include/stdio.h:96:9
  else:
    let internalionbf* = 2   ## Generated based on /usr/include/stdio.h:96:9
else:
  static :
    hint("Declaration of " & "internalionbf" &
        " already exists, not redeclaring")
when not declared(Bufsiz):
  when 8192 is static:
    const
      Bufsiz* = 8192         ## Generated based on /usr/include/stdio.h:100:9
  else:
    let Bufsiz* = 8192       ## Generated based on /usr/include/stdio.h:100:9
else:
  static :
    hint("Declaration of " & "Bufsiz" & " already exists, not redeclaring")
when not declared(Eof):
  when -1 is static:
    const
      Eof* = -1              ## Generated based on /usr/include/stdio.h:105:9
  else:
    let Eof* = -1            ## Generated based on /usr/include/stdio.h:105:9
else:
  static :
    hint("Declaration of " & "Eof" & " already exists, not redeclaring")
when not declared(Seekset):
  when 0 is static:
    const
      Seekset* = 0           ## Generated based on /usr/include/stdio.h:110:9
  else:
    let Seekset* = 0         ## Generated based on /usr/include/stdio.h:110:9
else:
  static :
    hint("Declaration of " & "Seekset" & " already exists, not redeclaring")
when not declared(Seekcur):
  when 1 is static:
    const
      Seekcur* = 1           ## Generated based on /usr/include/stdio.h:111:9
  else:
    let Seekcur* = 1         ## Generated based on /usr/include/stdio.h:111:9
else:
  static :
    hint("Declaration of " & "Seekcur" & " already exists, not redeclaring")
when not declared(Seekend):
  when 2 is static:
    const
      Seekend* = 2           ## Generated based on /usr/include/stdio.h:112:9
  else:
    let Seekend* = 2         ## Generated based on /usr/include/stdio.h:112:9
else:
  static :
    hint("Declaration of " & "Seekend" & " already exists, not redeclaring")
when not declared(Ptmpdir):
  when "/tmp" is static:
    const
      Ptmpdir* = "/tmp"      ## Generated based on /usr/include/stdio.h:121:10
  else:
    let Ptmpdir* = "/tmp"    ## Generated based on /usr/include/stdio.h:121:10
else:
  static :
    hint("Declaration of " & "Ptmpdir" & " already exists, not redeclaring")
when not declared(Ltmpnam):
  when 20 is static:
    const
      Ltmpnam* = 20          ## Generated based on /usr/include/stdio.h:124:9
  else:
    let Ltmpnam* = 20        ## Generated based on /usr/include/stdio.h:124:9
else:
  static :
    hint("Declaration of " & "Ltmpnam" & " already exists, not redeclaring")
when not declared(Tmpmax):
  when 238328 is static:
    const
      Tmpmax* = 238328       ## Generated based on /usr/include/stdio.h:125:9
  else:
    let Tmpmax* = 238328     ## Generated based on /usr/include/stdio.h:125:9
else:
  static :
    hint("Declaration of " & "Tmpmax" & " already exists, not redeclaring")
when not declared(internalbitsstdiolimh):
  when 1 is static:
    const
      internalbitsstdiolimh* = 1 ## Generated based on /usr/include/bits/stdio_lim.h:20:9
  else:
    let internalbitsstdiolimh* = 1 ## Generated based on /usr/include/bits/stdio_lim.h:20:9
else:
  static :
    hint("Declaration of " & "internalbitsstdiolimh" &
        " already exists, not redeclaring")
when not declared(Filenamemax):
  when 4096 is static:
    const
      Filenamemax* = 4096    ## Generated based on /usr/include/bits/stdio_lim.h:26:9
  else:
    let Filenamemax* = 4096  ## Generated based on /usr/include/bits/stdio_lim.h:26:9
else:
  static :
    hint("Declaration of " & "Filenamemax" & " already exists, not redeclaring")
when not declared(Lctermid):
  when 9 is static:
    const
      Lctermid* = 9          ## Generated based on /usr/include/stdio.h:132:10
  else:
    let Lctermid* = 9        ## Generated based on /usr/include/stdio.h:132:10
else:
  static :
    hint("Declaration of " & "Lctermid" & " already exists, not redeclaring")
when not declared(Fopenmax):
  when 16 is static:
    const
      Fopenmax* = 16         ## Generated based on /usr/include/stdio.h:139:9
  else:
    let Fopenmax* = 16       ## Generated based on /usr/include/stdio.h:139:9
else:
  static :
    hint("Declaration of " & "Fopenmax" & " already exists, not redeclaring")
when not declared(stdin):
  var stdin* {.importc: "stdin".}: ptr File_520094480
else:
  static :
    hint("Declaration of " & "stdin" & " already exists, not redeclaring")
when not declared(stdout):
  var stdout* {.importc: "stdout".}: ptr File_520094480
else:
  static :
    hint("Declaration of " & "stdout" & " already exists, not redeclaring")
when not declared(stderr):
  var stderr* {.importc: "stderr".}: ptr File_520094480
else:
  static :
    hint("Declaration of " & "stderr" & " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305bytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoonetimeauthpoly1305bytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_onetimeauth_poly1305.h:26:9
  else:
    let cryptoonetimeauthpoly1305bytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_onetimeauth_poly1305.h:26:9
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305bytes" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoonetimeauthpoly1305keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_onetimeauth_poly1305.h:30:9
  else:
    let cryptoonetimeauthpoly1305keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_onetimeauth_poly1305.h:30:9
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305keybytes" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthbytes):
  when cryptoonetimeauthpoly1305bytes is typedesc:
    type
      cryptoonetimeauthbytes* = cryptoonetimeauthpoly1305bytes ## Generated based on /usr/include/sodium/crypto_onetimeauth.h:21:9
  else:
    when cryptoonetimeauthpoly1305bytes is static:
      const
        cryptoonetimeauthbytes* = cryptoonetimeauthpoly1305bytes ## Generated based on /usr/include/sodium/crypto_onetimeauth.h:21:9
    else:
      let cryptoonetimeauthbytes* = cryptoonetimeauthpoly1305bytes ## Generated based on /usr/include/sodium/crypto_onetimeauth.h:21:9
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthbytes" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthkeybytes):
  when cryptoonetimeauthpoly1305keybytes is typedesc:
    type
      cryptoonetimeauthkeybytes* = cryptoonetimeauthpoly1305keybytes ## Generated based on /usr/include/sodium/crypto_onetimeauth.h:25:9
  else:
    when cryptoonetimeauthpoly1305keybytes is static:
      const
        cryptoonetimeauthkeybytes* = cryptoonetimeauthpoly1305keybytes ## Generated based on /usr/include/sodium/crypto_onetimeauth.h:25:9
    else:
      let cryptoonetimeauthkeybytes* = cryptoonetimeauthpoly1305keybytes ## Generated based on /usr/include/sodium/crypto_onetimeauth.h:25:9
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthprimitive):
  when "poly1305" is static:
    const
      cryptoonetimeauthprimitive* = "poly1305" ## Generated based on /usr/include/sodium/crypto_onetimeauth.h:29:9
  else:
    let cryptoonetimeauthprimitive* = "poly1305" ## Generated based on /usr/include/sodium/crypto_onetimeauth.h:29:9
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthprimitive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2ialgargon2i13):
  when 1 is static:
    const
      cryptopwhashargon2ialgargon2i13* = 1 ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:17:9
  else:
    let cryptopwhashargon2ialgargon2i13* = 1 ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:17:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2ialgargon2i13" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2ibytesmin):
  when cast[cuint](16'i64) is static:
    const
      cryptopwhashargon2ibytesmin* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:21:9
  else:
    let cryptopwhashargon2ibytesmin* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:21:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2ibytesmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2ipasswdmin):
  when cast[cuint](0'i64) is static:
    const
      cryptopwhashargon2ipasswdmin* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:29:9
  else:
    let cryptopwhashargon2ipasswdmin* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:29:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2ipasswdmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2ipasswdmax):
  when cast[cuint](4294967295'i64) is static:
    const
      cryptopwhashargon2ipasswdmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:33:9
  else:
    let cryptopwhashargon2ipasswdmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:33:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2ipasswdmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2isaltbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptopwhashargon2isaltbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:37:9
  else:
    let cryptopwhashargon2isaltbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:37:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2isaltbytes" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2istrbytes):
  when cast[cuint](128'i64) is static:
    const
      cryptopwhashargon2istrbytes* = cast[cuint](128'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:41:9
  else:
    let cryptopwhashargon2istrbytes* = cast[cuint](128'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:41:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2istrbytes" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2istrprefix):
  when "$argon2i$" is static:
    const
      cryptopwhashargon2istrprefix* = "$argon2i$" ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:45:9
  else:
    let cryptopwhashargon2istrprefix* = "$argon2i$" ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:45:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2istrprefix" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2iopslimitmin):
  when cast[cuint](3'i64) is static:
    const
      cryptopwhashargon2iopslimitmin* = cast[cuint](3'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:49:9
  else:
    let cryptopwhashargon2iopslimitmin* = cast[cuint](3'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:49:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2iopslimitmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2iopslimitmax):
  when cast[cuint](4294967295'i64) is static:
    const
      cryptopwhashargon2iopslimitmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:53:9
  else:
    let cryptopwhashargon2iopslimitmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:53:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2iopslimitmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2imemlimitmin):
  when cast[cuint](8192'i64) is static:
    const
      cryptopwhashargon2imemlimitmin* = cast[cuint](8192'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:57:9
  else:
    let cryptopwhashargon2imemlimitmin* = cast[cuint](8192'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:57:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2imemlimitmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2iopslimitinteractive):
  when cast[cuint](4'i64) is static:
    const
      cryptopwhashargon2iopslimitinteractive* = cast[cuint](4'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:66:9
  else:
    let cryptopwhashargon2iopslimitinteractive* = cast[cuint](4'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:66:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2iopslimitinteractive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2imemlimitinteractive):
  when cast[cuint](33554432'i64) is static:
    const
      cryptopwhashargon2imemlimitinteractive* = cast[cuint](33554432'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:70:9
  else:
    let cryptopwhashargon2imemlimitinteractive* = cast[cuint](33554432'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:70:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2imemlimitinteractive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2iopslimitmoderate):
  when cast[cuint](6'i64) is static:
    const
      cryptopwhashargon2iopslimitmoderate* = cast[cuint](6'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:74:9
  else:
    let cryptopwhashargon2iopslimitmoderate* = cast[cuint](6'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:74:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2iopslimitmoderate" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2imemlimitmoderate):
  when cast[cuint](134217728'i64) is static:
    const
      cryptopwhashargon2imemlimitmoderate* = cast[cuint](134217728'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:78:9
  else:
    let cryptopwhashargon2imemlimitmoderate* = cast[cuint](134217728'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:78:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2imemlimitmoderate" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2iopslimitsensitive):
  when cast[cuint](8'i64) is static:
    const
      cryptopwhashargon2iopslimitsensitive* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:82:9
  else:
    let cryptopwhashargon2iopslimitsensitive* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:82:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2iopslimitsensitive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2imemlimitsensitive):
  when cast[cuint](536870912'i64) is static:
    const
      cryptopwhashargon2imemlimitsensitive* = cast[cuint](536870912'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:86:9
  else:
    let cryptopwhashargon2imemlimitsensitive* = cast[cuint](536870912'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2i.h:86:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2imemlimitsensitive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idalgargon2id13):
  when 2 is static:
    const
      cryptopwhashargon2idalgargon2id13* = 2 ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:17:9
  else:
    let cryptopwhashargon2idalgargon2id13* = 2 ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:17:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idalgargon2id13" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idbytesmin):
  when cast[cuint](16'i64) is static:
    const
      cryptopwhashargon2idbytesmin* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:21:9
  else:
    let cryptopwhashargon2idbytesmin* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:21:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idbytesmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idpasswdmin):
  when cast[cuint](0'i64) is static:
    const
      cryptopwhashargon2idpasswdmin* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:29:9
  else:
    let cryptopwhashargon2idpasswdmin* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:29:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idpasswdmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idpasswdmax):
  when cast[cuint](4294967295'i64) is static:
    const
      cryptopwhashargon2idpasswdmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:33:9
  else:
    let cryptopwhashargon2idpasswdmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:33:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idpasswdmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idsaltbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptopwhashargon2idsaltbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:37:9
  else:
    let cryptopwhashargon2idsaltbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:37:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idsaltbytes" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idstrbytes):
  when cast[cuint](128'i64) is static:
    const
      cryptopwhashargon2idstrbytes* = cast[cuint](128'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:41:9
  else:
    let cryptopwhashargon2idstrbytes* = cast[cuint](128'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:41:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idstrbytes" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idstrprefix):
  when "$argon2id$" is static:
    const
      cryptopwhashargon2idstrprefix* = "$argon2id$" ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:45:9
  else:
    let cryptopwhashargon2idstrprefix* = "$argon2id$" ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:45:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idstrprefix" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idopslimitmin):
  when cast[cuint](1'i64) is static:
    const
      cryptopwhashargon2idopslimitmin* = cast[cuint](1'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:49:9
  else:
    let cryptopwhashargon2idopslimitmin* = cast[cuint](1'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:49:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idopslimitmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idopslimitmax):
  when cast[cuint](4294967295'i64) is static:
    const
      cryptopwhashargon2idopslimitmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:53:9
  else:
    let cryptopwhashargon2idopslimitmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:53:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idopslimitmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idmemlimitmin):
  when cast[cuint](8192'i64) is static:
    const
      cryptopwhashargon2idmemlimitmin* = cast[cuint](8192'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:57:9
  else:
    let cryptopwhashargon2idmemlimitmin* = cast[cuint](8192'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:57:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idmemlimitmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idopslimitinteractive):
  when cast[cuint](2'i64) is static:
    const
      cryptopwhashargon2idopslimitinteractive* = cast[cuint](2'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:66:9
  else:
    let cryptopwhashargon2idopslimitinteractive* = cast[cuint](2'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:66:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idopslimitinteractive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idmemlimitinteractive):
  when cast[cuint](67108864'i64) is static:
    const
      cryptopwhashargon2idmemlimitinteractive* = cast[cuint](67108864'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:70:9
  else:
    let cryptopwhashargon2idmemlimitinteractive* = cast[cuint](67108864'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:70:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idmemlimitinteractive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idopslimitmoderate):
  when cast[cuint](3'i64) is static:
    const
      cryptopwhashargon2idopslimitmoderate* = cast[cuint](3'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:74:9
  else:
    let cryptopwhashargon2idopslimitmoderate* = cast[cuint](3'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:74:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idopslimitmoderate" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idmemlimitmoderate):
  when cast[cuint](268435456'i64) is static:
    const
      cryptopwhashargon2idmemlimitmoderate* = cast[cuint](268435456'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:78:9
  else:
    let cryptopwhashargon2idmemlimitmoderate* = cast[cuint](268435456'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:78:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idmemlimitmoderate" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idopslimitsensitive):
  when cast[cuint](4'i64) is static:
    const
      cryptopwhashargon2idopslimitsensitive* = cast[cuint](4'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:82:9
  else:
    let cryptopwhashargon2idopslimitsensitive* = cast[cuint](4'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:82:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idopslimitsensitive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idmemlimitsensitive):
  when cast[cuint](1073741824'i64) is static:
    const
      cryptopwhashargon2idmemlimitsensitive* = cast[cuint](1073741824'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:86:9
  else:
    let cryptopwhashargon2idmemlimitsensitive* = cast[cuint](1073741824'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_argon2id.h:86:9
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idmemlimitsensitive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashalgargon2i13):
  when cryptopwhashargon2ialgargon2i13 is typedesc:
    type
      cryptopwhashalgargon2i13* = cryptopwhashargon2ialgargon2i13 ## Generated based on /usr/include/sodium/crypto_pwhash.h:17:9
  else:
    when cryptopwhashargon2ialgargon2i13 is static:
      const
        cryptopwhashalgargon2i13* = cryptopwhashargon2ialgargon2i13 ## Generated based on /usr/include/sodium/crypto_pwhash.h:17:9
    else:
      let cryptopwhashalgargon2i13* = cryptopwhashargon2ialgargon2i13 ## Generated based on /usr/include/sodium/crypto_pwhash.h:17:9
else:
  static :
    hint("Declaration of " & "cryptopwhashalgargon2i13" &
        " already exists, not redeclaring")
when not declared(cryptopwhashalgargon2id13):
  when cryptopwhashargon2idalgargon2id13 is typedesc:
    type
      cryptopwhashalgargon2id13* = cryptopwhashargon2idalgargon2id13 ## Generated based on /usr/include/sodium/crypto_pwhash.h:21:9
  else:
    when cryptopwhashargon2idalgargon2id13 is static:
      const
        cryptopwhashalgargon2id13* = cryptopwhashargon2idalgargon2id13 ## Generated based on /usr/include/sodium/crypto_pwhash.h:21:9
    else:
      let cryptopwhashalgargon2id13* = cryptopwhashargon2idalgargon2id13 ## Generated based on /usr/include/sodium/crypto_pwhash.h:21:9
else:
  static :
    hint("Declaration of " & "cryptopwhashalgargon2id13" &
        " already exists, not redeclaring")
when not declared(cryptopwhashbytesmin):
  when cryptopwhashargon2idbytesmin is typedesc:
    type
      cryptopwhashbytesmin* = cryptopwhashargon2idbytesmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:29:9
  else:
    when cryptopwhashargon2idbytesmin is static:
      const
        cryptopwhashbytesmin* = cryptopwhashargon2idbytesmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:29:9
    else:
      let cryptopwhashbytesmin* = cryptopwhashargon2idbytesmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:29:9
else:
  static :
    hint("Declaration of " & "cryptopwhashbytesmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashpasswdmin):
  when cryptopwhashargon2idpasswdmin is typedesc:
    type
      cryptopwhashpasswdmin* = cryptopwhashargon2idpasswdmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:37:9
  else:
    when cryptopwhashargon2idpasswdmin is static:
      const
        cryptopwhashpasswdmin* = cryptopwhashargon2idpasswdmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:37:9
    else:
      let cryptopwhashpasswdmin* = cryptopwhashargon2idpasswdmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:37:9
else:
  static :
    hint("Declaration of " & "cryptopwhashpasswdmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashpasswdmax):
  when cryptopwhashargon2idpasswdmax is typedesc:
    type
      cryptopwhashpasswdmax* = cryptopwhashargon2idpasswdmax ## Generated based on /usr/include/sodium/crypto_pwhash.h:41:9
  else:
    when cryptopwhashargon2idpasswdmax is static:
      const
        cryptopwhashpasswdmax* = cryptopwhashargon2idpasswdmax ## Generated based on /usr/include/sodium/crypto_pwhash.h:41:9
    else:
      let cryptopwhashpasswdmax* = cryptopwhashargon2idpasswdmax ## Generated based on /usr/include/sodium/crypto_pwhash.h:41:9
else:
  static :
    hint("Declaration of " & "cryptopwhashpasswdmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashsaltbytes):
  when cryptopwhashargon2idsaltbytes is typedesc:
    type
      cryptopwhashsaltbytes* = cryptopwhashargon2idsaltbytes ## Generated based on /usr/include/sodium/crypto_pwhash.h:45:9
  else:
    when cryptopwhashargon2idsaltbytes is static:
      const
        cryptopwhashsaltbytes* = cryptopwhashargon2idsaltbytes ## Generated based on /usr/include/sodium/crypto_pwhash.h:45:9
    else:
      let cryptopwhashsaltbytes* = cryptopwhashargon2idsaltbytes ## Generated based on /usr/include/sodium/crypto_pwhash.h:45:9
else:
  static :
    hint("Declaration of " & "cryptopwhashsaltbytes" &
        " already exists, not redeclaring")
when not declared(cryptopwhashstrbytes):
  when cryptopwhashargon2idstrbytes is typedesc:
    type
      cryptopwhashstrbytes* = cryptopwhashargon2idstrbytes ## Generated based on /usr/include/sodium/crypto_pwhash.h:49:9
  else:
    when cryptopwhashargon2idstrbytes is static:
      const
        cryptopwhashstrbytes* = cryptopwhashargon2idstrbytes ## Generated based on /usr/include/sodium/crypto_pwhash.h:49:9
    else:
      let cryptopwhashstrbytes* = cryptopwhashargon2idstrbytes ## Generated based on /usr/include/sodium/crypto_pwhash.h:49:9
else:
  static :
    hint("Declaration of " & "cryptopwhashstrbytes" &
        " already exists, not redeclaring")
when not declared(cryptopwhashstrprefix):
  when cryptopwhashargon2idstrprefix is typedesc:
    type
      cryptopwhashstrprefix* = cryptopwhashargon2idstrprefix ## Generated based on /usr/include/sodium/crypto_pwhash.h:53:9
  else:
    when cryptopwhashargon2idstrprefix is static:
      const
        cryptopwhashstrprefix* = cryptopwhashargon2idstrprefix ## Generated based on /usr/include/sodium/crypto_pwhash.h:53:9
    else:
      let cryptopwhashstrprefix* = cryptopwhashargon2idstrprefix ## Generated based on /usr/include/sodium/crypto_pwhash.h:53:9
else:
  static :
    hint("Declaration of " & "cryptopwhashstrprefix" &
        " already exists, not redeclaring")
when not declared(cryptopwhashopslimitmin):
  when cryptopwhashargon2idopslimitmin is typedesc:
    type
      cryptopwhashopslimitmin* = cryptopwhashargon2idopslimitmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:57:9
  else:
    when cryptopwhashargon2idopslimitmin is static:
      const
        cryptopwhashopslimitmin* = cryptopwhashargon2idopslimitmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:57:9
    else:
      let cryptopwhashopslimitmin* = cryptopwhashargon2idopslimitmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:57:9
else:
  static :
    hint("Declaration of " & "cryptopwhashopslimitmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashopslimitmax):
  when cryptopwhashargon2idopslimitmax is typedesc:
    type
      cryptopwhashopslimitmax* = cryptopwhashargon2idopslimitmax ## Generated based on /usr/include/sodium/crypto_pwhash.h:61:9
  else:
    when cryptopwhashargon2idopslimitmax is static:
      const
        cryptopwhashopslimitmax* = cryptopwhashargon2idopslimitmax ## Generated based on /usr/include/sodium/crypto_pwhash.h:61:9
    else:
      let cryptopwhashopslimitmax* = cryptopwhashargon2idopslimitmax ## Generated based on /usr/include/sodium/crypto_pwhash.h:61:9
else:
  static :
    hint("Declaration of " & "cryptopwhashopslimitmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashmemlimitmin):
  when cryptopwhashargon2idmemlimitmin is typedesc:
    type
      cryptopwhashmemlimitmin* = cryptopwhashargon2idmemlimitmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:65:9
  else:
    when cryptopwhashargon2idmemlimitmin is static:
      const
        cryptopwhashmemlimitmin* = cryptopwhashargon2idmemlimitmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:65:9
    else:
      let cryptopwhashmemlimitmin* = cryptopwhashargon2idmemlimitmin ## Generated based on /usr/include/sodium/crypto_pwhash.h:65:9
else:
  static :
    hint("Declaration of " & "cryptopwhashmemlimitmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashopslimitinteractive):
  when cryptopwhashargon2idopslimitinteractive is typedesc:
    type
      cryptopwhashopslimitinteractive* = cryptopwhashargon2idopslimitinteractive ## Generated based on /usr/include/sodium/crypto_pwhash.h:73:9
  else:
    when cryptopwhashargon2idopslimitinteractive is static:
      const
        cryptopwhashopslimitinteractive* = cryptopwhashargon2idopslimitinteractive ## Generated based on /usr/include/sodium/crypto_pwhash.h:73:9
    else:
      let cryptopwhashopslimitinteractive* = cryptopwhashargon2idopslimitinteractive ## Generated based on /usr/include/sodium/crypto_pwhash.h:73:9
else:
  static :
    hint("Declaration of " & "cryptopwhashopslimitinteractive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashmemlimitinteractive):
  when cryptopwhashargon2idmemlimitinteractive is typedesc:
    type
      cryptopwhashmemlimitinteractive* = cryptopwhashargon2idmemlimitinteractive ## Generated based on /usr/include/sodium/crypto_pwhash.h:77:9
  else:
    when cryptopwhashargon2idmemlimitinteractive is static:
      const
        cryptopwhashmemlimitinteractive* = cryptopwhashargon2idmemlimitinteractive ## Generated based on /usr/include/sodium/crypto_pwhash.h:77:9
    else:
      let cryptopwhashmemlimitinteractive* = cryptopwhashargon2idmemlimitinteractive ## Generated based on /usr/include/sodium/crypto_pwhash.h:77:9
else:
  static :
    hint("Declaration of " & "cryptopwhashmemlimitinteractive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashopslimitmoderate):
  when cryptopwhashargon2idopslimitmoderate is typedesc:
    type
      cryptopwhashopslimitmoderate* = cryptopwhashargon2idopslimitmoderate ## Generated based on /usr/include/sodium/crypto_pwhash.h:81:9
  else:
    when cryptopwhashargon2idopslimitmoderate is static:
      const
        cryptopwhashopslimitmoderate* = cryptopwhashargon2idopslimitmoderate ## Generated based on /usr/include/sodium/crypto_pwhash.h:81:9
    else:
      let cryptopwhashopslimitmoderate* = cryptopwhashargon2idopslimitmoderate ## Generated based on /usr/include/sodium/crypto_pwhash.h:81:9
else:
  static :
    hint("Declaration of " & "cryptopwhashopslimitmoderate" &
        " already exists, not redeclaring")
when not declared(cryptopwhashmemlimitmoderate):
  when cryptopwhashargon2idmemlimitmoderate is typedesc:
    type
      cryptopwhashmemlimitmoderate* = cryptopwhashargon2idmemlimitmoderate ## Generated based on /usr/include/sodium/crypto_pwhash.h:85:9
  else:
    when cryptopwhashargon2idmemlimitmoderate is static:
      const
        cryptopwhashmemlimitmoderate* = cryptopwhashargon2idmemlimitmoderate ## Generated based on /usr/include/sodium/crypto_pwhash.h:85:9
    else:
      let cryptopwhashmemlimitmoderate* = cryptopwhashargon2idmemlimitmoderate ## Generated based on /usr/include/sodium/crypto_pwhash.h:85:9
else:
  static :
    hint("Declaration of " & "cryptopwhashmemlimitmoderate" &
        " already exists, not redeclaring")
when not declared(cryptopwhashopslimitsensitive):
  when cryptopwhashargon2idopslimitsensitive is typedesc:
    type
      cryptopwhashopslimitsensitive* = cryptopwhashargon2idopslimitsensitive ## Generated based on /usr/include/sodium/crypto_pwhash.h:89:9
  else:
    when cryptopwhashargon2idopslimitsensitive is static:
      const
        cryptopwhashopslimitsensitive* = cryptopwhashargon2idopslimitsensitive ## Generated based on /usr/include/sodium/crypto_pwhash.h:89:9
    else:
      let cryptopwhashopslimitsensitive* = cryptopwhashargon2idopslimitsensitive ## Generated based on /usr/include/sodium/crypto_pwhash.h:89:9
else:
  static :
    hint("Declaration of " & "cryptopwhashopslimitsensitive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashmemlimitsensitive):
  when cryptopwhashargon2idmemlimitsensitive is typedesc:
    type
      cryptopwhashmemlimitsensitive* = cryptopwhashargon2idmemlimitsensitive ## Generated based on /usr/include/sodium/crypto_pwhash.h:93:9
  else:
    when cryptopwhashargon2idmemlimitsensitive is static:
      const
        cryptopwhashmemlimitsensitive* = cryptopwhashargon2idmemlimitsensitive ## Generated based on /usr/include/sodium/crypto_pwhash.h:93:9
    else:
      let cryptopwhashmemlimitsensitive* = cryptopwhashargon2idmemlimitsensitive ## Generated based on /usr/include/sodium/crypto_pwhash.h:93:9
else:
  static :
    hint("Declaration of " & "cryptopwhashmemlimitsensitive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashprimitive):
  when "argon2i" is static:
    const
      cryptopwhashprimitive* = "argon2i" ## Generated based on /usr/include/sodium/crypto_pwhash.h:138:9
  else:
    let cryptopwhashprimitive* = "argon2i" ## Generated based on /usr/include/sodium/crypto_pwhash.h:138:9
else:
  static :
    hint("Declaration of " & "cryptopwhashprimitive" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultcurve25519bytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoscalarmultcurve25519bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_curve25519.h:12:9
  else:
    let cryptoscalarmultcurve25519bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_curve25519.h:12:9
else:
  static :
    hint("Declaration of " & "cryptoscalarmultcurve25519bytes" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultcurve25519scalarbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoscalarmultcurve25519scalarbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_curve25519.h:16:9
  else:
    let cryptoscalarmultcurve25519scalarbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_curve25519.h:16:9
else:
  static :
    hint("Declaration of " & "cryptoscalarmultcurve25519scalarbytes" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultbytes):
  when cryptoscalarmultcurve25519bytes is typedesc:
    type
      cryptoscalarmultbytes* = cryptoscalarmultcurve25519bytes ## Generated based on /usr/include/sodium/crypto_scalarmult.h:13:9
  else:
    when cryptoscalarmultcurve25519bytes is static:
      const
        cryptoscalarmultbytes* = cryptoscalarmultcurve25519bytes ## Generated based on /usr/include/sodium/crypto_scalarmult.h:13:9
    else:
      let cryptoscalarmultbytes* = cryptoscalarmultcurve25519bytes ## Generated based on /usr/include/sodium/crypto_scalarmult.h:13:9
else:
  static :
    hint("Declaration of " & "cryptoscalarmultbytes" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultscalarbytes):
  when cryptoscalarmultcurve25519scalarbytes is typedesc:
    type
      cryptoscalarmultscalarbytes* = cryptoscalarmultcurve25519scalarbytes ## Generated based on /usr/include/sodium/crypto_scalarmult.h:17:9
  else:
    when cryptoscalarmultcurve25519scalarbytes is static:
      const
        cryptoscalarmultscalarbytes* = cryptoscalarmultcurve25519scalarbytes ## Generated based on /usr/include/sodium/crypto_scalarmult.h:17:9
    else:
      let cryptoscalarmultscalarbytes* = cryptoscalarmultcurve25519scalarbytes ## Generated based on /usr/include/sodium/crypto_scalarmult.h:17:9
else:
  static :
    hint("Declaration of " & "cryptoscalarmultscalarbytes" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultprimitive):
  when "curve25519" is static:
    const
      cryptoscalarmultprimitive* = "curve25519" ## Generated based on /usr/include/sodium/crypto_scalarmult.h:21:9
  else:
    let cryptoscalarmultprimitive* = "curve25519" ## Generated based on /usr/include/sodium/crypto_scalarmult.h:21:9
else:
  static :
    hint("Declaration of " & "cryptoscalarmultprimitive" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptosecretboxxsalsa20poly1305keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xsalsa20poly1305.h:15:9
  else:
    let cryptosecretboxxsalsa20poly1305keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xsalsa20poly1305.h:15:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305keybytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305noncebytes):
  when cast[cuint](24'i64) is static:
    const
      cryptosecretboxxsalsa20poly1305noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xsalsa20poly1305.h:19:9
  else:
    let cryptosecretboxxsalsa20poly1305noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xsalsa20poly1305.h:19:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305noncebytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305macbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptosecretboxxsalsa20poly1305macbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xsalsa20poly1305.h:23:9
  else:
    let cryptosecretboxxsalsa20poly1305macbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xsalsa20poly1305.h:23:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305macbytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305boxzerobytes):
  when cast[cuint](16'i64) is static:
    const
      cryptosecretboxxsalsa20poly1305boxzerobytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xsalsa20poly1305.h:55:9
  else:
    let cryptosecretboxxsalsa20poly1305boxzerobytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xsalsa20poly1305.h:55:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305boxzerobytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxkeybytes):
  when cryptosecretboxxsalsa20poly1305keybytes is typedesc:
    type
      cryptosecretboxkeybytes* = cryptosecretboxxsalsa20poly1305keybytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:16:9
  else:
    when cryptosecretboxxsalsa20poly1305keybytes is static:
      const
        cryptosecretboxkeybytes* = cryptosecretboxxsalsa20poly1305keybytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:16:9
    else:
      let cryptosecretboxkeybytes* = cryptosecretboxxsalsa20poly1305keybytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:16:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxnoncebytes):
  when cryptosecretboxxsalsa20poly1305noncebytes is typedesc:
    type
      cryptosecretboxnoncebytes* = cryptosecretboxxsalsa20poly1305noncebytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:20:9
  else:
    when cryptosecretboxxsalsa20poly1305noncebytes is static:
      const
        cryptosecretboxnoncebytes* = cryptosecretboxxsalsa20poly1305noncebytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:20:9
    else:
      let cryptosecretboxnoncebytes* = cryptosecretboxxsalsa20poly1305noncebytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:20:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxnoncebytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxmacbytes):
  when cryptosecretboxxsalsa20poly1305macbytes is typedesc:
    type
      cryptosecretboxmacbytes* = cryptosecretboxxsalsa20poly1305macbytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:24:9
  else:
    when cryptosecretboxxsalsa20poly1305macbytes is static:
      const
        cryptosecretboxmacbytes* = cryptosecretboxxsalsa20poly1305macbytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:24:9
    else:
      let cryptosecretboxmacbytes* = cryptosecretboxxsalsa20poly1305macbytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:24:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxmacbytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxprimitive):
  when "xsalsa20poly1305" is static:
    const
      cryptosecretboxprimitive* = "xsalsa20poly1305" ## Generated based on /usr/include/sodium/crypto_secretbox.h:28:9
  else:
    let cryptosecretboxprimitive* = "xsalsa20poly1305" ## Generated based on /usr/include/sodium/crypto_secretbox.h:28:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxprimitive" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxboxzerobytes):
  when cryptosecretboxxsalsa20poly1305boxzerobytes is typedesc:
    type
      cryptosecretboxboxzerobytes* = cryptosecretboxxsalsa20poly1305boxzerobytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:74:9
  else:
    when cryptosecretboxxsalsa20poly1305boxzerobytes is static:
      const
        cryptosecretboxboxzerobytes* = cryptosecretboxxsalsa20poly1305boxzerobytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:74:9
    else:
      let cryptosecretboxboxzerobytes* = cryptosecretboxxsalsa20poly1305boxzerobytes ## Generated based on /usr/include/sodium/crypto_secretbox.h:74:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxboxzerobytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptostreamchacha20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:23:9
  else:
    let cryptostreamchacha20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:23:9
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20keybytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20noncebytes):
  when cast[cuint](8'i64) is static:
    const
      cryptostreamchacha20noncebytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:27:9
  else:
    let cryptostreamchacha20noncebytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:27:9
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20noncebytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfkeybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptostreamchacha20ietfkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:61:9
  else:
    let cryptostreamchacha20ietfkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:61:9
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfnoncebytes):
  when cast[cuint](12'i64) is static:
    const
      cryptostreamchacha20ietfnoncebytes* = cast[cuint](12'i64) ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:65:9
  else:
    let cryptostreamchacha20ietfnoncebytes* = cast[cuint](12'i64) ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:65:9
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfnoncebytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfkeybytesconst):
  when cryptostreamchacha20ietfkeybytes is typedesc:
    type
      cryptostreamchacha20ietfkeybytesconst* = cryptostreamchacha20ietfkeybytes ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:98:9
  else:
    when cryptostreamchacha20ietfkeybytes is static:
      const
        cryptostreamchacha20ietfkeybytesconst* = cryptostreamchacha20ietfkeybytes ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:98:9
    else:
      let cryptostreamchacha20ietfkeybytesconst* = cryptostreamchacha20ietfkeybytes ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:98:9
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfkeybytesconst" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfnoncebytesconst):
  when cryptostreamchacha20ietfnoncebytes is typedesc:
    type
      cryptostreamchacha20ietfnoncebytesconst* = cryptostreamchacha20ietfnoncebytes ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:99:9
  else:
    when cryptostreamchacha20ietfnoncebytes is static:
      const
        cryptostreamchacha20ietfnoncebytesconst* = cryptostreamchacha20ietfnoncebytes ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:99:9
    else:
      let cryptostreamchacha20ietfnoncebytesconst* = cryptostreamchacha20ietfnoncebytes ## Generated based on /usr/include/sodium/crypto_stream_chacha20.h:99:9
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfnoncebytesconst" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305tagmessage):
  when 0 is static:
    const
      cryptosecretstreamxchacha20poly1305tagmessage* = 0 ## Generated based on /usr/include/sodium/crypto_secretstream_xchacha20poly1305.h:38:9
  else:
    let cryptosecretstreamxchacha20poly1305tagmessage* = 0 ## Generated based on /usr/include/sodium/crypto_secretstream_xchacha20poly1305.h:38:9
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305tagmessage" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305tagpush):
  when 1 is static:
    const
      cryptosecretstreamxchacha20poly1305tagpush* = 1 ## Generated based on /usr/include/sodium/crypto_secretstream_xchacha20poly1305.h:42:9
  else:
    let cryptosecretstreamxchacha20poly1305tagpush* = 1 ## Generated based on /usr/include/sodium/crypto_secretstream_xchacha20poly1305.h:42:9
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305tagpush" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305tagrekey):
  when 2 is static:
    const
      cryptosecretstreamxchacha20poly1305tagrekey* = 2 ## Generated based on /usr/include/sodium/crypto_secretstream_xchacha20poly1305.h:46:9
  else:
    let cryptosecretstreamxchacha20poly1305tagrekey* = 2 ## Generated based on /usr/include/sodium/crypto_secretstream_xchacha20poly1305.h:46:9
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305tagrekey" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashsiphash24bytes):
  when cast[cuint](8'i64) is static:
    const
      cryptoshorthashsiphash24bytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_shorthash_siphash24.h:16:9
  else:
    let cryptoshorthashsiphash24bytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_shorthash_siphash24.h:16:9
else:
  static :
    hint("Declaration of " & "cryptoshorthashsiphash24bytes" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashsiphash24keybytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoshorthashsiphash24keybytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_shorthash_siphash24.h:20:9
  else:
    let cryptoshorthashsiphash24keybytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_shorthash_siphash24.h:20:9
else:
  static :
    hint("Declaration of " & "cryptoshorthashsiphash24keybytes" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashsiphashx24bytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoshorthashsiphashx24bytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_shorthash_siphash24.h:32:9
  else:
    let cryptoshorthashsiphashx24bytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_shorthash_siphash24.h:32:9
else:
  static :
    hint("Declaration of " & "cryptoshorthashsiphashx24bytes" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashsiphashx24keybytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoshorthashsiphashx24keybytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_shorthash_siphash24.h:36:9
  else:
    let cryptoshorthashsiphashx24keybytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_shorthash_siphash24.h:36:9
else:
  static :
    hint("Declaration of " & "cryptoshorthashsiphashx24keybytes" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashbytes):
  when cryptoshorthashsiphash24bytes is typedesc:
    type
      cryptoshorthashbytes* = cryptoshorthashsiphash24bytes ## Generated based on /usr/include/sodium/crypto_shorthash.h:16:9
  else:
    when cryptoshorthashsiphash24bytes is static:
      const
        cryptoshorthashbytes* = cryptoshorthashsiphash24bytes ## Generated based on /usr/include/sodium/crypto_shorthash.h:16:9
    else:
      let cryptoshorthashbytes* = cryptoshorthashsiphash24bytes ## Generated based on /usr/include/sodium/crypto_shorthash.h:16:9
else:
  static :
    hint("Declaration of " & "cryptoshorthashbytes" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashkeybytes):
  when cryptoshorthashsiphash24keybytes is typedesc:
    type
      cryptoshorthashkeybytes* = cryptoshorthashsiphash24keybytes ## Generated based on /usr/include/sodium/crypto_shorthash.h:20:9
  else:
    when cryptoshorthashsiphash24keybytes is static:
      const
        cryptoshorthashkeybytes* = cryptoshorthashsiphash24keybytes ## Generated based on /usr/include/sodium/crypto_shorthash.h:20:9
    else:
      let cryptoshorthashkeybytes* = cryptoshorthashsiphash24keybytes ## Generated based on /usr/include/sodium/crypto_shorthash.h:20:9
else:
  static :
    hint("Declaration of " & "cryptoshorthashkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashprimitive):
  when "siphash24" is static:
    const
      cryptoshorthashprimitive* = "siphash24" ## Generated based on /usr/include/sodium/crypto_shorthash.h:24:9
  else:
    let cryptoshorthashprimitive* = "siphash24" ## Generated based on /usr/include/sodium/crypto_shorthash.h:24:9
else:
  static :
    hint("Declaration of " & "cryptoshorthashprimitive" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519bytes):
  when cast[cuint](64'i64) is static:
    const
      cryptosigned25519bytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_sign_ed25519.h:22:9
  else:
    let cryptosigned25519bytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_sign_ed25519.h:22:9
else:
  static :
    hint("Declaration of " & "cryptosigned25519bytes" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519seedbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptosigned25519seedbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_sign_ed25519.h:26:9
  else:
    let cryptosigned25519seedbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_sign_ed25519.h:26:9
else:
  static :
    hint("Declaration of " & "cryptosigned25519seedbytes" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519publickeybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptosigned25519publickeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_sign_ed25519.h:30:9
  else:
    let cryptosigned25519publickeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_sign_ed25519.h:30:9
else:
  static :
    hint("Declaration of " & "cryptosigned25519publickeybytes" &
        " already exists, not redeclaring")
when not declared(cryptosignbytes):
  when cryptosigned25519bytes is typedesc:
    type
      cryptosignbytes* = cryptosigned25519bytes ## Generated based on /usr/include/sodium/crypto_sign.h:28:9
  else:
    when cryptosigned25519bytes is static:
      const
        cryptosignbytes* = cryptosigned25519bytes ## Generated based on /usr/include/sodium/crypto_sign.h:28:9
    else:
      let cryptosignbytes* = cryptosigned25519bytes ## Generated based on /usr/include/sodium/crypto_sign.h:28:9
else:
  static :
    hint("Declaration of " & "cryptosignbytes" &
        " already exists, not redeclaring")
when not declared(cryptosignseedbytes):
  when cryptosigned25519seedbytes is typedesc:
    type
      cryptosignseedbytes* = cryptosigned25519seedbytes ## Generated based on /usr/include/sodium/crypto_sign.h:32:9
  else:
    when cryptosigned25519seedbytes is static:
      const
        cryptosignseedbytes* = cryptosigned25519seedbytes ## Generated based on /usr/include/sodium/crypto_sign.h:32:9
    else:
      let cryptosignseedbytes* = cryptosigned25519seedbytes ## Generated based on /usr/include/sodium/crypto_sign.h:32:9
else:
  static :
    hint("Declaration of " & "cryptosignseedbytes" &
        " already exists, not redeclaring")
when not declared(cryptosignpublickeybytes):
  when cryptosigned25519publickeybytes is typedesc:
    type
      cryptosignpublickeybytes* = cryptosigned25519publickeybytes ## Generated based on /usr/include/sodium/crypto_sign.h:36:9
  else:
    when cryptosigned25519publickeybytes is static:
      const
        cryptosignpublickeybytes* = cryptosigned25519publickeybytes ## Generated based on /usr/include/sodium/crypto_sign.h:36:9
    else:
      let cryptosignpublickeybytes* = cryptosigned25519publickeybytes ## Generated based on /usr/include/sodium/crypto_sign.h:36:9
else:
  static :
    hint("Declaration of " & "cryptosignpublickeybytes" &
        " already exists, not redeclaring")
when not declared(cryptosignprimitive):
  when "ed25519" is static:
    const
      cryptosignprimitive* = "ed25519" ## Generated based on /usr/include/sodium/crypto_sign.h:48:9
  else:
    let cryptosignprimitive* = "ed25519" ## Generated based on /usr/include/sodium/crypto_sign.h:48:9
else:
  static :
    hint("Declaration of " & "cryptosignprimitive" &
        " already exists, not redeclaring")
when not declared(cryptostreamkeybytes):
  when cryptostreamxsalsa20keybytes is typedesc:
    type
      cryptostreamkeybytes* = cryptostreamxsalsa20keybytes ## Generated based on /usr/include/sodium/crypto_stream.h:24:9
  else:
    when cryptostreamxsalsa20keybytes is static:
      const
        cryptostreamkeybytes* = cryptostreamxsalsa20keybytes ## Generated based on /usr/include/sodium/crypto_stream.h:24:9
    else:
      let cryptostreamkeybytes* = cryptostreamxsalsa20keybytes ## Generated based on /usr/include/sodium/crypto_stream.h:24:9
else:
  static :
    hint("Declaration of " & "cryptostreamkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamnoncebytes):
  when cryptostreamxsalsa20noncebytes is typedesc:
    type
      cryptostreamnoncebytes* = cryptostreamxsalsa20noncebytes ## Generated based on /usr/include/sodium/crypto_stream.h:28:9
  else:
    when cryptostreamxsalsa20noncebytes is static:
      const
        cryptostreamnoncebytes* = cryptostreamxsalsa20noncebytes ## Generated based on /usr/include/sodium/crypto_stream.h:28:9
    else:
      let cryptostreamnoncebytes* = cryptostreamxsalsa20noncebytes ## Generated based on /usr/include/sodium/crypto_stream.h:28:9
else:
  static :
    hint("Declaration of " & "cryptostreamnoncebytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamprimitive):
  when "xsalsa20" is static:
    const
      cryptostreamprimitive* = "xsalsa20" ## Generated based on /usr/include/sodium/crypto_stream.h:36:9
  else:
    let cryptostreamprimitive* = "xsalsa20" ## Generated based on /usr/include/sodium/crypto_stream.h:36:9
else:
  static :
    hint("Declaration of " & "cryptostreamprimitive" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa20keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptostreamsalsa20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa20.h:23:9
  else:
    let cryptostreamsalsa20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa20.h:23:9
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa20keybytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa20noncebytes):
  when cast[cuint](8'i64) is static:
    const
      cryptostreamsalsa20noncebytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa20.h:27:9
  else:
    let cryptostreamsalsa20noncebytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa20.h:27:9
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa20noncebytes" &
        " already exists, not redeclaring")
when not declared(cryptoverify16bytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoverify16bytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_verify_16.h:11:9
  else:
    let cryptoverify16bytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_verify_16.h:11:9
else:
  static :
    hint("Declaration of " & "cryptoverify16bytes" &
        " already exists, not redeclaring")
when not declared(cryptoverify32bytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoverify32bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_verify_32.h:11:9
  else:
    let cryptoverify32bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_verify_32.h:11:9
else:
  static :
    hint("Declaration of " & "cryptoverify32bytes" &
        " already exists, not redeclaring")
when not declared(cryptoverify64bytes):
  when cast[cuint](64'i64) is static:
    const
      cryptoverify64bytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_verify_64.h:11:9
  else:
    let cryptoverify64bytes* = cast[cuint](64'i64) ## Generated based on /usr/include/sodium/crypto_verify_64.h:11:9
else:
  static :
    hint("Declaration of " & "cryptoverify64bytes" &
        " already exists, not redeclaring")
when not declared(randombytesseedbytes):
  when cast[cuint](32'i64) is static:
    const
      randombytesseedbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/randombytes.h:30:9
  else:
    let randombytesseedbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/randombytes.h:30:9
else:
  static :
    hint("Declaration of " & "randombytesseedbytes" &
        " already exists, not redeclaring")
when not declared(randombytesinternalimplementation):
  var randombytesinternalimplementation* {.
      importc: "randombytes_internal_implementation".}: structrandombytesimplementation_520094518
else:
  static :
    hint("Declaration of " & "randombytesinternalimplementation" &
        " already exists, not redeclaring")
when not declared(sodiumbase64variantoriginal):
  when 1 is static:
    const
      sodiumbase64variantoriginal* = 1 ## Generated based on /usr/include/sodium/utils.h:71:9
  else:
    let sodiumbase64variantoriginal* = 1 ## Generated based on /usr/include/sodium/utils.h:71:9
else:
  static :
    hint("Declaration of " & "sodiumbase64variantoriginal" &
        " already exists, not redeclaring")
when not declared(sodiumbase64variantoriginalnopadding):
  when 3 is static:
    const
      sodiumbase64variantoriginalnopadding* = 3 ## Generated based on /usr/include/sodium/utils.h:72:9
  else:
    let sodiumbase64variantoriginalnopadding* = 3 ## Generated based on /usr/include/sodium/utils.h:72:9
else:
  static :
    hint("Declaration of " & "sodiumbase64variantoriginalnopadding" &
        " already exists, not redeclaring")
when not declared(sodiumbase64varianturlsafe):
  when 5 is static:
    const
      sodiumbase64varianturlsafe* = 5 ## Generated based on /usr/include/sodium/utils.h:73:9
  else:
    let sodiumbase64varianturlsafe* = 5 ## Generated based on /usr/include/sodium/utils.h:73:9
else:
  static :
    hint("Declaration of " & "sodiumbase64varianturlsafe" &
        " already exists, not redeclaring")
when not declared(sodiumbase64varianturlsafenopadding):
  when 7 is static:
    const
      sodiumbase64varianturlsafenopadding* = 7 ## Generated based on /usr/include/sodium/utils.h:74:9
  else:
    let sodiumbase64varianturlsafenopadding* = 7 ## Generated based on /usr/include/sodium/utils.h:74:9
else:
  static :
    hint("Declaration of " & "sodiumbase64varianturlsafenopadding" &
        " already exists, not redeclaring")
when not declared(cryptostreamxchacha20keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptostreamxchacha20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_xchacha20.h:23:9
  else:
    let cryptostreamxchacha20keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_xchacha20.h:23:9
else:
  static :
    hint("Declaration of " & "cryptostreamxchacha20keybytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamxchacha20noncebytes):
  when cast[cuint](24'i64) is static:
    const
      cryptostreamxchacha20noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_stream_xchacha20.h:27:9
  else:
    let cryptostreamxchacha20noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_stream_xchacha20.h:27:9
else:
  static :
    hint("Declaration of " & "cryptostreamxchacha20noncebytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305seedbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoboxcurve25519xchacha20poly1305seedbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:16:9
  else:
    let cryptoboxcurve25519xchacha20poly1305seedbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:16:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305seedbytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305publickeybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoboxcurve25519xchacha20poly1305publickeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:20:9
  else:
    let cryptoboxcurve25519xchacha20poly1305publickeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:20:9
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xchacha20poly1305publickeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305secretkeybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoboxcurve25519xchacha20poly1305secretkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:24:9
  else:
    let cryptoboxcurve25519xchacha20poly1305secretkeybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:24:9
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xchacha20poly1305secretkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305beforenmbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoboxcurve25519xchacha20poly1305beforenmbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:28:9
  else:
    let cryptoboxcurve25519xchacha20poly1305beforenmbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:28:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305beforenmbytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305noncebytes):
  when cast[cuint](24'i64) is static:
    const
      cryptoboxcurve25519xchacha20poly1305noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:32:9
  else:
    let cryptoboxcurve25519xchacha20poly1305noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:32:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305noncebytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305macbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptoboxcurve25519xchacha20poly1305macbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:36:9
  else:
    let cryptoboxcurve25519xchacha20poly1305macbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_box_curve25519xchacha20poly1305.h:36:9
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305macbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519bytes):
  when 32 is static:
    const
      cryptocoreed25519bytes* = 32 ## Generated based on /usr/include/sodium/crypto_core_ed25519.h:11:9
  else:
    let cryptocoreed25519bytes* = 32 ## Generated based on /usr/include/sodium/crypto_core_ed25519.h:11:9
else:
  static :
    hint("Declaration of " & "cryptocoreed25519bytes" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519uniformbytes):
  when 32 is static:
    const
      cryptocoreed25519uniformbytes* = 32 ## Generated based on /usr/include/sodium/crypto_core_ed25519.h:15:9
  else:
    let cryptocoreed25519uniformbytes* = 32 ## Generated based on /usr/include/sodium/crypto_core_ed25519.h:15:9
else:
  static :
    hint("Declaration of " & "cryptocoreed25519uniformbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519hashbytes):
  when 64 is static:
    const
      cryptocoreed25519hashbytes* = 64 ## Generated based on /usr/include/sodium/crypto_core_ed25519.h:19:9
  else:
    let cryptocoreed25519hashbytes* = 64 ## Generated based on /usr/include/sodium/crypto_core_ed25519.h:19:9
else:
  static :
    hint("Declaration of " & "cryptocoreed25519hashbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519scalarbytes):
  when 32 is static:
    const
      cryptocoreed25519scalarbytes* = 32 ## Generated based on /usr/include/sodium/crypto_core_ed25519.h:23:9
  else:
    let cryptocoreed25519scalarbytes* = 32 ## Generated based on /usr/include/sodium/crypto_core_ed25519.h:23:9
else:
  static :
    hint("Declaration of " & "cryptocoreed25519scalarbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519nonreducedscalarbytes):
  when 64 is static:
    const
      cryptocoreed25519nonreducedscalarbytes* = 64 ## Generated based on /usr/include/sodium/crypto_core_ed25519.h:27:9
  else:
    let cryptocoreed25519nonreducedscalarbytes* = 64 ## Generated based on /usr/include/sodium/crypto_core_ed25519.h:27:9
else:
  static :
    hint("Declaration of " & "cryptocoreed25519nonreducedscalarbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255bytes):
  when 32 is static:
    const
      cryptocoreristretto255bytes* = 32 ## Generated based on /usr/include/sodium/crypto_core_ristretto255.h:11:9
  else:
    let cryptocoreristretto255bytes* = 32 ## Generated based on /usr/include/sodium/crypto_core_ristretto255.h:11:9
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255bytes" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255hashbytes):
  when 64 is static:
    const
      cryptocoreristretto255hashbytes* = 64 ## Generated based on /usr/include/sodium/crypto_core_ristretto255.h:15:9
  else:
    let cryptocoreristretto255hashbytes* = 64 ## Generated based on /usr/include/sodium/crypto_core_ristretto255.h:15:9
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255hashbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255scalarbytes):
  when 32 is static:
    const
      cryptocoreristretto255scalarbytes* = 32 ## Generated based on /usr/include/sodium/crypto_core_ristretto255.h:19:9
  else:
    let cryptocoreristretto255scalarbytes* = 32 ## Generated based on /usr/include/sodium/crypto_core_ristretto255.h:19:9
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255scalarbytes" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255nonreducedscalarbytes):
  when 64 is static:
    const
      cryptocoreristretto255nonreducedscalarbytes* = 64 ## Generated based on /usr/include/sodium/crypto_core_ristretto255.h:23:9
  else:
    let cryptocoreristretto255nonreducedscalarbytes* = 64 ## Generated based on /usr/include/sodium/crypto_core_ristretto255.h:23:9
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255nonreducedscalarbytes" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmulted25519bytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoscalarmulted25519bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_ed25519.h:13:9
  else:
    let cryptoscalarmulted25519bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_ed25519.h:13:9
else:
  static :
    hint("Declaration of " & "cryptoscalarmulted25519bytes" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmulted25519scalarbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoscalarmulted25519scalarbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_ed25519.h:17:9
  else:
    let cryptoscalarmulted25519scalarbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_ed25519.h:17:9
else:
  static :
    hint("Declaration of " & "cryptoscalarmulted25519scalarbytes" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultristretto255bytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoscalarmultristretto255bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_ristretto255.h:13:9
  else:
    let cryptoscalarmultristretto255bytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_ristretto255.h:13:9
else:
  static :
    hint("Declaration of " & "cryptoscalarmultristretto255bytes" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultristretto255scalarbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptoscalarmultristretto255scalarbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_ristretto255.h:17:9
  else:
    let cryptoscalarmultristretto255scalarbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_scalarmult_ristretto255.h:17:9
else:
  static :
    hint("Declaration of " & "cryptoscalarmultristretto255scalarbytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptosecretboxxchacha20poly1305keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xchacha20poly1305.h:15:9
  else:
    let cryptosecretboxxchacha20poly1305keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xchacha20poly1305.h:15:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305keybytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305noncebytes):
  when cast[cuint](24'i64) is static:
    const
      cryptosecretboxxchacha20poly1305noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xchacha20poly1305.h:19:9
  else:
    let cryptosecretboxxchacha20poly1305noncebytes* = cast[cuint](24'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xchacha20poly1305.h:19:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305noncebytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305macbytes):
  when cast[cuint](16'i64) is static:
    const
      cryptosecretboxxchacha20poly1305macbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xchacha20poly1305.h:23:9
  else:
    let cryptosecretboxxchacha20poly1305macbytes* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_secretbox_xchacha20poly1305.h:23:9
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305macbytes" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256bytesmin):
  when cast[cuint](16'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256bytesmin* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:17:9
  else:
    let cryptopwhashscryptsalsa208sha256bytesmin* = cast[cuint](16'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:17:9
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256bytesmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256passwdmin):
  when cast[cuint](0'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256passwdmin* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:26:9
  else:
    let cryptopwhashscryptsalsa208sha256passwdmin* = cast[cuint](0'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:26:9
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256passwdmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256saltbytes):
  when cast[cuint](32'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256saltbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:34:9
  else:
    let cryptopwhashscryptsalsa208sha256saltbytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:34:9
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256saltbytes" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256strbytes):
  when cast[cuint](102'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256strbytes* = cast[cuint](102'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:38:9
  else:
    let cryptopwhashscryptsalsa208sha256strbytes* = cast[cuint](102'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:38:9
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256strbytes" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256strprefix):
  when "$7$" is static:
    const
      cryptopwhashscryptsalsa208sha256strprefix* = "$7$" ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:42:9
  else:
    let cryptopwhashscryptsalsa208sha256strprefix* = "$7$" ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:42:9
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256strprefix" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256opslimitmin):
  when cast[cuint](32768'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256opslimitmin* = cast[cuint](32768'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:46:9
  else:
    let cryptopwhashscryptsalsa208sha256opslimitmin* = cast[cuint](32768'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:46:9
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256opslimitmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256opslimitmax):
  when cast[cuint](4294967295'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256opslimitmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:50:9
  else:
    let cryptopwhashscryptsalsa208sha256opslimitmax* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:50:9
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256opslimitmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256memlimitmin):
  when cast[cuint](16777216'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256memlimitmin* = cast[cuint](16777216'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:54:9
  else:
    let cryptopwhashscryptsalsa208sha256memlimitmin* = cast[cuint](16777216'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:54:9
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256memlimitmin" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256opslimitinteractive):
  when cast[cuint](524288'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256opslimitinteractive* = cast[cuint](524288'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:63:9
  else:
    let cryptopwhashscryptsalsa208sha256opslimitinteractive* = cast[cuint](524288'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:63:9
else:
  static :
    hint("Declaration of " &
        "cryptopwhashscryptsalsa208sha256opslimitinteractive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256memlimitinteractive):
  when cast[cuint](16777216'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256memlimitinteractive* = cast[cuint](16777216'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:67:9
  else:
    let cryptopwhashscryptsalsa208sha256memlimitinteractive* = cast[cuint](16777216'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:67:9
else:
  static :
    hint("Declaration of " &
        "cryptopwhashscryptsalsa208sha256memlimitinteractive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256opslimitsensitive):
  when cast[cuint](33554432'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256opslimitsensitive* = cast[cuint](33554432'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:71:9
  else:
    let cryptopwhashscryptsalsa208sha256opslimitsensitive* = cast[cuint](33554432'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:71:9
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256opslimitsensitive" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256memlimitsensitive):
  when cast[cuint](1073741824'i64) is static:
    const
      cryptopwhashscryptsalsa208sha256memlimitsensitive* = cast[cuint](1073741824'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:75:9
  else:
    let cryptopwhashscryptsalsa208sha256memlimitsensitive* = cast[cuint](1073741824'i64) ## Generated based on /usr/include/sodium/crypto_pwhash_scryptsalsa208sha256.h:75:9
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256memlimitsensitive" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa2012keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptostreamsalsa2012keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa2012.h:22:9
  else:
    let cryptostreamsalsa2012keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa2012.h:22:9
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa2012keybytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa2012noncebytes):
  when cast[cuint](8'i64) is static:
    const
      cryptostreamsalsa2012noncebytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa2012.h:26:9
  else:
    let cryptostreamsalsa2012noncebytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa2012.h:26:9
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa2012noncebytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa208keybytes):
  when cast[cuint](32'i64) is static:
    const
      cryptostreamsalsa208keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa208.h:22:9
  else:
    let cryptostreamsalsa208keybytes* = cast[cuint](32'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa208.h:22:9
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa208keybytes" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa208noncebytes):
  when cast[cuint](8'i64) is static:
    const
      cryptostreamsalsa208noncebytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa208.h:27:9
  else:
    let cryptostreamsalsa208noncebytes* = cast[cuint](8'i64) ## Generated based on /usr/include/sodium/crypto_stream_salsa208.h:27:9
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa208noncebytes" &
        " already exists, not redeclaring")
when not declared(sodiumversionstring):
  proc sodiumversionstring*(): cstring {.cdecl, importc: "sodium_version_string".}
else:
  static :
    hint("Declaration of " & "sodiumversionstring" &
        " already exists, not redeclaring")
when not declared(sodiumlibraryversionmajor):
  proc sodiumlibraryversionmajor*(): cint {.cdecl,
      importc: "sodium_library_version_major".}
else:
  static :
    hint("Declaration of " & "sodiumlibraryversionmajor" &
        " already exists, not redeclaring")
when not declared(sodiumlibraryversionminor):
  proc sodiumlibraryversionminor*(): cint {.cdecl,
      importc: "sodium_library_version_minor".}
else:
  static :
    hint("Declaration of " & "sodiumlibraryversionminor" &
        " already exists, not redeclaring")
when not declared(sodiumlibraryminimal):
  proc sodiumlibraryminimal*(): cint {.cdecl, importc: "sodium_library_minimal".}
else:
  static :
    hint("Declaration of " & "sodiumlibraryminimal" &
        " already exists, not redeclaring")
when not declared(sodiuminit):
  proc sodiuminit*(): cint {.cdecl, importc: "sodium_init".}
else:
  static :
    hint("Declaration of " & "sodiuminit" & " already exists, not redeclaring")
when not declared(sodiumsetmisusehandler):
  proc sodiumsetmisusehandler*(handler: proc (): void {.cdecl.}): cint {.cdecl,
      importc: "sodium_set_misuse_handler".}
else:
  static :
    hint("Declaration of " & "sodiumsetmisusehandler" &
        " already exists, not redeclaring")
when not declared(sodiummisuse):
  proc sodiummisuse*(): void {.cdecl, importc: "sodium_misuse".}
else:
  static :
    hint("Declaration of " & "sodiummisuse" & " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmisavailable):
  proc cryptoaeadaes256gcmisavailable*(): cint {.cdecl,
      importc: "crypto_aead_aes256gcm_is_available".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmisavailable" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmkeybytesproc):
  proc cryptoaeadaes256gcmkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_aes256gcm_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmnsecbytesproc):
  proc cryptoaeadaes256gcmnsecbytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_aes256gcm_nsecbytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmnsecbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmnpubbytesproc):
  proc cryptoaeadaes256gcmnpubbytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_aes256gcm_npubbytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmnpubbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmabytesproc):
  proc cryptoaeadaes256gcmabytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_aes256gcm_abytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmabytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmmessagebytesmax):
  proc cryptoaeadaes256gcmmessagebytesmax*(): csize_t {.cdecl,
      importc: "crypto_aead_aes256gcm_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmmessagebytesmax" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmstatebytes):
  proc cryptoaeadaes256gcmstatebytes*(): csize_t {.cdecl,
      importc: "crypto_aead_aes256gcm_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmstatebytes" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmencrypt):
  proc cryptoaeadaes256gcmencrypt*(c: ptr uint8; clenp: ptr culonglong;
                                   m: ptr uint8; mlen: culonglong;
                                   ad: ptr uint8; adlen: culonglong;
                                   nsec: ptr uint8; npub: ptr uint8;
                                   k: ptr uint8): cint {.cdecl,
      importc: "crypto_aead_aes256gcm_encrypt".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmencrypt" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmdecrypt):
  proc cryptoaeadaes256gcmdecrypt*(m: ptr uint8; mlenp: ptr culonglong;
                                   nsec: ptr uint8; c: ptr uint8;
                                   clen: culonglong; ad: ptr uint8;
                                   adlen: culonglong; npub: ptr uint8;
                                   k: ptr uint8): cint {.cdecl,
      importc: "crypto_aead_aes256gcm_decrypt".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmdecrypt" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmencryptdetached):
  proc cryptoaeadaes256gcmencryptdetached*(c: ptr uint8; mac: ptr uint8;
      maclenp: ptr culonglong; m: ptr uint8; mlen: culonglong; ad: ptr uint8;
      adlen: culonglong; nsec: ptr uint8; npub: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_aead_aes256gcm_encrypt_detached".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmencryptdetached" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmdecryptdetached):
  proc cryptoaeadaes256gcmdecryptdetached*(m: ptr uint8; nsec: ptr uint8;
      c: ptr uint8; clen: culonglong; mac: ptr uint8; ad: ptr uint8;
      adlen: culonglong; npub: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_aead_aes256gcm_decrypt_detached".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmdecryptdetached" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmbeforenm):
  proc cryptoaeadaes256gcmbeforenm*(ctx: ptr cryptoaeadaes256gcmstate_520094246;
                                    k: ptr uint8): cint {.cdecl,
      importc: "crypto_aead_aes256gcm_beforenm".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmbeforenm" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmencryptafternm):
  proc cryptoaeadaes256gcmencryptafternm*(c: ptr uint8; clenp: ptr culonglong;
      m: ptr uint8; mlen: culonglong; ad: ptr uint8; adlen: culonglong;
      nsec: ptr uint8; npub: ptr uint8; ctx: ptr cryptoaeadaes256gcmstate_520094246): cint {.
      cdecl, importc: "crypto_aead_aes256gcm_encrypt_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmencryptafternm" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmdecryptafternm):
  proc cryptoaeadaes256gcmdecryptafternm*(m: ptr uint8; mlenp: ptr culonglong;
      nsec: ptr uint8; c: ptr uint8; clen: culonglong; ad: ptr uint8;
      adlen: culonglong; npub: ptr uint8; ctx: ptr cryptoaeadaes256gcmstate_520094246): cint {.
      cdecl, importc: "crypto_aead_aes256gcm_decrypt_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmdecryptafternm" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmencryptdetachedafternm):
  proc cryptoaeadaes256gcmencryptdetachedafternm*(c: ptr uint8; mac: ptr uint8;
      maclenp: ptr culonglong; m: ptr uint8; mlen: culonglong; ad: ptr uint8;
      adlen: culonglong; nsec: ptr uint8; npub: ptr uint8;
      ctx: ptr cryptoaeadaes256gcmstate_520094246): cint {.cdecl,
      importc: "crypto_aead_aes256gcm_encrypt_detached_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmencryptdetachedafternm" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmdecryptdetachedafternm):
  proc cryptoaeadaes256gcmdecryptdetachedafternm*(m: ptr uint8; nsec: ptr uint8;
      c: ptr uint8; clen: culonglong; mac: ptr uint8; ad: ptr uint8;
      adlen: culonglong; npub: ptr uint8; ctx: ptr cryptoaeadaes256gcmstate_520094246): cint {.
      cdecl, importc: "crypto_aead_aes256gcm_decrypt_detached_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmdecryptdetachedafternm" &
        " already exists, not redeclaring")
when not declared(cryptoaeadaes256gcmkeygen):
  proc cryptoaeadaes256gcmkeygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_aead_aes256gcm_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoaeadaes256gcmkeygen" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfkeybytesproc):
  proc cryptoaeadchacha20poly1305ietfkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_chacha20poly1305_ietf_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfnsecbytesproc):
  proc cryptoaeadchacha20poly1305ietfnsecbytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_chacha20poly1305_ietf_nsecbytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfnsecbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfnpubbytesproc):
  proc cryptoaeadchacha20poly1305ietfnpubbytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_chacha20poly1305_ietf_npubbytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfnpubbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfabytesproc):
  proc cryptoaeadchacha20poly1305ietfabytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_chacha20poly1305_ietf_abytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfabytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfmessagebytesmaxproc):
  proc cryptoaeadchacha20poly1305ietfmessagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_aead_chacha20poly1305_ietf_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfmessagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfencrypt):
  proc cryptoaeadchacha20poly1305ietfencrypt*(c: ptr uint8;
      clenp: ptr culonglong; m: ptr uint8; mlen: culonglong; ad: ptr uint8;
      adlen: culonglong; nsec: ptr uint8; npub: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_aead_chacha20poly1305_ietf_encrypt".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfencrypt" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfdecrypt):
  proc cryptoaeadchacha20poly1305ietfdecrypt*(m: ptr uint8;
      mlenp: ptr culonglong; nsec: ptr uint8; c: ptr uint8; clen: culonglong;
      ad: ptr uint8; adlen: culonglong; npub: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_aead_chacha20poly1305_ietf_decrypt".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfdecrypt" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfencryptdetached):
  proc cryptoaeadchacha20poly1305ietfencryptdetached*(c: ptr uint8;
      mac: ptr uint8; maclenp: ptr culonglong; m: ptr uint8; mlen: culonglong;
      ad: ptr uint8; adlen: culonglong; nsec: ptr uint8; npub: ptr uint8;
      k: ptr uint8): cint {.cdecl, importc: "crypto_aead_chacha20poly1305_ietf_encrypt_detached".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfencryptdetached" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfdecryptdetached):
  proc cryptoaeadchacha20poly1305ietfdecryptdetached*(m: ptr uint8;
      nsec: ptr uint8; c: ptr uint8; clen: culonglong; mac: ptr uint8;
      ad: ptr uint8; adlen: culonglong; npub: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_aead_chacha20poly1305_ietf_decrypt_detached".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfdecryptdetached" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305ietfkeygen):
  proc cryptoaeadchacha20poly1305ietfkeygen*(k: array[32'i64, uint8]): void {.
      cdecl, importc: "crypto_aead_chacha20poly1305_ietf_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305ietfkeygen" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305keybytesproc):
  proc cryptoaeadchacha20poly1305keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_chacha20poly1305_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305nsecbytesproc):
  proc cryptoaeadchacha20poly1305nsecbytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_chacha20poly1305_nsecbytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305nsecbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305npubbytesproc):
  proc cryptoaeadchacha20poly1305npubbytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_chacha20poly1305_npubbytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305npubbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305abytesproc):
  proc cryptoaeadchacha20poly1305abytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_chacha20poly1305_abytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305abytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305messagebytesmax):
  proc cryptoaeadchacha20poly1305messagebytesmax*(): csize_t {.cdecl,
      importc: "crypto_aead_chacha20poly1305_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305messagebytesmax" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305encrypt):
  proc cryptoaeadchacha20poly1305encrypt*(c: ptr uint8; clenp: ptr culonglong;
      m: ptr uint8; mlen: culonglong; ad: ptr uint8; adlen: culonglong;
      nsec: ptr uint8; npub: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_aead_chacha20poly1305_encrypt".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305encrypt" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305decrypt):
  proc cryptoaeadchacha20poly1305decrypt*(m: ptr uint8; mlenp: ptr culonglong;
      nsec: ptr uint8; c: ptr uint8; clen: culonglong; ad: ptr uint8;
      adlen: culonglong; npub: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_aead_chacha20poly1305_decrypt".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305decrypt" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305encryptdetached):
  proc cryptoaeadchacha20poly1305encryptdetached*(c: ptr uint8; mac: ptr uint8;
      maclenp: ptr culonglong; m: ptr uint8; mlen: culonglong; ad: ptr uint8;
      adlen: culonglong; nsec: ptr uint8; npub: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_aead_chacha20poly1305_encrypt_detached".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305encryptdetached" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305decryptdetached):
  proc cryptoaeadchacha20poly1305decryptdetached*(m: ptr uint8; nsec: ptr uint8;
      c: ptr uint8; clen: culonglong; mac: ptr uint8; ad: ptr uint8;
      adlen: culonglong; npub: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_aead_chacha20poly1305_decrypt_detached".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305decryptdetached" &
        " already exists, not redeclaring")
when not declared(cryptoaeadchacha20poly1305keygen):
  proc cryptoaeadchacha20poly1305keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_aead_chacha20poly1305_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoaeadchacha20poly1305keygen" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfkeybytesproc):
  proc cryptoaeadxchacha20poly1305ietfkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_xchacha20poly1305_ietf_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfnsecbytesproc):
  proc cryptoaeadxchacha20poly1305ietfnsecbytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_xchacha20poly1305_ietf_nsecbytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfnsecbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfnpubbytesproc):
  proc cryptoaeadxchacha20poly1305ietfnpubbytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_xchacha20poly1305_ietf_npubbytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfnpubbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfabytesproc):
  proc cryptoaeadxchacha20poly1305ietfabytesproc*(): csize_t {.cdecl,
      importc: "crypto_aead_xchacha20poly1305_ietf_abytes".}
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfabytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfmessagebytesmaxproc):
  proc cryptoaeadxchacha20poly1305ietfmessagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_aead_xchacha20poly1305_ietf_messagebytes_max".}
else:
  static :
    hint("Declaration of " &
        "cryptoaeadxchacha20poly1305ietfmessagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfencrypt):
  proc cryptoaeadxchacha20poly1305ietfencrypt*(c: ptr uint8;
      clenp: ptr culonglong; m: ptr uint8; mlen: culonglong; ad: ptr uint8;
      adlen: culonglong; nsec: ptr uint8; npub: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_aead_xchacha20poly1305_ietf_encrypt".}
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfencrypt" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfdecrypt):
  proc cryptoaeadxchacha20poly1305ietfdecrypt*(m: ptr uint8;
      mlenp: ptr culonglong; nsec: ptr uint8; c: ptr uint8; clen: culonglong;
      ad: ptr uint8; adlen: culonglong; npub: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_aead_xchacha20poly1305_ietf_decrypt".}
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfdecrypt" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfencryptdetached):
  proc cryptoaeadxchacha20poly1305ietfencryptdetached*(c: ptr uint8;
      mac: ptr uint8; maclenp: ptr culonglong; m: ptr uint8; mlen: culonglong;
      ad: ptr uint8; adlen: culonglong; nsec: ptr uint8; npub: ptr uint8;
      k: ptr uint8): cint {.cdecl, importc: "crypto_aead_xchacha20poly1305_ietf_encrypt_detached".}
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfencryptdetached" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfdecryptdetached):
  proc cryptoaeadxchacha20poly1305ietfdecryptdetached*(m: ptr uint8;
      nsec: ptr uint8; c: ptr uint8; clen: culonglong; mac: ptr uint8;
      ad: ptr uint8; adlen: culonglong; npub: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_aead_xchacha20poly1305_ietf_decrypt_detached".}
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfdecryptdetached" &
        " already exists, not redeclaring")
when not declared(cryptoaeadxchacha20poly1305ietfkeygen):
  proc cryptoaeadxchacha20poly1305ietfkeygen*(k: array[32'i64, uint8]): void {.
      cdecl, importc: "crypto_aead_xchacha20poly1305_ietf_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoaeadxchacha20poly1305ietfkeygen" &
        " already exists, not redeclaring")
when not declared(compilerctypegetmbcurmax):
  proc compilerctypegetmbcurmax*(): csize_t {.cdecl,
      importc: "__ctype_get_mb_cur_max".}
else:
  static :
    hint("Declaration of " & "compilerctypegetmbcurmax" &
        " already exists, not redeclaring")
when not declared(atof):
  proc atof*(compilernptr: cstring): cdouble {.cdecl, importc: "atof".}
else:
  static :
    hint("Declaration of " & "atof" & " already exists, not redeclaring")
when not declared(atoi):
  proc atoi*(compilernptr: cstring): cint {.cdecl, importc: "atoi".}
else:
  static :
    hint("Declaration of " & "atoi" & " already exists, not redeclaring")
when not declared(atol):
  proc atol*(compilernptr: cstring): clong {.cdecl, importc: "atol".}
else:
  static :
    hint("Declaration of " & "atol" & " already exists, not redeclaring")
when not declared(atoll):
  proc atoll*(compilernptr: cstring): clonglong {.cdecl, importc: "atoll".}
else:
  static :
    hint("Declaration of " & "atoll" & " already exists, not redeclaring")
when not declared(strtod):
  proc strtod*(compilernptr: cstring; compilerendptr: ptr cstring): cdouble {.
      cdecl, importc: "strtod".}
else:
  static :
    hint("Declaration of " & "strtod" & " already exists, not redeclaring")
when not declared(strtof):
  proc strtof*(compilernptr: cstring; compilerendptr: ptr cstring): cfloat {.
      cdecl, importc: "strtof".}
else:
  static :
    hint("Declaration of " & "strtof" & " already exists, not redeclaring")
when not declared(strtold):
  proc strtold*(compilernptr: cstring; compilerendptr: ptr cstring): clongdouble {.
      cdecl, importc: "strtold".}
else:
  static :
    hint("Declaration of " & "strtold" & " already exists, not redeclaring")
when not declared(strtol):
  proc strtol*(compilernptr: cstring; compilerendptr: ptr cstring;
               compilerbase: cint): clong {.cdecl, importc: "strtol".}
else:
  static :
    hint("Declaration of " & "strtol" & " already exists, not redeclaring")
when not declared(strtoul):
  proc strtoul*(compilernptr: cstring; compilerendptr: ptr cstring;
                compilerbase: cint): culong {.cdecl, importc: "strtoul".}
else:
  static :
    hint("Declaration of " & "strtoul" & " already exists, not redeclaring")
when not declared(strtoq):
  proc strtoq*(compilernptr: cstring; compilerendptr: ptr cstring;
               compilerbase: cint): clonglong {.cdecl, importc: "strtoq".}
else:
  static :
    hint("Declaration of " & "strtoq" & " already exists, not redeclaring")
when not declared(strtouq):
  proc strtouq*(compilernptr: cstring; compilerendptr: ptr cstring;
                compilerbase: cint): culonglong {.cdecl, importc: "strtouq".}
else:
  static :
    hint("Declaration of " & "strtouq" & " already exists, not redeclaring")
when not declared(strtoll):
  proc strtoll*(compilernptr: cstring; compilerendptr: ptr cstring;
                compilerbase: cint): clonglong {.cdecl, importc: "strtoll".}
else:
  static :
    hint("Declaration of " & "strtoll" & " already exists, not redeclaring")
when not declared(strtoull):
  proc strtoull*(compilernptr: cstring; compilerendptr: ptr cstring;
                 compilerbase: cint): culonglong {.cdecl, importc: "strtoull".}
else:
  static :
    hint("Declaration of " & "strtoull" & " already exists, not redeclaring")
when not declared(l64a):
  proc l64a*(compilern: clong): cstring {.cdecl, importc: "l64a".}
else:
  static :
    hint("Declaration of " & "l64a" & " already exists, not redeclaring")
when not declared(a64l):
  proc a64l*(compilers: cstring): clong {.cdecl, importc: "a64l".}
else:
  static :
    hint("Declaration of " & "a64l" & " already exists, not redeclaring")
when not declared(select):
  proc select*(compilernfds: cint; compilerreadfds: ptr fdset_520094350;
               compilerwritefds: ptr fdset_520094350;
               compilerexceptfds: ptr fdset_520094350;
               compilertimeout: ptr structtimeval_520094340): cint {.cdecl,
      importc: "select".}
else:
  static :
    hint("Declaration of " & "select" & " already exists, not redeclaring")
when not declared(pselect):
  proc pselect*(compilernfds: cint; compilerreadfds: ptr fdset_520094350;
                compilerwritefds: ptr fdset_520094350;
                compilerexceptfds: ptr fdset_520094350;
                compilertimeout: ptr structtimespec_520094342;
                compilersigmask: ptr compilersigsett_520094336): cint {.cdecl,
      importc: "pselect".}
else:
  static :
    hint("Declaration of " & "pselect" & " already exists, not redeclaring")
when not declared(random):
  proc random*(): clong {.cdecl, importc: "random".}
else:
  static :
    hint("Declaration of " & "random" & " already exists, not redeclaring")
when not declared(srandom):
  proc srandom*(compilerseed: cuint): void {.cdecl, importc: "srandom".}
else:
  static :
    hint("Declaration of " & "srandom" & " already exists, not redeclaring")
when not declared(initstate):
  proc initstate*(compilerseed: cuint; compilerstatebuf: cstring;
                  compilerstatelen: csize_t): cstring {.cdecl,
      importc: "initstate".}
else:
  static :
    hint("Declaration of " & "initstate" & " already exists, not redeclaring")
when not declared(setstate):
  proc setstate*(compilerstatebuf: cstring): cstring {.cdecl,
      importc: "setstate".}
else:
  static :
    hint("Declaration of " & "setstate" & " already exists, not redeclaring")
when not declared(randomr):
  proc randomr*(compilerbuf: ptr structrandomdata_520094432;
                compilerresult: ptr int32): cint {.cdecl, importc: "random_r".}
else:
  static :
    hint("Declaration of " & "randomr" & " already exists, not redeclaring")
when not declared(srandomr):
  proc srandomr*(compilerseed: cuint; compilerbuf: ptr structrandomdata_520094432): cint {.
      cdecl, importc: "srandom_r".}
else:
  static :
    hint("Declaration of " & "srandomr" & " already exists, not redeclaring")
when not declared(initstater):
  proc initstater*(compilerseed: cuint; compilerstatebuf: cstring;
                   compilerstatelen: csize_t; compilerbuf: ptr structrandomdata_520094432): cint {.
      cdecl, importc: "initstate_r".}
else:
  static :
    hint("Declaration of " & "initstater" & " already exists, not redeclaring")
when not declared(setstater):
  proc setstater*(compilerstatebuf: cstring; compilerbuf: ptr structrandomdata_520094432): cint {.
      cdecl, importc: "setstate_r".}
else:
  static :
    hint("Declaration of " & "setstater" & " already exists, not redeclaring")
when not declared(rand):
  proc rand*(): cint {.cdecl, importc: "rand".}
else:
  static :
    hint("Declaration of " & "rand" & " already exists, not redeclaring")
when not declared(srand):
  proc srand*(compilerseed: cuint): void {.cdecl, importc: "srand".}
else:
  static :
    hint("Declaration of " & "srand" & " already exists, not redeclaring")
when not declared(randr):
  proc randr*(compilerseed: ptr cuint): cint {.cdecl, importc: "rand_r".}
else:
  static :
    hint("Declaration of " & "randr" & " already exists, not redeclaring")
when not declared(drand48):
  proc drand48*(): cdouble {.cdecl, importc: "drand48".}
else:
  static :
    hint("Declaration of " & "drand48" & " already exists, not redeclaring")
when not declared(erand48):
  proc erand48*(compilerxsubi: array[3'i64, cushort]): cdouble {.cdecl,
      importc: "erand48".}
else:
  static :
    hint("Declaration of " & "erand48" & " already exists, not redeclaring")
when not declared(lrand48):
  proc lrand48*(): clong {.cdecl, importc: "lrand48".}
else:
  static :
    hint("Declaration of " & "lrand48" & " already exists, not redeclaring")
when not declared(nrand48):
  proc nrand48*(compilerxsubi: array[3'i64, cushort]): clong {.cdecl,
      importc: "nrand48".}
else:
  static :
    hint("Declaration of " & "nrand48" & " already exists, not redeclaring")
when not declared(mrand48):
  proc mrand48*(): clong {.cdecl, importc: "mrand48".}
else:
  static :
    hint("Declaration of " & "mrand48" & " already exists, not redeclaring")
when not declared(jrand48):
  proc jrand48*(compilerxsubi: array[3'i64, cushort]): clong {.cdecl,
      importc: "jrand48".}
else:
  static :
    hint("Declaration of " & "jrand48" & " already exists, not redeclaring")
when not declared(srand48):
  proc srand48*(compilerseedval: clong): void {.cdecl, importc: "srand48".}
else:
  static :
    hint("Declaration of " & "srand48" & " already exists, not redeclaring")
when not declared(seed48):
  proc seed48*(compilerseed16v: array[3'i64, cushort]): ptr cushort {.cdecl,
      importc: "seed48".}
else:
  static :
    hint("Declaration of " & "seed48" & " already exists, not redeclaring")
when not declared(lcong48):
  proc lcong48*(compilerparam: array[7'i64, cushort]): void {.cdecl,
      importc: "lcong48".}
else:
  static :
    hint("Declaration of " & "lcong48" & " already exists, not redeclaring")
when not declared(drand48r):
  proc drand48r*(compilerbuffer: ptr structdrand48data_520094434;
                 compilerresult: ptr cdouble): cint {.cdecl,
      importc: "drand48_r".}
else:
  static :
    hint("Declaration of " & "drand48r" & " already exists, not redeclaring")
when not declared(erand48r):
  proc erand48r*(compilerxsubi: array[3'i64, cushort];
                 compilerbuffer: ptr structdrand48data_520094434;
                 compilerresult: ptr cdouble): cint {.cdecl,
      importc: "erand48_r".}
else:
  static :
    hint("Declaration of " & "erand48r" & " already exists, not redeclaring")
when not declared(lrand48r):
  proc lrand48r*(compilerbuffer: ptr structdrand48data_520094434;
                 compilerresult: ptr clong): cint {.cdecl, importc: "lrand48_r".}
else:
  static :
    hint("Declaration of " & "lrand48r" & " already exists, not redeclaring")
when not declared(nrand48r):
  proc nrand48r*(compilerxsubi: array[3'i64, cushort];
                 compilerbuffer: ptr structdrand48data_520094434;
                 compilerresult: ptr clong): cint {.cdecl, importc: "nrand48_r".}
else:
  static :
    hint("Declaration of " & "nrand48r" & " already exists, not redeclaring")
when not declared(mrand48r):
  proc mrand48r*(compilerbuffer: ptr structdrand48data_520094434;
                 compilerresult: ptr clong): cint {.cdecl, importc: "mrand48_r".}
else:
  static :
    hint("Declaration of " & "mrand48r" & " already exists, not redeclaring")
when not declared(jrand48r):
  proc jrand48r*(compilerxsubi: array[3'i64, cushort];
                 compilerbuffer: ptr structdrand48data_520094434;
                 compilerresult: ptr clong): cint {.cdecl, importc: "jrand48_r".}
else:
  static :
    hint("Declaration of " & "jrand48r" & " already exists, not redeclaring")
when not declared(srand48r):
  proc srand48r*(compilerseedval: clong; compilerbuffer: ptr structdrand48data_520094434): cint {.
      cdecl, importc: "srand48_r".}
else:
  static :
    hint("Declaration of " & "srand48r" & " already exists, not redeclaring")
when not declared(seed48r):
  proc seed48r*(compilerseed16v: array[3'i64, cushort];
                compilerbuffer: ptr structdrand48data_520094434): cint {.cdecl,
      importc: "seed48_r".}
else:
  static :
    hint("Declaration of " & "seed48r" & " already exists, not redeclaring")
when not declared(lcong48r):
  proc lcong48r*(compilerparam: array[7'i64, cushort];
                 compilerbuffer: ptr structdrand48data_520094434): cint {.cdecl,
      importc: "lcong48_r".}
else:
  static :
    hint("Declaration of " & "lcong48r" & " already exists, not redeclaring")
when not declared(arc4random):
  proc arc4random*(): compileruint32t_520094071 {.cdecl, importc: "arc4random".}
else:
  static :
    hint("Declaration of " & "arc4random" & " already exists, not redeclaring")
when not declared(arc4randombuf):
  proc arc4randombuf*(compilerbuf: pointer; compilersize: csize_t): void {.
      cdecl, importc: "arc4random_buf".}
else:
  static :
    hint("Declaration of " & "arc4randombuf" &
        " already exists, not redeclaring")
when not declared(arc4randomuniform):
  proc arc4randomuniform*(compilerupperbound: compileruint32t_520094071): compileruint32t_520094071 {.
      cdecl, importc: "arc4random_uniform".}
else:
  static :
    hint("Declaration of " & "arc4randomuniform" &
        " already exists, not redeclaring")
when not declared(malloc):
  proc malloc*(compilersize: culong): pointer {.cdecl, importc: "malloc".}
else:
  static :
    hint("Declaration of " & "malloc" & " already exists, not redeclaring")
when not declared(calloc):
  proc calloc*(compilernmemb: culong; compilersize: culong): pointer {.cdecl,
      importc: "calloc".}
else:
  static :
    hint("Declaration of " & "calloc" & " already exists, not redeclaring")
when not declared(realloc):
  proc realloc*(compilerptr: pointer; compilersize: culong): pointer {.cdecl,
      importc: "realloc".}
else:
  static :
    hint("Declaration of " & "realloc" & " already exists, not redeclaring")
when not declared(free):
  proc free*(compilerptr: pointer): void {.cdecl, importc: "free".}
else:
  static :
    hint("Declaration of " & "free" & " already exists, not redeclaring")
when not declared(reallocarray):
  proc reallocarray*(compilerptr: pointer; compilernmemb: csize_t;
                     compilersize: csize_t): pointer {.cdecl,
      importc: "reallocarray".}
else:
  static :
    hint("Declaration of " & "reallocarray" & " already exists, not redeclaring")
when not declared(alloca):
  proc alloca*(compilersize: culong): pointer {.cdecl, importc: "alloca".}
else:
  static :
    hint("Declaration of " & "alloca" & " already exists, not redeclaring")
when not declared(valloc):
  proc valloc*(compilersize: csize_t): pointer {.cdecl, importc: "valloc".}
else:
  static :
    hint("Declaration of " & "valloc" & " already exists, not redeclaring")
when not declared(posixmemalign):
  proc posixmemalign*(compilermemptr: ptr pointer; compileralignment: csize_t;
                      compilersize: csize_t): cint {.cdecl,
      importc: "posix_memalign".}
else:
  static :
    hint("Declaration of " & "posixmemalign" &
        " already exists, not redeclaring")
when not declared(alignedalloc):
  proc alignedalloc*(compileralignment: culong; compilersize: culong): pointer {.
      cdecl, importc: "aligned_alloc".}
else:
  static :
    hint("Declaration of " & "alignedalloc" & " already exists, not redeclaring")
when not declared(abort):
  proc abort*(): void {.cdecl, importc: "abort".}
else:
  static :
    hint("Declaration of " & "abort" & " already exists, not redeclaring")
when not declared(atexit):
  proc atexit*(compilerfunc: proc (): void {.cdecl.}): cint {.cdecl,
      importc: "atexit".}
else:
  static :
    hint("Declaration of " & "atexit" & " already exists, not redeclaring")
when not declared(atquickexit):
  proc atquickexit*(compilerfunc: proc (): void {.cdecl.}): cint {.cdecl,
      importc: "at_quick_exit".}
else:
  static :
    hint("Declaration of " & "atquickexit" & " already exists, not redeclaring")
when not declared(onexit):
  proc onexit*(compilerfunc: proc (a0: cint; a1: pointer): void {.cdecl.};
               compilerarg: pointer): cint {.cdecl, importc: "on_exit".}
else:
  static :
    hint("Declaration of " & "onexit" & " already exists, not redeclaring")
when not declared(exit):
  proc exit*(compilerstatus: cint): void {.cdecl, importc: "exit".}
else:
  static :
    hint("Declaration of " & "exit" & " already exists, not redeclaring")
when not declared(quickexit):
  proc quickexit*(compilerstatus: cint): void {.cdecl, importc: "quick_exit".}
else:
  static :
    hint("Declaration of " & "quickexit" & " already exists, not redeclaring")
when not declared(internalexit):
  proc internalexit*(compilerstatus: cint): void {.cdecl, importc: "_Exit".}
else:
  static :
    hint("Declaration of " & "internalexit" & " already exists, not redeclaring")
when not declared(getenv):
  proc getenv*(compilername: cstring): cstring {.cdecl, importc: "getenv".}
else:
  static :
    hint("Declaration of " & "getenv" & " already exists, not redeclaring")
when not declared(putenv):
  proc putenv*(compilerstring: cstring): cint {.cdecl, importc: "putenv".}
else:
  static :
    hint("Declaration of " & "putenv" & " already exists, not redeclaring")
when not declared(setenv):
  proc setenv*(compilername: cstring; compilervalue: cstring;
               compilerreplace: cint): cint {.cdecl, importc: "setenv".}
else:
  static :
    hint("Declaration of " & "setenv" & " already exists, not redeclaring")
when not declared(unsetenv):
  proc unsetenv*(compilername: cstring): cint {.cdecl, importc: "unsetenv".}
else:
  static :
    hint("Declaration of " & "unsetenv" & " already exists, not redeclaring")
when not declared(clearenv):
  proc clearenv*(): cint {.cdecl, importc: "clearenv".}
else:
  static :
    hint("Declaration of " & "clearenv" & " already exists, not redeclaring")
when not declared(mktemp):
  proc mktemp*(compilertemplate: cstring): cstring {.cdecl, importc: "mktemp".}
else:
  static :
    hint("Declaration of " & "mktemp" & " already exists, not redeclaring")
when not declared(mkstemp):
  proc mkstemp*(compilertemplate: cstring): cint {.cdecl, importc: "mkstemp".}
else:
  static :
    hint("Declaration of " & "mkstemp" & " already exists, not redeclaring")
when not declared(mkstemps):
  proc mkstemps*(compilertemplate: cstring; compilersuffixlen: cint): cint {.
      cdecl, importc: "mkstemps".}
else:
  static :
    hint("Declaration of " & "mkstemps" & " already exists, not redeclaring")
when not declared(mkdtemp):
  proc mkdtemp*(compilertemplate: cstring): cstring {.cdecl, importc: "mkdtemp".}
else:
  static :
    hint("Declaration of " & "mkdtemp" & " already exists, not redeclaring")
when not declared(system):
  proc system*(compilercommand: cstring): cint {.cdecl, importc: "system".}
else:
  static :
    hint("Declaration of " & "system" & " already exists, not redeclaring")
when not declared(realpath):
  proc realpath*(compilername: cstring; compilerresolved: cstring): cstring {.
      cdecl, importc: "realpath".}
else:
  static :
    hint("Declaration of " & "realpath" & " already exists, not redeclaring")
when not declared(bsearch):
  proc bsearch*(compilerkey: pointer; compilerbase: pointer;
                compilernmemb: csize_t; compilersize: csize_t;
                compilercompar: compilercomparfnt_520094436): pointer {.cdecl,
      importc: "bsearch".}
else:
  static :
    hint("Declaration of " & "bsearch" & " already exists, not redeclaring")
when not declared(qsort):
  proc qsort*(compilerbase: pointer; compilernmemb: csize_t;
              compilersize: csize_t; compilercompar: compilercomparfnt_520094436): void {.
      cdecl, importc: "qsort".}
else:
  static :
    hint("Declaration of " & "qsort" & " already exists, not redeclaring")
when not declared(abs):
  proc abs*(compilerx: cint): cint {.cdecl, importc: "abs".}
else:
  static :
    hint("Declaration of " & "abs" & " already exists, not redeclaring")
when not declared(labs):
  proc labs*(compilerx: clong): clong {.cdecl, importc: "labs".}
else:
  static :
    hint("Declaration of " & "labs" & " already exists, not redeclaring")
when not declared(llabs):
  proc llabs*(compilerx: clonglong): clonglong {.cdecl, importc: "llabs".}
else:
  static :
    hint("Declaration of " & "llabs" & " already exists, not redeclaring")
when not declared(divproc):
  proc divproc*(compilernumer: cint; compilerdenom: cint): divt_520094258 {.
      cdecl, importc: "div".}
else:
  static :
    hint("Declaration of " & "divproc" & " already exists, not redeclaring")
when not declared(ldiv):
  proc ldiv*(compilernumer: clong; compilerdenom: clong): ldivt_520094262 {.
      cdecl, importc: "ldiv".}
else:
  static :
    hint("Declaration of " & "ldiv" & " already exists, not redeclaring")
when not declared(lldiv):
  proc lldiv*(compilernumer: clonglong; compilerdenom: clonglong): lldivt_520094266 {.
      cdecl, importc: "lldiv".}
else:
  static :
    hint("Declaration of " & "lldiv" & " already exists, not redeclaring")
when not declared(ecvt):
  proc ecvt*(compilervalue: cdouble; compilerndigit: cint;
             compilerdecpt: ptr cint; compilersign: ptr cint): cstring {.cdecl,
      importc: "ecvt".}
else:
  static :
    hint("Declaration of " & "ecvt" & " already exists, not redeclaring")
when not declared(fcvt):
  proc fcvt*(compilervalue: cdouble; compilerndigit: cint;
             compilerdecpt: ptr cint; compilersign: ptr cint): cstring {.cdecl,
      importc: "fcvt".}
else:
  static :
    hint("Declaration of " & "fcvt" & " already exists, not redeclaring")
when not declared(gcvt):
  proc gcvt*(compilervalue: cdouble; compilerndigit: cint; compilerbuf: cstring): cstring {.
      cdecl, importc: "gcvt".}
else:
  static :
    hint("Declaration of " & "gcvt" & " already exists, not redeclaring")
when not declared(qecvt):
  proc qecvt*(compilervalue: clongdouble; compilerndigit: cint;
              compilerdecpt: ptr cint; compilersign: ptr cint): cstring {.cdecl,
      importc: "qecvt".}
else:
  static :
    hint("Declaration of " & "qecvt" & " already exists, not redeclaring")
when not declared(qfcvt):
  proc qfcvt*(compilervalue: clongdouble; compilerndigit: cint;
              compilerdecpt: ptr cint; compilersign: ptr cint): cstring {.cdecl,
      importc: "qfcvt".}
else:
  static :
    hint("Declaration of " & "qfcvt" & " already exists, not redeclaring")
when not declared(qgcvt):
  proc qgcvt*(compilervalue: clongdouble; compilerndigit: cint;
              compilerbuf: cstring): cstring {.cdecl, importc: "qgcvt".}
else:
  static :
    hint("Declaration of " & "qgcvt" & " already exists, not redeclaring")
when not declared(ecvtr):
  proc ecvtr*(compilervalue: cdouble; compilerndigit: cint;
              compilerdecpt: ptr cint; compilersign: ptr cint;
              compilerbuf: cstring; compilerlen: csize_t): cint {.cdecl,
      importc: "ecvt_r".}
else:
  static :
    hint("Declaration of " & "ecvtr" & " already exists, not redeclaring")
when not declared(fcvtr):
  proc fcvtr*(compilervalue: cdouble; compilerndigit: cint;
              compilerdecpt: ptr cint; compilersign: ptr cint;
              compilerbuf: cstring; compilerlen: csize_t): cint {.cdecl,
      importc: "fcvt_r".}
else:
  static :
    hint("Declaration of " & "fcvtr" & " already exists, not redeclaring")
when not declared(qecvtr):
  proc qecvtr*(compilervalue: clongdouble; compilerndigit: cint;
               compilerdecpt: ptr cint; compilersign: ptr cint;
               compilerbuf: cstring; compilerlen: csize_t): cint {.cdecl,
      importc: "qecvt_r".}
else:
  static :
    hint("Declaration of " & "qecvtr" & " already exists, not redeclaring")
when not declared(qfcvtr):
  proc qfcvtr*(compilervalue: clongdouble; compilerndigit: cint;
               compilerdecpt: ptr cint; compilersign: ptr cint;
               compilerbuf: cstring; compilerlen: csize_t): cint {.cdecl,
      importc: "qfcvt_r".}
else:
  static :
    hint("Declaration of " & "qfcvtr" & " already exists, not redeclaring")
when not declared(mblen):
  proc mblen*(compilers: cstring; compilern: csize_t): cint {.cdecl,
      importc: "mblen".}
else:
  static :
    hint("Declaration of " & "mblen" & " already exists, not redeclaring")
when not declared(mbtowc):
  proc mbtowc*(compilerpwc: ptr wchart_520094438; compilers: cstring;
               compilern: csize_t): cint {.cdecl, importc: "mbtowc".}
else:
  static :
    hint("Declaration of " & "mbtowc" & " already exists, not redeclaring")
when not declared(wctomb):
  proc wctomb*(compilers: cstring; compilerwchar: wchart_520094438): cint {.
      cdecl, importc: "wctomb".}
else:
  static :
    hint("Declaration of " & "wctomb" & " already exists, not redeclaring")
when not declared(mbstowcs):
  proc mbstowcs*(compilerpwcs: ptr wchart_520094438; compilers: cstring;
                 compilern: csize_t): csize_t {.cdecl, importc: "mbstowcs".}
else:
  static :
    hint("Declaration of " & "mbstowcs" & " already exists, not redeclaring")
when not declared(wcstombs):
  proc wcstombs*(compilers: cstring; compilerpwcs: ptr wchart_520094438;
                 compilern: csize_t): csize_t {.cdecl, importc: "wcstombs".}
else:
  static :
    hint("Declaration of " & "wcstombs" & " already exists, not redeclaring")
when not declared(rpmatch):
  proc rpmatch*(compilerresponse: cstring): cint {.cdecl, importc: "rpmatch".}
else:
  static :
    hint("Declaration of " & "rpmatch" & " already exists, not redeclaring")
when not declared(getsubopt):
  proc getsubopt*(compileroptionp: ptr cstring; compilertokens: ptr cstring;
                  compilervaluep: ptr cstring): cint {.cdecl,
      importc: "getsubopt".}
else:
  static :
    hint("Declaration of " & "getsubopt" & " already exists, not redeclaring")
when not declared(getloadavg):
  proc getloadavg*(compilerloadavg: ptr UncheckedArray[cdouble];
                   compilernelem: cint): cint {.cdecl, importc: "getloadavg".}
else:
  static :
    hint("Declaration of " & "getloadavg" & " already exists, not redeclaring")
when not declared(cryptohashsha512statebytes):
  proc cryptohashsha512statebytes*(): csize_t {.cdecl,
      importc: "crypto_hash_sha512_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptohashsha512statebytes" &
        " already exists, not redeclaring")
when not declared(cryptohashsha512bytesproc):
  proc cryptohashsha512bytesproc*(): csize_t {.cdecl,
      importc: "crypto_hash_sha512_bytes".}
else:
  static :
    hint("Declaration of " & "cryptohashsha512bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptohashsha512):
  proc cryptohashsha512*(outarg: ptr uint8; inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_hash_sha512".}
else:
  static :
    hint("Declaration of " & "cryptohashsha512" &
        " already exists, not redeclaring")
when not declared(cryptohashsha512init):
  proc cryptohashsha512init*(state: ptr cryptohashsha512state_520094442): cint {.
      cdecl, importc: "crypto_hash_sha512_init".}
else:
  static :
    hint("Declaration of " & "cryptohashsha512init" &
        " already exists, not redeclaring")
when not declared(cryptohashsha512update):
  proc cryptohashsha512update*(state: ptr cryptohashsha512state_520094442;
                               inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_hash_sha512_update".}
else:
  static :
    hint("Declaration of " & "cryptohashsha512update" &
        " already exists, not redeclaring")
when not declared(cryptohashsha512final):
  proc cryptohashsha512final*(state: ptr cryptohashsha512state_520094442;
                              outarg: ptr uint8): cint {.cdecl,
      importc: "crypto_hash_sha512_final".}
else:
  static :
    hint("Declaration of " & "cryptohashsha512final" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512bytesproc):
  proc cryptoauthhmacsha512bytesproc*(): csize_t {.cdecl,
      importc: "crypto_auth_hmacsha512_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512keybytesproc):
  proc cryptoauthhmacsha512keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_auth_hmacsha512_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512):
  proc cryptoauthhmacsha512*(outarg: ptr uint8; inarg: ptr uint8;
                             inlen: culonglong; k: ptr uint8): cint {.cdecl,
      importc: "crypto_auth_hmacsha512".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512verify):
  proc cryptoauthhmacsha512verify*(h: ptr uint8; inarg: ptr uint8;
                                   inlen: culonglong; k: ptr uint8): cint {.
      cdecl, importc: "crypto_auth_hmacsha512_verify".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512verify" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512statebytes):
  proc cryptoauthhmacsha512statebytes*(): csize_t {.cdecl,
      importc: "crypto_auth_hmacsha512_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512statebytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512init):
  proc cryptoauthhmacsha512init*(state: ptr cryptoauthhmacsha512state_520094446;
                                 key: ptr uint8; keylen: csize_t): cint {.cdecl,
      importc: "crypto_auth_hmacsha512_init".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512init" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512update):
  proc cryptoauthhmacsha512update*(state: ptr cryptoauthhmacsha512state_520094446;
                                   inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_auth_hmacsha512_update".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512update" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512final):
  proc cryptoauthhmacsha512final*(state: ptr cryptoauthhmacsha512state_520094446;
                                  outarg: ptr uint8): cint {.cdecl,
      importc: "crypto_auth_hmacsha512_final".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512final" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512keygen):
  proc cryptoauthhmacsha512keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_auth_hmacsha512_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512keygen" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256bytesproc):
  proc cryptoauthhmacsha512256bytesproc*(): csize_t {.cdecl,
      importc: "crypto_auth_hmacsha512256_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256keybytesproc):
  proc cryptoauthhmacsha512256keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_auth_hmacsha512256_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256):
  proc cryptoauthhmacsha512256*(outarg: ptr uint8; inarg: ptr uint8;
                                inlen: culonglong; k: ptr uint8): cint {.cdecl,
      importc: "crypto_auth_hmacsha512256".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256verify):
  proc cryptoauthhmacsha512256verify*(h: ptr uint8; inarg: ptr uint8;
                                      inlen: culonglong; k: ptr uint8): cint {.
      cdecl, importc: "crypto_auth_hmacsha512256_verify".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256verify" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256statebytes):
  proc cryptoauthhmacsha512256statebytes*(): csize_t {.cdecl,
      importc: "crypto_auth_hmacsha512256_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256statebytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256init):
  proc cryptoauthhmacsha512256init*(state: ptr cryptoauthhmacsha512256state_520094448;
                                    key: ptr uint8; keylen: csize_t): cint {.
      cdecl, importc: "crypto_auth_hmacsha512256_init".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256init" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256update):
  proc cryptoauthhmacsha512256update*(state: ptr cryptoauthhmacsha512256state_520094448;
                                      inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_auth_hmacsha512256_update".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256update" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256final):
  proc cryptoauthhmacsha512256final*(state: ptr cryptoauthhmacsha512256state_520094448;
                                     outarg: ptr uint8): cint {.cdecl,
      importc: "crypto_auth_hmacsha512256_final".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256final" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha512256keygen):
  proc cryptoauthhmacsha512256keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_auth_hmacsha512256_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha512256keygen" &
        " already exists, not redeclaring")
when not declared(cryptoauthbytesproc):
  proc cryptoauthbytesproc*(): csize_t {.cdecl, importc: "crypto_auth_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoauthkeybytesproc):
  proc cryptoauthkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_auth_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoauthprimitiveproc):
  proc cryptoauthprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_auth_primitive".}
else:
  static :
    hint("Declaration of " & "cryptoauthprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptoauth):
  proc cryptoauth*(outarg: ptr uint8; inarg: ptr uint8; inlen: culonglong;
                   k: ptr uint8): cint {.cdecl, importc: "crypto_auth".}
else:
  static :
    hint("Declaration of " & "cryptoauth" & " already exists, not redeclaring")
when not declared(cryptoauthverify):
  proc cryptoauthverify*(h: ptr uint8; inarg: ptr uint8; inlen: culonglong;
                         k: ptr uint8): cint {.cdecl,
      importc: "crypto_auth_verify".}
else:
  static :
    hint("Declaration of " & "cryptoauthverify" &
        " already exists, not redeclaring")
when not declared(cryptoauthkeygen):
  proc cryptoauthkeygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_auth_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoauthkeygen" &
        " already exists, not redeclaring")
when not declared(cryptohashsha256statebytes):
  proc cryptohashsha256statebytes*(): csize_t {.cdecl,
      importc: "crypto_hash_sha256_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptohashsha256statebytes" &
        " already exists, not redeclaring")
when not declared(cryptohashsha256bytesproc):
  proc cryptohashsha256bytesproc*(): csize_t {.cdecl,
      importc: "crypto_hash_sha256_bytes".}
else:
  static :
    hint("Declaration of " & "cryptohashsha256bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptohashsha256):
  proc cryptohashsha256*(outarg: ptr uint8; inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_hash_sha256".}
else:
  static :
    hint("Declaration of " & "cryptohashsha256" &
        " already exists, not redeclaring")
when not declared(cryptohashsha256init):
  proc cryptohashsha256init*(state: ptr cryptohashsha256state_520094452): cint {.
      cdecl, importc: "crypto_hash_sha256_init".}
else:
  static :
    hint("Declaration of " & "cryptohashsha256init" &
        " already exists, not redeclaring")
when not declared(cryptohashsha256update):
  proc cryptohashsha256update*(state: ptr cryptohashsha256state_520094452;
                               inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_hash_sha256_update".}
else:
  static :
    hint("Declaration of " & "cryptohashsha256update" &
        " already exists, not redeclaring")
when not declared(cryptohashsha256final):
  proc cryptohashsha256final*(state: ptr cryptohashsha256state_520094452;
                              outarg: ptr uint8): cint {.cdecl,
      importc: "crypto_hash_sha256_final".}
else:
  static :
    hint("Declaration of " & "cryptohashsha256final" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256bytesproc):
  proc cryptoauthhmacsha256bytesproc*(): csize_t {.cdecl,
      importc: "crypto_auth_hmacsha256_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256keybytesproc):
  proc cryptoauthhmacsha256keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_auth_hmacsha256_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256):
  proc cryptoauthhmacsha256*(outarg: ptr uint8; inarg: ptr uint8;
                             inlen: culonglong; k: ptr uint8): cint {.cdecl,
      importc: "crypto_auth_hmacsha256".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256verify):
  proc cryptoauthhmacsha256verify*(h: ptr uint8; inarg: ptr uint8;
                                   inlen: culonglong; k: ptr uint8): cint {.
      cdecl, importc: "crypto_auth_hmacsha256_verify".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256verify" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256statebytes):
  proc cryptoauthhmacsha256statebytes*(): csize_t {.cdecl,
      importc: "crypto_auth_hmacsha256_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256statebytes" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256init):
  proc cryptoauthhmacsha256init*(state: ptr cryptoauthhmacsha256state_520094456;
                                 key: ptr uint8; keylen: csize_t): cint {.cdecl,
      importc: "crypto_auth_hmacsha256_init".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256init" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256update):
  proc cryptoauthhmacsha256update*(state: ptr cryptoauthhmacsha256state_520094456;
                                   inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_auth_hmacsha256_update".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256update" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256final):
  proc cryptoauthhmacsha256final*(state: ptr cryptoauthhmacsha256state_520094456;
                                  outarg: ptr uint8): cint {.cdecl,
      importc: "crypto_auth_hmacsha256_final".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256final" &
        " already exists, not redeclaring")
when not declared(cryptoauthhmacsha256keygen):
  proc cryptoauthhmacsha256keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_auth_hmacsha256_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoauthhmacsha256keygen" &
        " already exists, not redeclaring")
when not declared(cryptostreamxsalsa20keybytesproc):
  proc cryptostreamxsalsa20keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_xsalsa20_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamxsalsa20keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamxsalsa20noncebytesproc):
  proc cryptostreamxsalsa20noncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_xsalsa20_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamxsalsa20noncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamxsalsa20messagebytesmaxproc):
  proc cryptostreamxsalsa20messagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_stream_xsalsa20_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptostreamxsalsa20messagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamxsalsa20):
  proc cryptostreamxsalsa20*(c: ptr uint8; clen: culonglong; n: ptr uint8;
                             k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_xsalsa20".}
else:
  static :
    hint("Declaration of " & "cryptostreamxsalsa20" &
        " already exists, not redeclaring")
when not declared(cryptostreamxsalsa20xor):
  proc cryptostreamxsalsa20xor*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                                n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_xsalsa20_xor".}
else:
  static :
    hint("Declaration of " & "cryptostreamxsalsa20xor" &
        " already exists, not redeclaring")
when not declared(cryptostreamxsalsa20xoric):
  proc cryptostreamxsalsa20xoric*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                                  n: ptr uint8; ic: uint64; k: ptr uint8): cint {.
      cdecl, importc: "crypto_stream_xsalsa20_xor_ic".}
else:
  static :
    hint("Declaration of " & "cryptostreamxsalsa20xoric" &
        " already exists, not redeclaring")
when not declared(cryptostreamxsalsa20keygen):
  proc cryptostreamxsalsa20keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_stream_xsalsa20_keygen".}
else:
  static :
    hint("Declaration of " & "cryptostreamxsalsa20keygen" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305seedbytesproc):
  proc cryptoboxcurve25519xsalsa20poly1305seedbytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xsalsa20poly1305_seedbytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305seedbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305publickeybytesproc):
  proc cryptoboxcurve25519xsalsa20poly1305publickeybytesproc*(): csize_t {.
      cdecl, importc: "crypto_box_curve25519xsalsa20poly1305_publickeybytes".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xsalsa20poly1305publickeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305secretkeybytesproc):
  proc cryptoboxcurve25519xsalsa20poly1305secretkeybytesproc*(): csize_t {.
      cdecl, importc: "crypto_box_curve25519xsalsa20poly1305_secretkeybytes".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xsalsa20poly1305secretkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305beforenmbytesproc):
  proc cryptoboxcurve25519xsalsa20poly1305beforenmbytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xsalsa20poly1305_beforenmbytes".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xsalsa20poly1305beforenmbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305noncebytesproc):
  proc cryptoboxcurve25519xsalsa20poly1305noncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xsalsa20poly1305_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305noncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305macbytesproc):
  proc cryptoboxcurve25519xsalsa20poly1305macbytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xsalsa20poly1305_macbytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305macbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305messagebytesmax):
  proc cryptoboxcurve25519xsalsa20poly1305messagebytesmax*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xsalsa20poly1305_messagebytes_max".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xsalsa20poly1305messagebytesmax" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305seedkeypair):
  proc cryptoboxcurve25519xsalsa20poly1305seedkeypair*(pk: ptr uint8;
      sk: ptr uint8; seed: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xsalsa20poly1305_seed_keypair".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305seedkeypair" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305keypair):
  proc cryptoboxcurve25519xsalsa20poly1305keypair*(pk: ptr uint8; sk: ptr uint8): cint {.
      cdecl, importc: "crypto_box_curve25519xsalsa20poly1305_keypair".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305keypair" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305beforenm):
  proc cryptoboxcurve25519xsalsa20poly1305beforenm*(k: ptr uint8; pk: ptr uint8;
      sk: ptr uint8): cint {.cdecl, importc: "crypto_box_curve25519xsalsa20poly1305_beforenm".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305beforenm" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305boxzerobytesproc):
  proc cryptoboxcurve25519xsalsa20poly1305boxzerobytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xsalsa20poly1305_boxzerobytes".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xsalsa20poly1305boxzerobytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305zerobytes):
  proc cryptoboxcurve25519xsalsa20poly1305zerobytes*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xsalsa20poly1305_zerobytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305zerobytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305):
  proc cryptoboxcurve25519xsalsa20poly1305*(c: ptr uint8; m: ptr uint8;
      mlen: culonglong; n: ptr uint8; pk: ptr uint8; sk: ptr uint8): cint {.
      cdecl, importc: "crypto_box_curve25519xsalsa20poly1305".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305open):
  proc cryptoboxcurve25519xsalsa20poly1305open*(m: ptr uint8; c: ptr uint8;
      clen: culonglong; n: ptr uint8; pk: ptr uint8; sk: ptr uint8): cint {.
      cdecl, importc: "crypto_box_curve25519xsalsa20poly1305_open".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305open" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305afternm):
  proc cryptoboxcurve25519xsalsa20poly1305afternm*(c: ptr uint8; m: ptr uint8;
      mlen: culonglong; n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xsalsa20poly1305_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305afternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xsalsa20poly1305openafternm):
  proc cryptoboxcurve25519xsalsa20poly1305openafternm*(m: ptr uint8;
      c: ptr uint8; clen: culonglong; n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xsalsa20poly1305_open_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xsalsa20poly1305openafternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxseedbytesproc):
  proc cryptoboxseedbytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_seedbytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxseedbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxpublickeybytesproc):
  proc cryptoboxpublickeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_publickeybytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxpublickeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxsecretkeybytesproc):
  proc cryptoboxsecretkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_secretkeybytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxsecretkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxnoncebytesproc):
  proc cryptoboxnoncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxnoncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxmacbytesproc):
  proc cryptoboxmacbytesproc*(): csize_t {.cdecl, importc: "crypto_box_macbytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxmacbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxmessagebytesmaxproc):
  proc cryptoboxmessagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_box_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptoboxmessagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxprimitiveproc):
  proc cryptoboxprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_box_primitive".}
else:
  static :
    hint("Declaration of " & "cryptoboxprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxseedkeypair):
  proc cryptoboxseedkeypair*(pk: ptr uint8; sk: ptr uint8; seed: ptr uint8): cint {.
      cdecl, importc: "crypto_box_seed_keypair".}
else:
  static :
    hint("Declaration of " & "cryptoboxseedkeypair" &
        " already exists, not redeclaring")
when not declared(cryptoboxkeypair):
  proc cryptoboxkeypair*(pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_keypair".}
else:
  static :
    hint("Declaration of " & "cryptoboxkeypair" &
        " already exists, not redeclaring")
when not declared(cryptoboxeasy):
  proc cryptoboxeasy*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                      n: ptr uint8; pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_easy".}
else:
  static :
    hint("Declaration of " & "cryptoboxeasy" &
        " already exists, not redeclaring")
when not declared(cryptoboxopeneasy):
  proc cryptoboxopeneasy*(m: ptr uint8; c: ptr uint8; clen: culonglong;
                          n: ptr uint8; pk: ptr uint8; sk: ptr uint8): cint {.
      cdecl, importc: "crypto_box_open_easy".}
else:
  static :
    hint("Declaration of " & "cryptoboxopeneasy" &
        " already exists, not redeclaring")
when not declared(cryptoboxdetached):
  proc cryptoboxdetached*(c: ptr uint8; mac: ptr uint8; m: ptr uint8;
                          mlen: culonglong; n: ptr uint8; pk: ptr uint8;
                          sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_detached".}
else:
  static :
    hint("Declaration of " & "cryptoboxdetached" &
        " already exists, not redeclaring")
when not declared(cryptoboxopendetached):
  proc cryptoboxopendetached*(m: ptr uint8; c: ptr uint8; mac: ptr uint8;
                              clen: culonglong; n: ptr uint8; pk: ptr uint8;
                              sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_open_detached".}
else:
  static :
    hint("Declaration of " & "cryptoboxopendetached" &
        " already exists, not redeclaring")
when not declared(cryptoboxbeforenmbytesproc):
  proc cryptoboxbeforenmbytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_beforenmbytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxbeforenmbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxbeforenm):
  proc cryptoboxbeforenm*(k: ptr uint8; pk: ptr uint8; sk: ptr uint8): cint {.
      cdecl, importc: "crypto_box_beforenm".}
else:
  static :
    hint("Declaration of " & "cryptoboxbeforenm" &
        " already exists, not redeclaring")
when not declared(cryptoboxeasyafternm):
  proc cryptoboxeasyafternm*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                             n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_box_easy_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoboxeasyafternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxopeneasyafternm):
  proc cryptoboxopeneasyafternm*(m: ptr uint8; c: ptr uint8; clen: culonglong;
                                 n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_box_open_easy_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoboxopeneasyafternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxdetachedafternm):
  proc cryptoboxdetachedafternm*(c: ptr uint8; mac: ptr uint8; m: ptr uint8;
                                 mlen: culonglong; n: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_box_detached_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoboxdetachedafternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxopendetachedafternm):
  proc cryptoboxopendetachedafternm*(m: ptr uint8; c: ptr uint8; mac: ptr uint8;
                                     clen: culonglong; n: ptr uint8;
                                     k: ptr uint8): cint {.cdecl,
      importc: "crypto_box_open_detached_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoboxopendetachedafternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxsealbytes):
  proc cryptoboxsealbytes*(): csize_t {.cdecl, importc: "crypto_box_sealbytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxsealbytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxseal):
  proc cryptoboxseal*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                      pk: ptr uint8): cint {.cdecl, importc: "crypto_box_seal".}
else:
  static :
    hint("Declaration of " & "cryptoboxseal" &
        " already exists, not redeclaring")
when not declared(cryptoboxsealopen):
  proc cryptoboxsealopen*(m: ptr uint8; c: ptr uint8; clen: culonglong;
                          pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_seal_open".}
else:
  static :
    hint("Declaration of " & "cryptoboxsealopen" &
        " already exists, not redeclaring")
when not declared(cryptoboxzerobytesproc):
  proc cryptoboxzerobytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_zerobytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxzerobytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxboxzerobytesproc):
  proc cryptoboxboxzerobytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_boxzerobytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxboxzerobytesproc" &
        " already exists, not redeclaring")
when not declared(cryptobox):
  proc cryptobox*(c: ptr uint8; m: ptr uint8; mlen: culonglong; n: ptr uint8;
                  pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box".}
else:
  static :
    hint("Declaration of " & "cryptobox" & " already exists, not redeclaring")
when not declared(cryptoboxopen):
  proc cryptoboxopen*(m: ptr uint8; c: ptr uint8; clen: culonglong;
                      n: ptr uint8; pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_open".}
else:
  static :
    hint("Declaration of " & "cryptoboxopen" &
        " already exists, not redeclaring")
when not declared(cryptoboxafternm):
  proc cryptoboxafternm*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                         n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_box_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoboxafternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxopenafternm):
  proc cryptoboxopenafternm*(m: ptr uint8; c: ptr uint8; clen: culonglong;
                             n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_box_open_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoboxopenafternm" &
        " already exists, not redeclaring")
when not declared(cryptocorehsalsa20outputbytesproc):
  proc cryptocorehsalsa20outputbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_hsalsa20_outputbytes".}
else:
  static :
    hint("Declaration of " & "cryptocorehsalsa20outputbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocorehsalsa20inputbytesproc):
  proc cryptocorehsalsa20inputbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_hsalsa20_inputbytes".}
else:
  static :
    hint("Declaration of " & "cryptocorehsalsa20inputbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocorehsalsa20keybytesproc):
  proc cryptocorehsalsa20keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_hsalsa20_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptocorehsalsa20keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocorehsalsa20constbytesproc):
  proc cryptocorehsalsa20constbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_hsalsa20_constbytes".}
else:
  static :
    hint("Declaration of " & "cryptocorehsalsa20constbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocorehsalsa20):
  proc cryptocorehsalsa20*(outarg: ptr uint8; inarg: ptr uint8; k: ptr uint8;
                           c: ptr uint8): cint {.cdecl,
      importc: "crypto_core_hsalsa20".}
else:
  static :
    hint("Declaration of " & "cryptocorehsalsa20" &
        " already exists, not redeclaring")
when not declared(cryptocorehchacha20outputbytesproc):
  proc cryptocorehchacha20outputbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_hchacha20_outputbytes".}
else:
  static :
    hint("Declaration of " & "cryptocorehchacha20outputbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocorehchacha20inputbytesproc):
  proc cryptocorehchacha20inputbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_hchacha20_inputbytes".}
else:
  static :
    hint("Declaration of " & "cryptocorehchacha20inputbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocorehchacha20keybytesproc):
  proc cryptocorehchacha20keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_hchacha20_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptocorehchacha20keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocorehchacha20constbytesproc):
  proc cryptocorehchacha20constbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_hchacha20_constbytes".}
else:
  static :
    hint("Declaration of " & "cryptocorehchacha20constbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocorehchacha20):
  proc cryptocorehchacha20*(outarg: ptr uint8; inarg: ptr uint8; k: ptr uint8;
                            c: ptr uint8): cint {.cdecl,
      importc: "crypto_core_hchacha20".}
else:
  static :
    hint("Declaration of " & "cryptocorehchacha20" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa20outputbytesproc):
  proc cryptocoresalsa20outputbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa20_outputbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa20outputbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa20inputbytesproc):
  proc cryptocoresalsa20inputbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa20_inputbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa20inputbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa20keybytesproc):
  proc cryptocoresalsa20keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa20_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa20keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa20constbytesproc):
  proc cryptocoresalsa20constbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa20_constbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa20constbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa20):
  proc cryptocoresalsa20*(outarg: ptr uint8; inarg: ptr uint8; k: ptr uint8;
                          c: ptr uint8): cint {.cdecl,
      importc: "crypto_core_salsa20".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa20" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa2012outputbytesproc):
  proc cryptocoresalsa2012outputbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa2012_outputbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa2012outputbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa2012inputbytesproc):
  proc cryptocoresalsa2012inputbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa2012_inputbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa2012inputbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa2012keybytesproc):
  proc cryptocoresalsa2012keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa2012_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa2012keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa2012constbytesproc):
  proc cryptocoresalsa2012constbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa2012_constbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa2012constbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa2012):
  proc cryptocoresalsa2012*(outarg: ptr uint8; inarg: ptr uint8; k: ptr uint8;
                            c: ptr uint8): cint {.cdecl,
      importc: "crypto_core_salsa2012".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa2012" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa208outputbytesproc):
  proc cryptocoresalsa208outputbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa208_outputbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa208outputbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa208inputbytesproc):
  proc cryptocoresalsa208inputbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa208_inputbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa208inputbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa208keybytesproc):
  proc cryptocoresalsa208keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa208_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa208keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa208constbytesproc):
  proc cryptocoresalsa208constbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_salsa208_constbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa208constbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoresalsa208):
  proc cryptocoresalsa208*(outarg: ptr uint8; inarg: ptr uint8; k: ptr uint8;
                           c: ptr uint8): cint {.cdecl,
      importc: "crypto_core_salsa208".}
else:
  static :
    hint("Declaration of " & "cryptocoresalsa208" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bbytesminproc):
  proc cryptogenerichashblake2bbytesminproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_blake2b_bytes_min".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bbytesminproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bbytesmaxproc):
  proc cryptogenerichashblake2bbytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_blake2b_bytes_max".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bbytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bbytesproc):
  proc cryptogenerichashblake2bbytesproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_blake2b_bytes".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bkeybytesminproc):
  proc cryptogenerichashblake2bkeybytesminproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_blake2b_keybytes_min".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bkeybytesminproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bkeybytesmaxproc):
  proc cryptogenerichashblake2bkeybytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_blake2b_keybytes_max".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bkeybytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bkeybytesproc):
  proc cryptogenerichashblake2bkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_blake2b_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bsaltbytesproc):
  proc cryptogenerichashblake2bsaltbytesproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_blake2b_saltbytes".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bsaltbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bpersonalbytesproc):
  proc cryptogenerichashblake2bpersonalbytesproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_blake2b_personalbytes".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bpersonalbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bstatebytes):
  proc cryptogenerichashblake2bstatebytes*(): csize_t {.cdecl,
      importc: "crypto_generichash_blake2b_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bstatebytes" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2b):
  proc cryptogenerichashblake2b*(outarg: ptr uint8; outlen: csize_t;
                                 inarg: ptr uint8; inlen: culonglong;
                                 key: ptr uint8; keylen: csize_t): cint {.cdecl,
      importc: "crypto_generichash_blake2b".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2b" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bsaltpersonal):
  proc cryptogenerichashblake2bsaltpersonal*(outarg: ptr uint8; outlen: csize_t;
      inarg: ptr uint8; inlen: culonglong; key: ptr uint8; keylen: csize_t;
      salt: ptr uint8; personal: ptr uint8): cint {.cdecl,
      importc: "crypto_generichash_blake2b_salt_personal".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bsaltpersonal" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2binit):
  proc cryptogenerichashblake2binit*(state: ptr cryptogenerichashblake2bstate_520094460;
                                     key: ptr uint8; keylen: csize_t;
                                     outlen: csize_t): cint {.cdecl,
      importc: "crypto_generichash_blake2b_init".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2binit" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2binitsaltpersonal):
  proc cryptogenerichashblake2binitsaltpersonal*(
      state: ptr cryptogenerichashblake2bstate_520094460; key: ptr uint8;
      keylen: csize_t; outlen: csize_t; salt: ptr uint8; personal: ptr uint8): cint {.
      cdecl, importc: "crypto_generichash_blake2b_init_salt_personal".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2binitsaltpersonal" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bupdate):
  proc cryptogenerichashblake2bupdate*(state: ptr cryptogenerichashblake2bstate_520094460;
                                       inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_generichash_blake2b_update".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bupdate" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bfinal):
  proc cryptogenerichashblake2bfinal*(state: ptr cryptogenerichashblake2bstate_520094460;
                                      outarg: ptr uint8; outlen: csize_t): cint {.
      cdecl, importc: "crypto_generichash_blake2b_final".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bfinal" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashblake2bkeygen):
  proc cryptogenerichashblake2bkeygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_generichash_blake2b_keygen".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashblake2bkeygen" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashbytesminproc):
  proc cryptogenerichashbytesminproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_bytes_min".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashbytesminproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashbytesmaxproc):
  proc cryptogenerichashbytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_bytes_max".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashbytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashbytesproc):
  proc cryptogenerichashbytesproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_bytes".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashkeybytesminproc):
  proc cryptogenerichashkeybytesminproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_keybytes_min".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashkeybytesminproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashkeybytesmaxproc):
  proc cryptogenerichashkeybytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_keybytes_max".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashkeybytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashkeybytesproc):
  proc cryptogenerichashkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_generichash_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashprimitiveproc):
  proc cryptogenerichashprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_generichash_primitive".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashstatebytes):
  proc cryptogenerichashstatebytes*(): csize_t {.cdecl,
      importc: "crypto_generichash_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashstatebytes" &
        " already exists, not redeclaring")
when not declared(cryptogenerichash):
  proc cryptogenerichash*(outarg: ptr uint8; outlen: csize_t; inarg: ptr uint8;
                          inlen: culonglong; key: ptr uint8; keylen: csize_t): cint {.
      cdecl, importc: "crypto_generichash".}
else:
  static :
    hint("Declaration of " & "cryptogenerichash" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashinit):
  proc cryptogenerichashinit*(state: ptr cryptogenerichashstate_520094462;
                              key: ptr uint8; keylen: csize_t; outlen: csize_t): cint {.
      cdecl, importc: "crypto_generichash_init".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashinit" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashupdate):
  proc cryptogenerichashupdate*(state: ptr cryptogenerichashstate_520094462;
                                inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_generichash_update".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashupdate" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashfinal):
  proc cryptogenerichashfinal*(state: ptr cryptogenerichashstate_520094462;
                               outarg: ptr uint8; outlen: csize_t): cint {.
      cdecl, importc: "crypto_generichash_final".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashfinal" &
        " already exists, not redeclaring")
when not declared(cryptogenerichashkeygen):
  proc cryptogenerichashkeygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_generichash_keygen".}
else:
  static :
    hint("Declaration of " & "cryptogenerichashkeygen" &
        " already exists, not redeclaring")
when not declared(cryptohashbytesproc):
  proc cryptohashbytesproc*(): csize_t {.cdecl, importc: "crypto_hash_bytes".}
else:
  static :
    hint("Declaration of " & "cryptohashbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptohash):
  proc cryptohash*(outarg: ptr uint8; inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_hash".}
else:
  static :
    hint("Declaration of " & "cryptohash" & " already exists, not redeclaring")
when not declared(cryptohashprimitiveproc):
  proc cryptohashprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_hash_primitive".}
else:
  static :
    hint("Declaration of " & "cryptohashprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptokdfblake2bbytesminproc):
  proc cryptokdfblake2bbytesminproc*(): csize_t {.cdecl,
      importc: "crypto_kdf_blake2b_bytes_min".}
else:
  static :
    hint("Declaration of " & "cryptokdfblake2bbytesminproc" &
        " already exists, not redeclaring")
when not declared(cryptokdfblake2bbytesmaxproc):
  proc cryptokdfblake2bbytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_kdf_blake2b_bytes_max".}
else:
  static :
    hint("Declaration of " & "cryptokdfblake2bbytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptokdfblake2bcontextbytesproc):
  proc cryptokdfblake2bcontextbytesproc*(): csize_t {.cdecl,
      importc: "crypto_kdf_blake2b_contextbytes".}
else:
  static :
    hint("Declaration of " & "cryptokdfblake2bcontextbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptokdfblake2bkeybytesproc):
  proc cryptokdfblake2bkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_kdf_blake2b_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptokdfblake2bkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptokdfblake2bderivefromkey):
  proc cryptokdfblake2bderivefromkey*(subkey: ptr uint8; subkeylen: csize_t;
                                      subkeyid: uint64;
                                      ctx: array[8'i64, cschar];
                                      key: array[32'i64, uint8]): cint {.cdecl,
      importc: "crypto_kdf_blake2b_derive_from_key".}
else:
  static :
    hint("Declaration of " & "cryptokdfblake2bderivefromkey" &
        " already exists, not redeclaring")
when not declared(cryptokdfbytesminproc):
  proc cryptokdfbytesminproc*(): csize_t {.cdecl,
      importc: "crypto_kdf_bytes_min".}
else:
  static :
    hint("Declaration of " & "cryptokdfbytesminproc" &
        " already exists, not redeclaring")
when not declared(cryptokdfbytesmaxproc):
  proc cryptokdfbytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_kdf_bytes_max".}
else:
  static :
    hint("Declaration of " & "cryptokdfbytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptokdfcontextbytesproc):
  proc cryptokdfcontextbytesproc*(): csize_t {.cdecl,
      importc: "crypto_kdf_contextbytes".}
else:
  static :
    hint("Declaration of " & "cryptokdfcontextbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptokdfkeybytesproc):
  proc cryptokdfkeybytesproc*(): csize_t {.cdecl, importc: "crypto_kdf_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptokdfkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptokdfprimitiveproc):
  proc cryptokdfprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_kdf_primitive".}
else:
  static :
    hint("Declaration of " & "cryptokdfprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptokdfderivefromkey):
  proc cryptokdfderivefromkey*(subkey: ptr uint8; subkeylen: csize_t;
                               subkeyid: uint64; ctx: array[8'i64, cschar];
                               key: array[32'i64, uint8]): cint {.cdecl,
      importc: "crypto_kdf_derive_from_key".}
else:
  static :
    hint("Declaration of " & "cryptokdfderivefromkey" &
        " already exists, not redeclaring")
when not declared(cryptokdfkeygen):
  proc cryptokdfkeygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_kdf_keygen".}
else:
  static :
    hint("Declaration of " & "cryptokdfkeygen" &
        " already exists, not redeclaring")
when not declared(cryptokxpublickeybytesproc):
  proc cryptokxpublickeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_kx_publickeybytes".}
else:
  static :
    hint("Declaration of " & "cryptokxpublickeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptokxsecretkeybytesproc):
  proc cryptokxsecretkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_kx_secretkeybytes".}
else:
  static :
    hint("Declaration of " & "cryptokxsecretkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptokxseedbytesproc):
  proc cryptokxseedbytesproc*(): csize_t {.cdecl, importc: "crypto_kx_seedbytes".}
else:
  static :
    hint("Declaration of " & "cryptokxseedbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptokxsessionkeybytesproc):
  proc cryptokxsessionkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_kx_sessionkeybytes".}
else:
  static :
    hint("Declaration of " & "cryptokxsessionkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptokxprimitiveproc):
  proc cryptokxprimitiveproc*(): cstring {.cdecl, importc: "crypto_kx_primitive".}
else:
  static :
    hint("Declaration of " & "cryptokxprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptokxseedkeypair):
  proc cryptokxseedkeypair*(pk: array[32'i64, uint8]; sk: array[32'i64, uint8];
                            seed: array[32'i64, uint8]): cint {.cdecl,
      importc: "crypto_kx_seed_keypair".}
else:
  static :
    hint("Declaration of " & "cryptokxseedkeypair" &
        " already exists, not redeclaring")
when not declared(cryptokxkeypair):
  proc cryptokxkeypair*(pk: array[32'i64, uint8]; sk: array[32'i64, uint8]): cint {.
      cdecl, importc: "crypto_kx_keypair".}
else:
  static :
    hint("Declaration of " & "cryptokxkeypair" &
        " already exists, not redeclaring")
when not declared(cryptokxclientsessionkeys):
  proc cryptokxclientsessionkeys*(rx: array[32'i64, uint8];
                                  tx: array[32'i64, uint8];
                                  clientpk: array[32'i64, uint8];
                                  clientsk: array[32'i64, uint8];
                                  serverpk: array[32'i64, uint8]): cint {.cdecl,
      importc: "crypto_kx_client_session_keys".}
else:
  static :
    hint("Declaration of " & "cryptokxclientsessionkeys" &
        " already exists, not redeclaring")
when not declared(cryptokxserversessionkeys):
  proc cryptokxserversessionkeys*(rx: array[32'i64, uint8];
                                  tx: array[32'i64, uint8];
                                  serverpk: array[32'i64, uint8];
                                  serversk: array[32'i64, uint8];
                                  clientpk: array[32'i64, uint8]): cint {.cdecl,
      importc: "crypto_kx_server_session_keys".}
else:
  static :
    hint("Declaration of " & "cryptokxserversessionkeys" &
        " already exists, not redeclaring")
when not declared(remove):
  proc remove*(compilerfilename: cstring): cint {.cdecl, importc: "remove".}
else:
  static :
    hint("Declaration of " & "remove" & " already exists, not redeclaring")
when not declared(rename):
  proc rename*(compilerold: cstring; compilernew: cstring): cint {.cdecl,
      importc: "rename".}
else:
  static :
    hint("Declaration of " & "rename" & " already exists, not redeclaring")
when not declared(renameat):
  proc renameat*(compileroldfd: cint; compilerold: cstring; compilernewfd: cint;
                 compilernew: cstring): cint {.cdecl, importc: "renameat".}
else:
  static :
    hint("Declaration of " & "renameat" & " already exists, not redeclaring")
when not declared(fclose):
  proc fclose*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "fclose".}
else:
  static :
    hint("Declaration of " & "fclose" & " already exists, not redeclaring")
when not declared(tmpfile):
  proc tmpfile*(): ptr File_520094480 {.cdecl, importc: "tmpfile".}
else:
  static :
    hint("Declaration of " & "tmpfile" & " already exists, not redeclaring")
when not declared(tmpnam):
  proc tmpnam*(a0: array[20'i64, cschar]): cstring {.cdecl, importc: "tmpnam".}
else:
  static :
    hint("Declaration of " & "tmpnam" & " already exists, not redeclaring")
when not declared(tmpnamr):
  proc tmpnamr*(compilers: array[20'i64, cschar]): cstring {.cdecl,
      importc: "tmpnam_r".}
else:
  static :
    hint("Declaration of " & "tmpnamr" & " already exists, not redeclaring")
when not declared(tempnam):
  proc tempnam*(compilerdir: cstring; compilerpfx: cstring): cstring {.cdecl,
      importc: "tempnam".}
else:
  static :
    hint("Declaration of " & "tempnam" & " already exists, not redeclaring")
when not declared(fflush):
  proc fflush*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "fflush".}
else:
  static :
    hint("Declaration of " & "fflush" & " already exists, not redeclaring")
when not declared(fflushunlocked):
  proc fflushunlocked*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "fflush_unlocked".}
else:
  static :
    hint("Declaration of " & "fflushunlocked" &
        " already exists, not redeclaring")
when not declared(fopen):
  proc fopen*(compilerfilename: cstring; compilermodes: cstring): ptr File_520094480 {.
      cdecl, importc: "fopen".}
else:
  static :
    hint("Declaration of " & "fopen" & " already exists, not redeclaring")
when not declared(freopen):
  proc freopen*(compilerfilename: cstring; compilermodes: cstring;
                compilerstream: ptr File_520094480): ptr File_520094480 {.cdecl,
      importc: "freopen".}
else:
  static :
    hint("Declaration of " & "freopen" & " already exists, not redeclaring")
when not declared(fdopen):
  proc fdopen*(compilerfd: cint; compilermodes: cstring): ptr File_520094480 {.
      cdecl, importc: "fdopen".}
else:
  static :
    hint("Declaration of " & "fdopen" & " already exists, not redeclaring")
when not declared(fopencookie):
  proc fopencookie*(compilermagiccookie: pointer; compilermodes: cstring;
                    compileriofuncs: cookieiofunctionst_520094494): ptr File_520094480 {.
      cdecl, importc: "fopencookie".}
else:
  static :
    hint("Declaration of " & "fopencookie" & " already exists, not redeclaring")
when not declared(fmemopen):
  proc fmemopen*(compilers: pointer; compilerlen: csize_t;
                 compilermodes: cstring): ptr File_520094480 {.cdecl,
      importc: "fmemopen".}
else:
  static :
    hint("Declaration of " & "fmemopen" & " already exists, not redeclaring")
when not declared(openmemstream):
  proc openmemstream*(compilerbufloc: ptr cstring; compilersizeloc: ptr csize_t): ptr File_520094480 {.
      cdecl, importc: "open_memstream".}
else:
  static :
    hint("Declaration of " & "openmemstream" &
        " already exists, not redeclaring")
when not declared(setbuf):
  proc setbuf*(compilerstream: ptr File_520094480; compilerbuf: cstring): void {.
      cdecl, importc: "setbuf".}
else:
  static :
    hint("Declaration of " & "setbuf" & " already exists, not redeclaring")
when not declared(setvbuf):
  proc setvbuf*(compilerstream: ptr File_520094480; compilerbuf: cstring;
                compilermodes: cint; compilern: csize_t): cint {.cdecl,
      importc: "setvbuf".}
else:
  static :
    hint("Declaration of " & "setvbuf" & " already exists, not redeclaring")
when not declared(setbuffer):
  proc setbuffer*(compilerstream: ptr File_520094480; compilerbuf: cstring;
                  compilersize: csize_t): void {.cdecl, importc: "setbuffer".}
else:
  static :
    hint("Declaration of " & "setbuffer" & " already exists, not redeclaring")
when not declared(setlinebuf):
  proc setlinebuf*(compilerstream: ptr File_520094480): void {.cdecl,
      importc: "setlinebuf".}
else:
  static :
    hint("Declaration of " & "setlinebuf" & " already exists, not redeclaring")
when not declared(fprintf):
  proc fprintf*(compilerstream: ptr File_520094480; compilerformat: cstring): cint {.
      cdecl, varargs, importc: "fprintf".}
else:
  static :
    hint("Declaration of " & "fprintf" & " already exists, not redeclaring")
when not declared(printf):
  proc printf*(compilerformat: cstring): cint {.cdecl, varargs,
      importc: "printf".}
else:
  static :
    hint("Declaration of " & "printf" & " already exists, not redeclaring")
when not declared(sprintf):
  proc sprintf*(compilers: cstring; compilerformat: cstring): cint {.cdecl,
      varargs, importc: "sprintf".}
else:
  static :
    hint("Declaration of " & "sprintf" & " already exists, not redeclaring")
when not declared(vfprintf):
  proc vfprintf*(compilers: ptr File_520094480; compilerformat: cstring;
                 compilerarg: ptr compilervalisttag): cint {.cdecl,
      importc: "vfprintf".}
else:
  static :
    hint("Declaration of " & "vfprintf" & " already exists, not redeclaring")
when not declared(vprintf):
  proc vprintf*(compilerformat: cstring; compilerarg: ptr compilervalisttag): cint {.
      cdecl, importc: "vprintf".}
else:
  static :
    hint("Declaration of " & "vprintf" & " already exists, not redeclaring")
when not declared(vsprintf):
  proc vsprintf*(compilers: cstring; compilerformat: cstring;
                 compilerarg: ptr compilervalisttag): cint {.cdecl,
      importc: "vsprintf".}
else:
  static :
    hint("Declaration of " & "vsprintf" & " already exists, not redeclaring")
when not declared(snprintf):
  proc snprintf*(compilers: cstring; compilermaxlen: culong;
                 compilerformat: cstring): cint {.cdecl, varargs,
      importc: "snprintf".}
else:
  static :
    hint("Declaration of " & "snprintf" & " already exists, not redeclaring")
when not declared(vsnprintf):
  proc vsnprintf*(compilers: cstring; compilermaxlen: culong;
                  compilerformat: cstring; compilerarg: ptr compilervalisttag): cint {.
      cdecl, importc: "vsnprintf".}
else:
  static :
    hint("Declaration of " & "vsnprintf" & " already exists, not redeclaring")
when not declared(vasprintf):
  proc vasprintf*(compilerptr: ptr cstring; compilerf: cstring;
                  compilerarg: compilergnucvalist_520094498): cint {.cdecl,
      importc: "vasprintf".}
else:
  static :
    hint("Declaration of " & "vasprintf" & " already exists, not redeclaring")
when not declared(compilerasprintf):
  proc compilerasprintf*(compilerptr: ptr cstring; compilerfmt: cstring): cint {.
      cdecl, varargs, importc: "__asprintf".}
else:
  static :
    hint("Declaration of " & "compilerasprintf" &
        " already exists, not redeclaring")
when not declared(asprintf):
  proc asprintf*(compilerptr: ptr cstring; compilerfmt: cstring): cint {.cdecl,
      varargs, importc: "asprintf".}
else:
  static :
    hint("Declaration of " & "asprintf" & " already exists, not redeclaring")
when not declared(vdprintf):
  proc vdprintf*(compilerfd: cint; compilerfmt: cstring;
                 compilerarg: compilergnucvalist_520094498): cint {.cdecl,
      importc: "vdprintf".}
else:
  static :
    hint("Declaration of " & "vdprintf" & " already exists, not redeclaring")
when not declared(dprintf):
  proc dprintf*(compilerfd: cint; compilerfmt: cstring): cint {.cdecl, varargs,
      importc: "dprintf".}
else:
  static :
    hint("Declaration of " & "dprintf" & " already exists, not redeclaring")
when not declared(fscanf):
  proc fscanf*(compilerstream: ptr File_520094480; compilerformat: cstring): cint {.
      cdecl, varargs, importc: "fscanf".}
else:
  static :
    hint("Declaration of " & "fscanf" & " already exists, not redeclaring")
when not declared(scanf):
  proc scanf*(compilerformat: cstring): cint {.cdecl, varargs, importc: "scanf".}
else:
  static :
    hint("Declaration of " & "scanf" & " already exists, not redeclaring")
when not declared(sscanf):
  proc sscanf*(compilers: cstring; compilerformat: cstring): cint {.cdecl,
      varargs, importc: "sscanf".}
else:
  static :
    hint("Declaration of " & "sscanf" & " already exists, not redeclaring")
when not declared(vfscanf):
  proc vfscanf*(compilers: ptr File_520094480; compilerformat: cstring;
                compilerarg: ptr compilervalisttag): cint {.cdecl,
      importc: "vfscanf".}
else:
  static :
    hint("Declaration of " & "vfscanf" & " already exists, not redeclaring")
when not declared(vscanf):
  proc vscanf*(compilerformat: cstring; compilerarg: ptr compilervalisttag): cint {.
      cdecl, importc: "vscanf".}
else:
  static :
    hint("Declaration of " & "vscanf" & " already exists, not redeclaring")
when not declared(vsscanf):
  proc vsscanf*(compilers: cstring; compilerformat: cstring;
                compilerarg: ptr compilervalisttag): cint {.cdecl,
      importc: "vsscanf".}
else:
  static :
    hint("Declaration of " & "vsscanf" & " already exists, not redeclaring")
when not declared(fgetc):
  proc fgetc*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "fgetc".}
else:
  static :
    hint("Declaration of " & "fgetc" & " already exists, not redeclaring")
when not declared(getc):
  proc getc*(compilerstream: ptr File_520094480): cint {.cdecl, importc: "getc".}
else:
  static :
    hint("Declaration of " & "getc" & " already exists, not redeclaring")
when not declared(getchar):
  proc getchar*(): cint {.cdecl, importc: "getchar".}
else:
  static :
    hint("Declaration of " & "getchar" & " already exists, not redeclaring")
when not declared(getcunlocked):
  proc getcunlocked*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "getc_unlocked".}
else:
  static :
    hint("Declaration of " & "getcunlocked" & " already exists, not redeclaring")
when not declared(getcharunlocked):
  proc getcharunlocked*(): cint {.cdecl, importc: "getchar_unlocked".}
else:
  static :
    hint("Declaration of " & "getcharunlocked" &
        " already exists, not redeclaring")
when not declared(fgetcunlocked):
  proc fgetcunlocked*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "fgetc_unlocked".}
else:
  static :
    hint("Declaration of " & "fgetcunlocked" &
        " already exists, not redeclaring")
when not declared(fputc):
  proc fputc*(compilerc: cint; compilerstream: ptr File_520094480): cint {.
      cdecl, importc: "fputc".}
else:
  static :
    hint("Declaration of " & "fputc" & " already exists, not redeclaring")
when not declared(putc):
  proc putc*(compilerc: cint; compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "putc".}
else:
  static :
    hint("Declaration of " & "putc" & " already exists, not redeclaring")
when not declared(putchar):
  proc putchar*(compilerc: cint): cint {.cdecl, importc: "putchar".}
else:
  static :
    hint("Declaration of " & "putchar" & " already exists, not redeclaring")
when not declared(fputcunlocked):
  proc fputcunlocked*(compilerc: cint; compilerstream: ptr File_520094480): cint {.
      cdecl, importc: "fputc_unlocked".}
else:
  static :
    hint("Declaration of " & "fputcunlocked" &
        " already exists, not redeclaring")
when not declared(putcunlocked):
  proc putcunlocked*(compilerc: cint; compilerstream: ptr File_520094480): cint {.
      cdecl, importc: "putc_unlocked".}
else:
  static :
    hint("Declaration of " & "putcunlocked" & " already exists, not redeclaring")
when not declared(putcharunlocked):
  proc putcharunlocked*(compilerc: cint): cint {.cdecl,
      importc: "putchar_unlocked".}
else:
  static :
    hint("Declaration of " & "putcharunlocked" &
        " already exists, not redeclaring")
when not declared(getw):
  proc getw*(compilerstream: ptr File_520094480): cint {.cdecl, importc: "getw".}
else:
  static :
    hint("Declaration of " & "getw" & " already exists, not redeclaring")
when not declared(putw):
  proc putw*(compilerw: cint; compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "putw".}
else:
  static :
    hint("Declaration of " & "putw" & " already exists, not redeclaring")
when not declared(fgets):
  proc fgets*(compilers: cstring; compilern: cint; compilerstream: ptr File_520094480): cstring {.
      cdecl, importc: "fgets".}
else:
  static :
    hint("Declaration of " & "fgets" & " already exists, not redeclaring")
when not declared(compilergetdelim):
  proc compilergetdelim*(compilerlineptr: ptr cstring; compilern: ptr csize_t;
                         compilerdelimiter: cint; compilerstream: ptr File_520094480): compilerssizet_520094172 {.
      cdecl, importc: "__getdelim".}
else:
  static :
    hint("Declaration of " & "compilergetdelim" &
        " already exists, not redeclaring")
when not declared(getdelim):
  proc getdelim*(compilerlineptr: ptr cstring; compilern: ptr csize_t;
                 compilerdelimiter: cint; compilerstream: ptr File_520094480): compilerssizet_520094172 {.
      cdecl, importc: "getdelim".}
else:
  static :
    hint("Declaration of " & "getdelim" & " already exists, not redeclaring")
when not declared(getline):
  proc getline*(compilerlineptr: ptr cstring; compilern: ptr csize_t;
                compilerstream: ptr File_520094480): compilerssizet_520094172 {.
      cdecl, importc: "getline".}
else:
  static :
    hint("Declaration of " & "getline" & " already exists, not redeclaring")
when not declared(fputs):
  proc fputs*(compilers: cstring; compilerstream: ptr File_520094480): cint {.
      cdecl, importc: "fputs".}
else:
  static :
    hint("Declaration of " & "fputs" & " already exists, not redeclaring")
when not declared(puts):
  proc puts*(compilers: cstring): cint {.cdecl, importc: "puts".}
else:
  static :
    hint("Declaration of " & "puts" & " already exists, not redeclaring")
when not declared(ungetc):
  proc ungetc*(compilerc: cint; compilerstream: ptr File_520094480): cint {.
      cdecl, importc: "ungetc".}
else:
  static :
    hint("Declaration of " & "ungetc" & " already exists, not redeclaring")
when not declared(fread):
  proc fread*(compilerptr: pointer; compilersize: culong; compilern: culong;
              compilerstream: ptr File_520094480): culong {.cdecl,
      importc: "fread".}
else:
  static :
    hint("Declaration of " & "fread" & " already exists, not redeclaring")
when not declared(fwrite):
  proc fwrite*(compilerptr: pointer; compilersize: culong; compilern: culong;
               compilers: ptr File_520094480): culong {.cdecl, importc: "fwrite".}
else:
  static :
    hint("Declaration of " & "fwrite" & " already exists, not redeclaring")
when not declared(freadunlocked):
  proc freadunlocked*(compilerptr: pointer; compilersize: csize_t;
                      compilern: csize_t; compilerstream: ptr File_520094480): csize_t {.
      cdecl, importc: "fread_unlocked".}
else:
  static :
    hint("Declaration of " & "freadunlocked" &
        " already exists, not redeclaring")
when not declared(fwriteunlocked):
  proc fwriteunlocked*(compilerptr: pointer; compilersize: csize_t;
                       compilern: csize_t; compilerstream: ptr File_520094480): csize_t {.
      cdecl, importc: "fwrite_unlocked".}
else:
  static :
    hint("Declaration of " & "fwriteunlocked" &
        " already exists, not redeclaring")
when not declared(fseek):
  proc fseek*(compilerstream: ptr File_520094480; compileroff: clong;
              compilerwhence: cint): cint {.cdecl, importc: "fseek".}
else:
  static :
    hint("Declaration of " & "fseek" & " already exists, not redeclaring")
when not declared(ftell):
  proc ftell*(compilerstream: ptr File_520094480): clong {.cdecl,
      importc: "ftell".}
else:
  static :
    hint("Declaration of " & "ftell" & " already exists, not redeclaring")
when not declared(rewind):
  proc rewind*(compilerstream: ptr File_520094480): void {.cdecl,
      importc: "rewind".}
else:
  static :
    hint("Declaration of " & "rewind" & " already exists, not redeclaring")
when not declared(fseeko):
  proc fseeko*(compilerstream: ptr File_520094480; compileroff: compilerofft_520094122;
               compilerwhence: cint): cint {.cdecl, importc: "fseeko".}
else:
  static :
    hint("Declaration of " & "fseeko" & " already exists, not redeclaring")
when not declared(ftello):
  proc ftello*(compilerstream: ptr File_520094480): compilerofft_520094122 {.
      cdecl, importc: "ftello".}
else:
  static :
    hint("Declaration of " & "ftello" & " already exists, not redeclaring")
when not declared(fgetpos):
  proc fgetpos*(compilerstream: ptr File_520094480; compilerpos: ptr fpost_520094500): cint {.
      cdecl, importc: "fgetpos".}
else:
  static :
    hint("Declaration of " & "fgetpos" & " already exists, not redeclaring")
when not declared(fsetpos):
  proc fsetpos*(compilerstream: ptr File_520094480; compilerpos: ptr fpost_520094500): cint {.
      cdecl, importc: "fsetpos".}
else:
  static :
    hint("Declaration of " & "fsetpos" & " already exists, not redeclaring")
when not declared(clearerr):
  proc clearerr*(compilerstream: ptr File_520094480): void {.cdecl,
      importc: "clearerr".}
else:
  static :
    hint("Declaration of " & "clearerr" & " already exists, not redeclaring")
when not declared(feof):
  proc feof*(compilerstream: ptr File_520094480): cint {.cdecl, importc: "feof".}
else:
  static :
    hint("Declaration of " & "feof" & " already exists, not redeclaring")
when not declared(ferror):
  proc ferror*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "ferror".}
else:
  static :
    hint("Declaration of " & "ferror" & " already exists, not redeclaring")
when not declared(clearerrunlocked):
  proc clearerrunlocked*(compilerstream: ptr File_520094480): void {.cdecl,
      importc: "clearerr_unlocked".}
else:
  static :
    hint("Declaration of " & "clearerrunlocked" &
        " already exists, not redeclaring")
when not declared(feofunlocked):
  proc feofunlocked*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "feof_unlocked".}
else:
  static :
    hint("Declaration of " & "feofunlocked" & " already exists, not redeclaring")
when not declared(ferrorunlocked):
  proc ferrorunlocked*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "ferror_unlocked".}
else:
  static :
    hint("Declaration of " & "ferrorunlocked" &
        " already exists, not redeclaring")
when not declared(perror):
  proc perror*(compilers: cstring): void {.cdecl, importc: "perror".}
else:
  static :
    hint("Declaration of " & "perror" & " already exists, not redeclaring")
when not declared(fileno):
  proc fileno*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "fileno".}
else:
  static :
    hint("Declaration of " & "fileno" & " already exists, not redeclaring")
when not declared(filenounlocked):
  proc filenounlocked*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "fileno_unlocked".}
else:
  static :
    hint("Declaration of " & "filenounlocked" &
        " already exists, not redeclaring")
when not declared(pclose):
  proc pclose*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "pclose".}
else:
  static :
    hint("Declaration of " & "pclose" & " already exists, not redeclaring")
when not declared(popen):
  proc popen*(compilercommand: cstring; compilermodes: cstring): ptr File_520094480 {.
      cdecl, importc: "popen".}
else:
  static :
    hint("Declaration of " & "popen" & " already exists, not redeclaring")
when not declared(ctermid):
  proc ctermid*(compilers: cstring): cstring {.cdecl, importc: "ctermid".}
else:
  static :
    hint("Declaration of " & "ctermid" & " already exists, not redeclaring")
when not declared(flockfile):
  proc flockfile*(compilerstream: ptr File_520094480): void {.cdecl,
      importc: "flockfile".}
else:
  static :
    hint("Declaration of " & "flockfile" & " already exists, not redeclaring")
when not declared(ftrylockfile):
  proc ftrylockfile*(compilerstream: ptr File_520094480): cint {.cdecl,
      importc: "ftrylockfile".}
else:
  static :
    hint("Declaration of " & "ftrylockfile" & " already exists, not redeclaring")
when not declared(funlockfile):
  proc funlockfile*(compilerstream: ptr File_520094480): void {.cdecl,
      importc: "funlockfile".}
else:
  static :
    hint("Declaration of " & "funlockfile" & " already exists, not redeclaring")
when not declared(compileruflow):
  proc compileruflow*(a0: ptr File_520094480): cint {.cdecl, importc: "__uflow".}
else:
  static :
    hint("Declaration of " & "compileruflow" &
        " already exists, not redeclaring")
when not declared(compileroverflow):
  proc compileroverflow*(a0: ptr File_520094480; a1: cint): cint {.cdecl,
      importc: "__overflow".}
else:
  static :
    hint("Declaration of " & "compileroverflow" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305statebytes):
  proc cryptoonetimeauthpoly1305statebytes*(): csize_t {.cdecl,
      importc: "crypto_onetimeauth_poly1305_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305statebytes" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305bytesproc):
  proc cryptoonetimeauthpoly1305bytesproc*(): csize_t {.cdecl,
      importc: "crypto_onetimeauth_poly1305_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305keybytesproc):
  proc cryptoonetimeauthpoly1305keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_onetimeauth_poly1305_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305):
  proc cryptoonetimeauthpoly1305*(outarg: ptr uint8; inarg: ptr uint8;
                                  inlen: culonglong; k: ptr uint8): cint {.
      cdecl, importc: "crypto_onetimeauth_poly1305".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305verify):
  proc cryptoonetimeauthpoly1305verify*(h: ptr uint8; inarg: ptr uint8;
                                        inlen: culonglong; k: ptr uint8): cint {.
      cdecl, importc: "crypto_onetimeauth_poly1305_verify".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305verify" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305init):
  proc cryptoonetimeauthpoly1305init*(state: ptr cryptoonetimeauthpoly1305state_520094504;
                                      key: ptr uint8): cint {.cdecl,
      importc: "crypto_onetimeauth_poly1305_init".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305init" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305update):
  proc cryptoonetimeauthpoly1305update*(state: ptr cryptoonetimeauthpoly1305state_520094504;
                                        inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_onetimeauth_poly1305_update".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305update" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305final):
  proc cryptoonetimeauthpoly1305final*(state: ptr cryptoonetimeauthpoly1305state_520094504;
                                       outarg: ptr uint8): cint {.cdecl,
      importc: "crypto_onetimeauth_poly1305_final".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305final" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthpoly1305keygen):
  proc cryptoonetimeauthpoly1305keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_onetimeauth_poly1305_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthpoly1305keygen" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthstatebytes):
  proc cryptoonetimeauthstatebytes*(): csize_t {.cdecl,
      importc: "crypto_onetimeauth_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthstatebytes" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthbytesproc):
  proc cryptoonetimeauthbytesproc*(): csize_t {.cdecl,
      importc: "crypto_onetimeauth_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthkeybytesproc):
  proc cryptoonetimeauthkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_onetimeauth_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthprimitiveproc):
  proc cryptoonetimeauthprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_onetimeauth_primitive".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauth):
  proc cryptoonetimeauth*(outarg: ptr uint8; inarg: ptr uint8;
                          inlen: culonglong; k: ptr uint8): cint {.cdecl,
      importc: "crypto_onetimeauth".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauth" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthverify):
  proc cryptoonetimeauthverify*(h: ptr uint8; inarg: ptr uint8;
                                inlen: culonglong; k: ptr uint8): cint {.cdecl,
      importc: "crypto_onetimeauth_verify".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthverify" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthinit):
  proc cryptoonetimeauthinit*(state: ptr cryptoonetimeauthstate_520094506;
                              key: ptr uint8): cint {.cdecl,
      importc: "crypto_onetimeauth_init".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthinit" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthupdate):
  proc cryptoonetimeauthupdate*(state: ptr cryptoonetimeauthstate_520094506;
                                inarg: ptr uint8; inlen: culonglong): cint {.
      cdecl, importc: "crypto_onetimeauth_update".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthupdate" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthfinal):
  proc cryptoonetimeauthfinal*(state: ptr cryptoonetimeauthstate_520094506;
                               outarg: ptr uint8): cint {.cdecl,
      importc: "crypto_onetimeauth_final".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthfinal" &
        " already exists, not redeclaring")
when not declared(cryptoonetimeauthkeygen):
  proc cryptoonetimeauthkeygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_onetimeauth_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoonetimeauthkeygen" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2ialgargon2i13proc):
  proc cryptopwhashargon2ialgargon2i13proc*(): cint {.cdecl,
      importc: "crypto_pwhash_argon2i_alg_argon2i13".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2ialgargon2i13proc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2ibytesminproc):
  proc cryptopwhashargon2ibytesminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_bytes_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2ibytesminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2ibytesmax):
  proc cryptopwhashargon2ibytesmax*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_bytes_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2ibytesmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2ipasswdminproc):
  proc cryptopwhashargon2ipasswdminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_passwd_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2ipasswdminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2ipasswdmaxproc):
  proc cryptopwhashargon2ipasswdmaxproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_passwd_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2ipasswdmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2isaltbytesproc):
  proc cryptopwhashargon2isaltbytesproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_saltbytes".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2isaltbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2istrbytesproc):
  proc cryptopwhashargon2istrbytesproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_strbytes".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2istrbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2istrprefixproc):
  proc cryptopwhashargon2istrprefixproc*(): cstring {.cdecl,
      importc: "crypto_pwhash_argon2i_strprefix".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2istrprefixproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2iopslimitminproc):
  proc cryptopwhashargon2iopslimitminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_opslimit_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2iopslimitminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2iopslimitmaxproc):
  proc cryptopwhashargon2iopslimitmaxproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_opslimit_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2iopslimitmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2imemlimitminproc):
  proc cryptopwhashargon2imemlimitminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_memlimit_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2imemlimitminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2imemlimitmax):
  proc cryptopwhashargon2imemlimitmax*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_memlimit_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2imemlimitmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2iopslimitinteractiveproc):
  proc cryptopwhashargon2iopslimitinteractiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_opslimit_interactive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2iopslimitinteractiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2imemlimitinteractiveproc):
  proc cryptopwhashargon2imemlimitinteractiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_memlimit_interactive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2imemlimitinteractiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2iopslimitmoderateproc):
  proc cryptopwhashargon2iopslimitmoderateproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_opslimit_moderate".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2iopslimitmoderateproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2imemlimitmoderateproc):
  proc cryptopwhashargon2imemlimitmoderateproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_memlimit_moderate".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2imemlimitmoderateproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2iopslimitsensitiveproc):
  proc cryptopwhashargon2iopslimitsensitiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_opslimit_sensitive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2iopslimitsensitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2imemlimitsensitiveproc):
  proc cryptopwhashargon2imemlimitsensitiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2i_memlimit_sensitive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2imemlimitsensitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2i):
  proc cryptopwhashargon2i*(outarg: ptr uint8; outlen: culonglong;
                            passwd: cstring; passwdlen: culonglong;
                            salt: ptr uint8; opslimit: culonglong;
                            memlimit: csize_t; alg: cint): cint {.cdecl,
      importc: "crypto_pwhash_argon2i".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2i" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2istr):
  proc cryptopwhashargon2istr*(outarg: array[128'i64, cschar]; passwd: cstring;
                               passwdlen: culonglong; opslimit: culonglong;
                               memlimit: csize_t): cint {.cdecl,
      importc: "crypto_pwhash_argon2i_str".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2istr" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2istrverify):
  proc cryptopwhashargon2istrverify*(str: array[128'i64, cschar];
                                     passwd: cstring; passwdlen: culonglong): cint {.
      cdecl, importc: "crypto_pwhash_argon2i_str_verify".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2istrverify" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2istrneedsrehash):
  proc cryptopwhashargon2istrneedsrehash*(str: array[128'i64, cschar];
      opslimit: culonglong; memlimit: csize_t): cint {.cdecl,
      importc: "crypto_pwhash_argon2i_str_needs_rehash".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2istrneedsrehash" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idalgargon2id13proc):
  proc cryptopwhashargon2idalgargon2id13proc*(): cint {.cdecl,
      importc: "crypto_pwhash_argon2id_alg_argon2id13".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idalgargon2id13proc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idbytesminproc):
  proc cryptopwhashargon2idbytesminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_bytes_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idbytesminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idbytesmax):
  proc cryptopwhashargon2idbytesmax*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_bytes_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idbytesmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idpasswdminproc):
  proc cryptopwhashargon2idpasswdminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_passwd_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idpasswdminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idpasswdmaxproc):
  proc cryptopwhashargon2idpasswdmaxproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_passwd_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idpasswdmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idsaltbytesproc):
  proc cryptopwhashargon2idsaltbytesproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_saltbytes".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idsaltbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idstrbytesproc):
  proc cryptopwhashargon2idstrbytesproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_strbytes".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idstrbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idstrprefixproc):
  proc cryptopwhashargon2idstrprefixproc*(): cstring {.cdecl,
      importc: "crypto_pwhash_argon2id_strprefix".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idstrprefixproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idopslimitminproc):
  proc cryptopwhashargon2idopslimitminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_opslimit_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idopslimitminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idopslimitmaxproc):
  proc cryptopwhashargon2idopslimitmaxproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_opslimit_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idopslimitmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idmemlimitminproc):
  proc cryptopwhashargon2idmemlimitminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_memlimit_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idmemlimitminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idmemlimitmax):
  proc cryptopwhashargon2idmemlimitmax*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_memlimit_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idmemlimitmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idopslimitinteractiveproc):
  proc cryptopwhashargon2idopslimitinteractiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_opslimit_interactive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idopslimitinteractiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idmemlimitinteractiveproc):
  proc cryptopwhashargon2idmemlimitinteractiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_memlimit_interactive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idmemlimitinteractiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idopslimitmoderateproc):
  proc cryptopwhashargon2idopslimitmoderateproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_opslimit_moderate".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idopslimitmoderateproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idmemlimitmoderateproc):
  proc cryptopwhashargon2idmemlimitmoderateproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_memlimit_moderate".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idmemlimitmoderateproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idopslimitsensitiveproc):
  proc cryptopwhashargon2idopslimitsensitiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_opslimit_sensitive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idopslimitsensitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idmemlimitsensitiveproc):
  proc cryptopwhashargon2idmemlimitsensitiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_argon2id_memlimit_sensitive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idmemlimitsensitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2id):
  proc cryptopwhashargon2id*(outarg: ptr uint8; outlen: culonglong;
                             passwd: cstring; passwdlen: culonglong;
                             salt: ptr uint8; opslimit: culonglong;
                             memlimit: csize_t; alg: cint): cint {.cdecl,
      importc: "crypto_pwhash_argon2id".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2id" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idstr):
  proc cryptopwhashargon2idstr*(outarg: array[128'i64, cschar]; passwd: cstring;
                                passwdlen: culonglong; opslimit: culonglong;
                                memlimit: csize_t): cint {.cdecl,
      importc: "crypto_pwhash_argon2id_str".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idstr" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idstrverify):
  proc cryptopwhashargon2idstrverify*(str: array[128'i64, cschar];
                                      passwd: cstring; passwdlen: culonglong): cint {.
      cdecl, importc: "crypto_pwhash_argon2id_str_verify".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idstrverify" &
        " already exists, not redeclaring")
when not declared(cryptopwhashargon2idstrneedsrehash):
  proc cryptopwhashargon2idstrneedsrehash*(str: array[128'i64, cschar];
      opslimit: culonglong; memlimit: csize_t): cint {.cdecl,
      importc: "crypto_pwhash_argon2id_str_needs_rehash".}
else:
  static :
    hint("Declaration of " & "cryptopwhashargon2idstrneedsrehash" &
        " already exists, not redeclaring")
when not declared(cryptopwhashalgargon2i13proc):
  proc cryptopwhashalgargon2i13proc*(): cint {.cdecl,
      importc: "crypto_pwhash_alg_argon2i13".}
else:
  static :
    hint("Declaration of " & "cryptopwhashalgargon2i13proc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashalgargon2id13proc):
  proc cryptopwhashalgargon2id13proc*(): cint {.cdecl,
      importc: "crypto_pwhash_alg_argon2id13".}
else:
  static :
    hint("Declaration of " & "cryptopwhashalgargon2id13proc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashalgdefaultproc):
  proc cryptopwhashalgdefaultproc*(): cint {.cdecl,
      importc: "crypto_pwhash_alg_default".}
else:
  static :
    hint("Declaration of " & "cryptopwhashalgdefaultproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashbytesminproc):
  proc cryptopwhashbytesminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_bytes_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashbytesminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashbytesmaxproc):
  proc cryptopwhashbytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_bytes_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashbytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashpasswdminproc):
  proc cryptopwhashpasswdminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_passwd_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashpasswdminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashpasswdmaxproc):
  proc cryptopwhashpasswdmaxproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_passwd_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashpasswdmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashsaltbytesproc):
  proc cryptopwhashsaltbytesproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_saltbytes".}
else:
  static :
    hint("Declaration of " & "cryptopwhashsaltbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashstrbytesproc):
  proc cryptopwhashstrbytesproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_strbytes".}
else:
  static :
    hint("Declaration of " & "cryptopwhashstrbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashstrprefixproc):
  proc cryptopwhashstrprefixproc*(): cstring {.cdecl,
      importc: "crypto_pwhash_strprefix".}
else:
  static :
    hint("Declaration of " & "cryptopwhashstrprefixproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashopslimitminproc):
  proc cryptopwhashopslimitminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_opslimit_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashopslimitminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashopslimitmaxproc):
  proc cryptopwhashopslimitmaxproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_opslimit_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashopslimitmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashmemlimitminproc):
  proc cryptopwhashmemlimitminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_memlimit_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashmemlimitminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashmemlimitmaxproc):
  proc cryptopwhashmemlimitmaxproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_memlimit_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashmemlimitmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashopslimitinteractiveproc):
  proc cryptopwhashopslimitinteractiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_opslimit_interactive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashopslimitinteractiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashmemlimitinteractiveproc):
  proc cryptopwhashmemlimitinteractiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_memlimit_interactive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashmemlimitinteractiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashopslimitmoderateproc):
  proc cryptopwhashopslimitmoderateproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_opslimit_moderate".}
else:
  static :
    hint("Declaration of " & "cryptopwhashopslimitmoderateproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashmemlimitmoderateproc):
  proc cryptopwhashmemlimitmoderateproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_memlimit_moderate".}
else:
  static :
    hint("Declaration of " & "cryptopwhashmemlimitmoderateproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashopslimitsensitiveproc):
  proc cryptopwhashopslimitsensitiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_opslimit_sensitive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashopslimitsensitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashmemlimitsensitiveproc):
  proc cryptopwhashmemlimitsensitiveproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_memlimit_sensitive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashmemlimitsensitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhash):
  proc cryptopwhash*(outarg: ptr uint8; outlen: culonglong; passwd: cstring;
                     passwdlen: culonglong; salt: ptr uint8;
                     opslimit: culonglong; memlimit: csize_t; alg: cint): cint {.
      cdecl, importc: "crypto_pwhash".}
else:
  static :
    hint("Declaration of " & "cryptopwhash" & " already exists, not redeclaring")
when not declared(cryptopwhashstr):
  proc cryptopwhashstr*(outarg: array[128'i64, cschar]; passwd: cstring;
                        passwdlen: culonglong; opslimit: culonglong;
                        memlimit: csize_t): cint {.cdecl,
      importc: "crypto_pwhash_str".}
else:
  static :
    hint("Declaration of " & "cryptopwhashstr" &
        " already exists, not redeclaring")
when not declared(cryptopwhashstralg):
  proc cryptopwhashstralg*(outarg: array[128'i64, cschar]; passwd: cstring;
                           passwdlen: culonglong; opslimit: culonglong;
                           memlimit: csize_t; alg: cint): cint {.cdecl,
      importc: "crypto_pwhash_str_alg".}
else:
  static :
    hint("Declaration of " & "cryptopwhashstralg" &
        " already exists, not redeclaring")
when not declared(cryptopwhashstrverify):
  proc cryptopwhashstrverify*(str: array[128'i64, cschar]; passwd: cstring;
                              passwdlen: culonglong): cint {.cdecl,
      importc: "crypto_pwhash_str_verify".}
else:
  static :
    hint("Declaration of " & "cryptopwhashstrverify" &
        " already exists, not redeclaring")
when not declared(cryptopwhashstrneedsrehash):
  proc cryptopwhashstrneedsrehash*(str: array[128'i64, cschar];
                                   opslimit: culonglong; memlimit: csize_t): cint {.
      cdecl, importc: "crypto_pwhash_str_needs_rehash".}
else:
  static :
    hint("Declaration of " & "cryptopwhashstrneedsrehash" &
        " already exists, not redeclaring")
when not declared(cryptopwhashprimitiveproc):
  proc cryptopwhashprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_pwhash_primitive".}
else:
  static :
    hint("Declaration of " & "cryptopwhashprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultcurve25519bytesproc):
  proc cryptoscalarmultcurve25519bytesproc*(): csize_t {.cdecl,
      importc: "crypto_scalarmult_curve25519_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultcurve25519bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultcurve25519scalarbytesproc):
  proc cryptoscalarmultcurve25519scalarbytesproc*(): csize_t {.cdecl,
      importc: "crypto_scalarmult_curve25519_scalarbytes".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultcurve25519scalarbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultcurve25519):
  proc cryptoscalarmultcurve25519*(q: ptr uint8; n: ptr uint8; p: ptr uint8): cint {.
      cdecl, importc: "crypto_scalarmult_curve25519".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultcurve25519" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultcurve25519base):
  proc cryptoscalarmultcurve25519base*(q: ptr uint8; n: ptr uint8): cint {.
      cdecl, importc: "crypto_scalarmult_curve25519_base".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultcurve25519base" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultbytesproc):
  proc cryptoscalarmultbytesproc*(): csize_t {.cdecl,
      importc: "crypto_scalarmult_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultscalarbytesproc):
  proc cryptoscalarmultscalarbytesproc*(): csize_t {.cdecl,
      importc: "crypto_scalarmult_scalarbytes".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultscalarbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultprimitiveproc):
  proc cryptoscalarmultprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_scalarmult_primitive".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultbase):
  proc cryptoscalarmultbase*(q: ptr uint8; n: ptr uint8): cint {.cdecl,
      importc: "crypto_scalarmult_base".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultbase" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmult):
  proc cryptoscalarmult*(q: ptr uint8; n: ptr uint8; p: ptr uint8): cint {.
      cdecl, importc: "crypto_scalarmult".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmult" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305keybytesproc):
  proc cryptosecretboxxsalsa20poly1305keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_xsalsa20poly1305_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305noncebytesproc):
  proc cryptosecretboxxsalsa20poly1305noncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_xsalsa20poly1305_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305noncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305macbytesproc):
  proc cryptosecretboxxsalsa20poly1305macbytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_xsalsa20poly1305_macbytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305macbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305messagebytesmax):
  proc cryptosecretboxxsalsa20poly1305messagebytesmax*(): csize_t {.cdecl,
      importc: "crypto_secretbox_xsalsa20poly1305_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305messagebytesmax" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305):
  proc cryptosecretboxxsalsa20poly1305*(c: ptr uint8; m: ptr uint8;
                                        mlen: culonglong; n: ptr uint8;
                                        k: ptr uint8): cint {.cdecl,
      importc: "crypto_secretbox_xsalsa20poly1305".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305open):
  proc cryptosecretboxxsalsa20poly1305open*(m: ptr uint8; c: ptr uint8;
      clen: culonglong; n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_secretbox_xsalsa20poly1305_open".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305open" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305keygen):
  proc cryptosecretboxxsalsa20poly1305keygen*(k: array[32'i64, uint8]): void {.
      cdecl, importc: "crypto_secretbox_xsalsa20poly1305_keygen".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305keygen" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305boxzerobytesproc):
  proc cryptosecretboxxsalsa20poly1305boxzerobytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_xsalsa20poly1305_boxzerobytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305boxzerobytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxsalsa20poly1305zerobytes):
  proc cryptosecretboxxsalsa20poly1305zerobytes*(): csize_t {.cdecl,
      importc: "crypto_secretbox_xsalsa20poly1305_zerobytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxsalsa20poly1305zerobytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxkeybytesproc):
  proc cryptosecretboxkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxnoncebytesproc):
  proc cryptosecretboxnoncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxnoncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxmacbytesproc):
  proc cryptosecretboxmacbytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_macbytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxmacbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxprimitiveproc):
  proc cryptosecretboxprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_secretbox_primitive".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxmessagebytesmaxproc):
  proc cryptosecretboxmessagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxmessagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxeasy):
  proc cryptosecretboxeasy*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                            n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_secretbox_easy".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxeasy" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxopeneasy):
  proc cryptosecretboxopeneasy*(m: ptr uint8; c: ptr uint8; clen: culonglong;
                                n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_secretbox_open_easy".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxopeneasy" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxdetached):
  proc cryptosecretboxdetached*(c: ptr uint8; mac: ptr uint8; m: ptr uint8;
                                mlen: culonglong; n: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_secretbox_detached".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxdetached" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxopendetached):
  proc cryptosecretboxopendetached*(m: ptr uint8; c: ptr uint8; mac: ptr uint8;
                                    clen: culonglong; n: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_secretbox_open_detached".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxopendetached" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxkeygen):
  proc cryptosecretboxkeygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_secretbox_keygen".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxkeygen" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxzerobytesproc):
  proc cryptosecretboxzerobytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_zerobytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxzerobytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxboxzerobytesproc):
  proc cryptosecretboxboxzerobytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_boxzerobytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxboxzerobytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretbox):
  proc cryptosecretbox*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                        n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_secretbox".}
else:
  static :
    hint("Declaration of " & "cryptosecretbox" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxopen):
  proc cryptosecretboxopen*(m: ptr uint8; c: ptr uint8; clen: culonglong;
                            n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_secretbox_open".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxopen" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20keybytesproc):
  proc cryptostreamchacha20keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_chacha20_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20noncebytesproc):
  proc cryptostreamchacha20noncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_chacha20_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20noncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20messagebytesmaxproc):
  proc cryptostreamchacha20messagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_stream_chacha20_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20messagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20):
  proc cryptostreamchacha20*(c: ptr uint8; clen: culonglong; n: ptr uint8;
                             k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_chacha20".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20xor):
  proc cryptostreamchacha20xor*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                                n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_chacha20_xor".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20xor" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20xoric):
  proc cryptostreamchacha20xoric*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                                  n: ptr uint8; ic: uint64; k: ptr uint8): cint {.
      cdecl, importc: "crypto_stream_chacha20_xor_ic".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20xoric" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20keygen):
  proc cryptostreamchacha20keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_stream_chacha20_keygen".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20keygen" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfkeybytesproc):
  proc cryptostreamchacha20ietfkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_chacha20_ietf_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfnoncebytesproc):
  proc cryptostreamchacha20ietfnoncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_chacha20_ietf_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfnoncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfmessagebytesmaxproc):
  proc cryptostreamchacha20ietfmessagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_stream_chacha20_ietf_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfmessagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietf):
  proc cryptostreamchacha20ietf*(c: ptr uint8; clen: culonglong; n: ptr uint8;
                                 k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_chacha20_ietf".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietf" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfxor):
  proc cryptostreamchacha20ietfxor*(c: ptr uint8; m: ptr uint8;
                                    mlen: culonglong; n: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_stream_chacha20_ietf_xor".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfxor" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfxoric):
  proc cryptostreamchacha20ietfxoric*(c: ptr uint8; m: ptr uint8;
                                      mlen: culonglong; n: ptr uint8;
                                      ic: uint32; k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_chacha20_ietf_xor_ic".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfxoric" &
        " already exists, not redeclaring")
when not declared(cryptostreamchacha20ietfkeygen):
  proc cryptostreamchacha20ietfkeygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_stream_chacha20_ietf_keygen".}
else:
  static :
    hint("Declaration of " & "cryptostreamchacha20ietfkeygen" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305abytes):
  proc cryptosecretstreamxchacha20poly1305abytes*(): csize_t {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_abytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305abytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305headerbytes):
  proc cryptosecretstreamxchacha20poly1305headerbytes*(): csize_t {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_headerbytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305headerbytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305keybytes):
  proc cryptosecretstreamxchacha20poly1305keybytes*(): csize_t {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305keybytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305messagebytesmax):
  proc cryptosecretstreamxchacha20poly1305messagebytesmax*(): csize_t {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_messagebytes_max".}
else:
  static :
    hint("Declaration of " &
        "cryptosecretstreamxchacha20poly1305messagebytesmax" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305tagmessageproc):
  proc cryptosecretstreamxchacha20poly1305tagmessageproc*(): uint8 {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_tag_message".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305tagmessageproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305tagpushproc):
  proc cryptosecretstreamxchacha20poly1305tagpushproc*(): uint8 {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_tag_push".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305tagpushproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305tagrekeyproc):
  proc cryptosecretstreamxchacha20poly1305tagrekeyproc*(): uint8 {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_tag_rekey".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305tagrekeyproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305tagfinal):
  proc cryptosecretstreamxchacha20poly1305tagfinal*(): uint8 {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_tag_final".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305tagfinal" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305statebytes):
  proc cryptosecretstreamxchacha20poly1305statebytes*(): csize_t {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305statebytes" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305keygen):
  proc cryptosecretstreamxchacha20poly1305keygen*(k: array[32'i64, uint8]): void {.
      cdecl, importc: "crypto_secretstream_xchacha20poly1305_keygen".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305keygen" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305initpush):
  proc cryptosecretstreamxchacha20poly1305initpush*(
      state: ptr cryptosecretstreamxchacha20poly1305state_520094510;
      header: array[24'i64, uint8]; k: array[32'i64, uint8]): cint {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_init_push".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305initpush" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305push):
  proc cryptosecretstreamxchacha20poly1305push*(
      state: ptr cryptosecretstreamxchacha20poly1305state_520094510;
      c: ptr uint8; clenp: ptr culonglong; m: ptr uint8; mlen: culonglong;
      ad: ptr uint8; adlen: culonglong; tag: uint8): cint {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_push".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305push" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305initpull):
  proc cryptosecretstreamxchacha20poly1305initpull*(
      state: ptr cryptosecretstreamxchacha20poly1305state_520094510;
      header: array[24'i64, uint8]; k: array[32'i64, uint8]): cint {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_init_pull".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305initpull" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305pull):
  proc cryptosecretstreamxchacha20poly1305pull*(
      state: ptr cryptosecretstreamxchacha20poly1305state_520094510;
      m: ptr uint8; mlenp: ptr culonglong; tagp: ptr uint8; c: ptr uint8;
      clen: culonglong; ad: ptr uint8; adlen: culonglong): cint {.cdecl,
      importc: "crypto_secretstream_xchacha20poly1305_pull".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305pull" &
        " already exists, not redeclaring")
when not declared(cryptosecretstreamxchacha20poly1305rekey):
  proc cryptosecretstreamxchacha20poly1305rekey*(
      state: ptr cryptosecretstreamxchacha20poly1305state_520094510): void {.
      cdecl, importc: "crypto_secretstream_xchacha20poly1305_rekey".}
else:
  static :
    hint("Declaration of " & "cryptosecretstreamxchacha20poly1305rekey" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashsiphash24bytesproc):
  proc cryptoshorthashsiphash24bytesproc*(): csize_t {.cdecl,
      importc: "crypto_shorthash_siphash24_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoshorthashsiphash24bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashsiphash24keybytesproc):
  proc cryptoshorthashsiphash24keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_shorthash_siphash24_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoshorthashsiphash24keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashsiphash24):
  proc cryptoshorthashsiphash24*(outarg: ptr uint8; inarg: ptr uint8;
                                 inlen: culonglong; k: ptr uint8): cint {.cdecl,
      importc: "crypto_shorthash_siphash24".}
else:
  static :
    hint("Declaration of " & "cryptoshorthashsiphash24" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashsiphashx24bytesproc):
  proc cryptoshorthashsiphashx24bytesproc*(): csize_t {.cdecl,
      importc: "crypto_shorthash_siphashx24_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoshorthashsiphashx24bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashsiphashx24keybytesproc):
  proc cryptoshorthashsiphashx24keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_shorthash_siphashx24_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoshorthashsiphashx24keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashsiphashx24):
  proc cryptoshorthashsiphashx24*(outarg: ptr uint8; inarg: ptr uint8;
                                  inlen: culonglong; k: ptr uint8): cint {.
      cdecl, importc: "crypto_shorthash_siphashx24".}
else:
  static :
    hint("Declaration of " & "cryptoshorthashsiphashx24" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashbytesproc):
  proc cryptoshorthashbytesproc*(): csize_t {.cdecl,
      importc: "crypto_shorthash_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoshorthashbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashkeybytesproc):
  proc cryptoshorthashkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_shorthash_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptoshorthashkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashprimitiveproc):
  proc cryptoshorthashprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_shorthash_primitive".}
else:
  static :
    hint("Declaration of " & "cryptoshorthashprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptoshorthash):
  proc cryptoshorthash*(outarg: ptr uint8; inarg: ptr uint8; inlen: culonglong;
                        k: ptr uint8): cint {.cdecl, importc: "crypto_shorthash".}
else:
  static :
    hint("Declaration of " & "cryptoshorthash" &
        " already exists, not redeclaring")
when not declared(cryptoshorthashkeygen):
  proc cryptoshorthashkeygen*(k: array[16'i64, uint8]): void {.cdecl,
      importc: "crypto_shorthash_keygen".}
else:
  static :
    hint("Declaration of " & "cryptoshorthashkeygen" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519phstatebytes):
  proc cryptosigned25519phstatebytes*(): csize_t {.cdecl,
      importc: "crypto_sign_ed25519ph_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519phstatebytes" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519bytesproc):
  proc cryptosigned25519bytesproc*(): csize_t {.cdecl,
      importc: "crypto_sign_ed25519_bytes".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519seedbytesproc):
  proc cryptosigned25519seedbytesproc*(): csize_t {.cdecl,
      importc: "crypto_sign_ed25519_seedbytes".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519seedbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519publickeybytesproc):
  proc cryptosigned25519publickeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_sign_ed25519_publickeybytes".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519publickeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519secretkeybytes):
  proc cryptosigned25519secretkeybytes*(): csize_t {.cdecl,
      importc: "crypto_sign_ed25519_secretkeybytes".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519secretkeybytes" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519messagebytesmax):
  proc cryptosigned25519messagebytesmax*(): csize_t {.cdecl,
      importc: "crypto_sign_ed25519_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519messagebytesmax" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519):
  proc cryptosigned25519*(sm: ptr uint8; smlenp: ptr culonglong; m: ptr uint8;
                          mlen: culonglong; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_ed25519".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519open):
  proc cryptosigned25519open*(m: ptr uint8; mlenp: ptr culonglong;
                              sm: ptr uint8; smlen: culonglong; pk: ptr uint8): cint {.
      cdecl, importc: "crypto_sign_ed25519_open".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519open" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519detached):
  proc cryptosigned25519detached*(sig: ptr uint8; siglenp: ptr culonglong;
                                  m: ptr uint8; mlen: culonglong; sk: ptr uint8): cint {.
      cdecl, importc: "crypto_sign_ed25519_detached".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519detached" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519verifydetached):
  proc cryptosigned25519verifydetached*(sig: ptr uint8; m: ptr uint8;
                                        mlen: culonglong; pk: ptr uint8): cint {.
      cdecl, importc: "crypto_sign_ed25519_verify_detached".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519verifydetached" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519keypair):
  proc cryptosigned25519keypair*(pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_ed25519_keypair".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519keypair" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519seedkeypair):
  proc cryptosigned25519seedkeypair*(pk: ptr uint8; sk: ptr uint8;
                                     seed: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_ed25519_seed_keypair".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519seedkeypair" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519pktocurve25519):
  proc cryptosigned25519pktocurve25519*(curve25519pk: ptr uint8;
                                        ed25519pk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_ed25519_pk_to_curve25519".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519pktocurve25519" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519sktocurve25519):
  proc cryptosigned25519sktocurve25519*(curve25519sk: ptr uint8;
                                        ed25519sk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_ed25519_sk_to_curve25519".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519sktocurve25519" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519sktoseed):
  proc cryptosigned25519sktoseed*(seed: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_ed25519_sk_to_seed".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519sktoseed" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519sktopk):
  proc cryptosigned25519sktopk*(pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_ed25519_sk_to_pk".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519sktopk" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519phinit):
  proc cryptosigned25519phinit*(state: ptr cryptosigned25519phstate_520094514): cint {.
      cdecl, importc: "crypto_sign_ed25519ph_init".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519phinit" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519phupdate):
  proc cryptosigned25519phupdate*(state: ptr cryptosigned25519phstate_520094514;
                                  m: ptr uint8; mlen: culonglong): cint {.cdecl,
      importc: "crypto_sign_ed25519ph_update".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519phupdate" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519phfinalcreate):
  proc cryptosigned25519phfinalcreate*(state: ptr cryptosigned25519phstate_520094514;
                                       sig: ptr uint8; siglenp: ptr culonglong;
                                       sk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_ed25519ph_final_create".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519phfinalcreate" &
        " already exists, not redeclaring")
when not declared(cryptosigned25519phfinalverify):
  proc cryptosigned25519phfinalverify*(state: ptr cryptosigned25519phstate_520094514;
                                       sig: ptr uint8; pk: ptr uint8): cint {.
      cdecl, importc: "crypto_sign_ed25519ph_final_verify".}
else:
  static :
    hint("Declaration of " & "cryptosigned25519phfinalverify" &
        " already exists, not redeclaring")
when not declared(cryptosignstatebytes):
  proc cryptosignstatebytes*(): csize_t {.cdecl,
      importc: "crypto_sign_statebytes".}
else:
  static :
    hint("Declaration of " & "cryptosignstatebytes" &
        " already exists, not redeclaring")
when not declared(cryptosignbytesproc):
  proc cryptosignbytesproc*(): csize_t {.cdecl, importc: "crypto_sign_bytes".}
else:
  static :
    hint("Declaration of " & "cryptosignbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosignseedbytesproc):
  proc cryptosignseedbytesproc*(): csize_t {.cdecl,
      importc: "crypto_sign_seedbytes".}
else:
  static :
    hint("Declaration of " & "cryptosignseedbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosignpublickeybytesproc):
  proc cryptosignpublickeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_sign_publickeybytes".}
else:
  static :
    hint("Declaration of " & "cryptosignpublickeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosignsecretkeybytesproc):
  proc cryptosignsecretkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_sign_secretkeybytes".}
else:
  static :
    hint("Declaration of " & "cryptosignsecretkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosignmessagebytesmaxproc):
  proc cryptosignmessagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_sign_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptosignmessagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptosignprimitiveproc):
  proc cryptosignprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_sign_primitive".}
else:
  static :
    hint("Declaration of " & "cryptosignprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptosignseedkeypair):
  proc cryptosignseedkeypair*(pk: ptr uint8; sk: ptr uint8; seed: ptr uint8): cint {.
      cdecl, importc: "crypto_sign_seed_keypair".}
else:
  static :
    hint("Declaration of " & "cryptosignseedkeypair" &
        " already exists, not redeclaring")
when not declared(cryptosignkeypair):
  proc cryptosignkeypair*(pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_keypair".}
else:
  static :
    hint("Declaration of " & "cryptosignkeypair" &
        " already exists, not redeclaring")
when not declared(cryptosign):
  proc cryptosign*(sm: ptr uint8; smlenp: ptr culonglong; m: ptr uint8;
                   mlen: culonglong; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign".}
else:
  static :
    hint("Declaration of " & "cryptosign" & " already exists, not redeclaring")
when not declared(cryptosignopen):
  proc cryptosignopen*(m: ptr uint8; mlenp: ptr culonglong; sm: ptr uint8;
                       smlen: culonglong; pk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_open".}
else:
  static :
    hint("Declaration of " & "cryptosignopen" &
        " already exists, not redeclaring")
when not declared(cryptosigndetached):
  proc cryptosigndetached*(sig: ptr uint8; siglenp: ptr culonglong;
                           m: ptr uint8; mlen: culonglong; sk: ptr uint8): cint {.
      cdecl, importc: "crypto_sign_detached".}
else:
  static :
    hint("Declaration of " & "cryptosigndetached" &
        " already exists, not redeclaring")
when not declared(cryptosignverifydetached):
  proc cryptosignverifydetached*(sig: ptr uint8; m: ptr uint8; mlen: culonglong;
                                 pk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_verify_detached".}
else:
  static :
    hint("Declaration of " & "cryptosignverifydetached" &
        " already exists, not redeclaring")
when not declared(cryptosigninit):
  proc cryptosigninit*(state: ptr cryptosignstate_520094516): cint {.cdecl,
      importc: "crypto_sign_init".}
else:
  static :
    hint("Declaration of " & "cryptosigninit" &
        " already exists, not redeclaring")
when not declared(cryptosignupdate):
  proc cryptosignupdate*(state: ptr cryptosignstate_520094516; m: ptr uint8;
                         mlen: culonglong): cint {.cdecl,
      importc: "crypto_sign_update".}
else:
  static :
    hint("Declaration of " & "cryptosignupdate" &
        " already exists, not redeclaring")
when not declared(cryptosignfinalcreate):
  proc cryptosignfinalcreate*(state: ptr cryptosignstate_520094516;
                              sig: ptr uint8; siglenp: ptr culonglong;
                              sk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_final_create".}
else:
  static :
    hint("Declaration of " & "cryptosignfinalcreate" &
        " already exists, not redeclaring")
when not declared(cryptosignfinalverify):
  proc cryptosignfinalverify*(state: ptr cryptosignstate_520094516;
                              sig: ptr uint8; pk: ptr uint8): cint {.cdecl,
      importc: "crypto_sign_final_verify".}
else:
  static :
    hint("Declaration of " & "cryptosignfinalverify" &
        " already exists, not redeclaring")
when not declared(cryptostreamkeybytesproc):
  proc cryptostreamkeybytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamnoncebytesproc):
  proc cryptostreamnoncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamnoncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreammessagebytesmaxproc):
  proc cryptostreammessagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_stream_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptostreammessagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamprimitiveproc):
  proc cryptostreamprimitiveproc*(): cstring {.cdecl,
      importc: "crypto_stream_primitive".}
else:
  static :
    hint("Declaration of " & "cryptostreamprimitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptostream):
  proc cryptostream*(c: ptr uint8; clen: culonglong; n: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_stream".}
else:
  static :
    hint("Declaration of " & "cryptostream" & " already exists, not redeclaring")
when not declared(cryptostreamxor):
  proc cryptostreamxor*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                        n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_xor".}
else:
  static :
    hint("Declaration of " & "cryptostreamxor" &
        " already exists, not redeclaring")
when not declared(cryptostreamkeygen):
  proc cryptostreamkeygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_stream_keygen".}
else:
  static :
    hint("Declaration of " & "cryptostreamkeygen" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa20keybytesproc):
  proc cryptostreamsalsa20keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_salsa20_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa20keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa20noncebytesproc):
  proc cryptostreamsalsa20noncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_salsa20_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa20noncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa20messagebytesmaxproc):
  proc cryptostreamsalsa20messagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_stream_salsa20_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa20messagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa20):
  proc cryptostreamsalsa20*(c: ptr uint8; clen: culonglong; n: ptr uint8;
                            k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_salsa20".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa20" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa20xor):
  proc cryptostreamsalsa20xor*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                               n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_salsa20_xor".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa20xor" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa20xoric):
  proc cryptostreamsalsa20xoric*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                                 n: ptr uint8; ic: uint64; k: ptr uint8): cint {.
      cdecl, importc: "crypto_stream_salsa20_xor_ic".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa20xoric" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa20keygen):
  proc cryptostreamsalsa20keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_stream_salsa20_keygen".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa20keygen" &
        " already exists, not redeclaring")
when not declared(cryptoverify16bytesproc):
  proc cryptoverify16bytesproc*(): csize_t {.cdecl,
      importc: "crypto_verify_16_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoverify16bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoverify16):
  proc cryptoverify16*(x: ptr uint8; y: ptr uint8): cint {.cdecl,
      importc: "crypto_verify_16".}
else:
  static :
    hint("Declaration of " & "cryptoverify16" &
        " already exists, not redeclaring")
when not declared(cryptoverify32bytesproc):
  proc cryptoverify32bytesproc*(): csize_t {.cdecl,
      importc: "crypto_verify_32_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoverify32bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoverify32):
  proc cryptoverify32*(x: ptr uint8; y: ptr uint8): cint {.cdecl,
      importc: "crypto_verify_32".}
else:
  static :
    hint("Declaration of " & "cryptoverify32" &
        " already exists, not redeclaring")
when not declared(cryptoverify64bytesproc):
  proc cryptoverify64bytesproc*(): csize_t {.cdecl,
      importc: "crypto_verify_64_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoverify64bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoverify64):
  proc cryptoverify64*(x: ptr uint8; y: ptr uint8): cint {.cdecl,
      importc: "crypto_verify_64".}
else:
  static :
    hint("Declaration of " & "cryptoverify64" &
        " already exists, not redeclaring")
when not declared(randombytesseedbytesproc):
  proc randombytesseedbytesproc*(): csize_t {.cdecl,
      importc: "randombytes_seedbytes".}
else:
  static :
    hint("Declaration of " & "randombytesseedbytesproc" &
        " already exists, not redeclaring")
when not declared(randombytesbuf):
  proc randombytesbuf*(buf: pointer; size: csize_t): void {.cdecl,
      importc: "randombytes_buf".}
else:
  static :
    hint("Declaration of " & "randombytesbuf" &
        " already exists, not redeclaring")
when not declared(randombytesbufdeterministic):
  proc randombytesbufdeterministic*(buf: pointer; size: csize_t;
                                    seed: array[32'i64, uint8]): void {.cdecl,
      importc: "randombytes_buf_deterministic".}
else:
  static :
    hint("Declaration of " & "randombytesbufdeterministic" &
        " already exists, not redeclaring")
when not declared(randombytesrandom):
  proc randombytesrandom*(): uint32 {.cdecl, importc: "randombytes_random".}
else:
  static :
    hint("Declaration of " & "randombytesrandom" &
        " already exists, not redeclaring")
when not declared(randombytesuniform):
  proc randombytesuniform*(upperbound: uint32): uint32 {.cdecl,
      importc: "randombytes_uniform".}
else:
  static :
    hint("Declaration of " & "randombytesuniform" &
        " already exists, not redeclaring")
when not declared(randombytesstir):
  proc randombytesstir*(): void {.cdecl, importc: "randombytes_stir".}
else:
  static :
    hint("Declaration of " & "randombytesstir" &
        " already exists, not redeclaring")
when not declared(randombytesclose):
  proc randombytesclose*(): cint {.cdecl, importc: "randombytes_close".}
else:
  static :
    hint("Declaration of " & "randombytesclose" &
        " already exists, not redeclaring")
when not declared(randombytessetimplementation):
  proc randombytessetimplementation*(impl: ptr randombytesimplementation_520094520): cint {.
      cdecl, importc: "randombytes_set_implementation".}
else:
  static :
    hint("Declaration of " & "randombytessetimplementation" &
        " already exists, not redeclaring")
when not declared(randombytesimplementationname):
  proc randombytesimplementationname*(): cstring {.cdecl,
      importc: "randombytes_implementation_name".}
else:
  static :
    hint("Declaration of " & "randombytesimplementationname" &
        " already exists, not redeclaring")
when not declared(randombytes):
  proc randombytes*(buf: ptr uint8; buflen: culonglong): void {.cdecl,
      importc: "randombytes".}
else:
  static :
    hint("Declaration of " & "randombytes" & " already exists, not redeclaring")
when not declared(randombytessysrandomimplementation):
  var randombytessysrandomimplementation*
      {.importc: "randombytes_sysrandom_implementation".}: structrandombytesimplementation_520094518
else:
  static :
    hint("Declaration of " & "randombytessysrandomimplementation" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehasneon):
  proc sodiumruntimehasneon*(): cint {.cdecl, importc: "sodium_runtime_has_neon".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehasneon" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehassse2):
  proc sodiumruntimehassse2*(): cint {.cdecl, importc: "sodium_runtime_has_sse2".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehassse2" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehassse3):
  proc sodiumruntimehassse3*(): cint {.cdecl, importc: "sodium_runtime_has_sse3".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehassse3" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehasssse3):
  proc sodiumruntimehasssse3*(): cint {.cdecl,
                                        importc: "sodium_runtime_has_ssse3".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehasssse3" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehassse41):
  proc sodiumruntimehassse41*(): cint {.cdecl,
                                        importc: "sodium_runtime_has_sse41".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehassse41" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehasavx):
  proc sodiumruntimehasavx*(): cint {.cdecl, importc: "sodium_runtime_has_avx".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehasavx" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehasavx2):
  proc sodiumruntimehasavx2*(): cint {.cdecl, importc: "sodium_runtime_has_avx2".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehasavx2" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehasavx512f):
  proc sodiumruntimehasavx512f*(): cint {.cdecl,
      importc: "sodium_runtime_has_avx512f".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehasavx512f" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehaspclmul):
  proc sodiumruntimehaspclmul*(): cint {.cdecl,
      importc: "sodium_runtime_has_pclmul".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehaspclmul" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehasaesni):
  proc sodiumruntimehasaesni*(): cint {.cdecl,
                                        importc: "sodium_runtime_has_aesni".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehasaesni" &
        " already exists, not redeclaring")
when not declared(sodiumruntimehasrdrand):
  proc sodiumruntimehasrdrand*(): cint {.cdecl,
      importc: "sodium_runtime_has_rdrand".}
else:
  static :
    hint("Declaration of " & "sodiumruntimehasrdrand" &
        " already exists, not redeclaring")
when not declared(internalsodiumruntimegetcpufeatures):
  proc internalsodiumruntimegetcpufeatures*(): cint {.cdecl,
      importc: "_sodium_runtime_get_cpu_features".}
else:
  static :
    hint("Declaration of " & "internalsodiumruntimegetcpufeatures" &
        " already exists, not redeclaring")
when not declared(sodiummemzero):
  proc sodiummemzero*(pnt: pointer; len: csize_t): void {.cdecl,
      importc: "sodium_memzero".}
else:
  static :
    hint("Declaration of " & "sodiummemzero" &
        " already exists, not redeclaring")
when not declared(sodiumstackzero):
  proc sodiumstackzero*(len: csize_t): void {.cdecl, importc: "sodium_stackzero".}
else:
  static :
    hint("Declaration of " & "sodiumstackzero" &
        " already exists, not redeclaring")
when not declared(sodiummemcmp):
  proc sodiummemcmp*(b1: pointer; b2: pointer; len: csize_t): cint {.cdecl,
      importc: "sodium_memcmp".}
else:
  static :
    hint("Declaration of " & "sodiummemcmp" & " already exists, not redeclaring")
when not declared(sodiumcompare):
  proc sodiumcompare*(b1: ptr uint8; b2: ptr uint8; len: csize_t): cint {.cdecl,
      importc: "sodium_compare".}
else:
  static :
    hint("Declaration of " & "sodiumcompare" &
        " already exists, not redeclaring")
when not declared(sodiumiszero):
  proc sodiumiszero*(n: ptr uint8; nlen: csize_t): cint {.cdecl,
      importc: "sodium_is_zero".}
else:
  static :
    hint("Declaration of " & "sodiumiszero" & " already exists, not redeclaring")
when not declared(sodiumincrement):
  proc sodiumincrement*(n: ptr uint8; nlen: csize_t): void {.cdecl,
      importc: "sodium_increment".}
else:
  static :
    hint("Declaration of " & "sodiumincrement" &
        " already exists, not redeclaring")
when not declared(sodiumadd):
  proc sodiumadd*(a: ptr uint8; b: ptr uint8; len: csize_t): void {.cdecl,
      importc: "sodium_add".}
else:
  static :
    hint("Declaration of " & "sodiumadd" & " already exists, not redeclaring")
when not declared(sodiumsub):
  proc sodiumsub*(a: ptr uint8; b: ptr uint8; len: csize_t): void {.cdecl,
      importc: "sodium_sub".}
else:
  static :
    hint("Declaration of " & "sodiumsub" & " already exists, not redeclaring")
when not declared(sodiumbin2hex):
  proc sodiumbin2hex*(hex: cstring; hexmaxlen: csize_t; bin: ptr uint8;
                      binlen: csize_t): cstring {.cdecl,
      importc: "sodium_bin2hex".}
else:
  static :
    hint("Declaration of " & "sodiumbin2hex" &
        " already exists, not redeclaring")
when not declared(sodiumhex2bin):
  proc sodiumhex2bin*(bin: ptr uint8; binmaxlen: csize_t; hex: cstring;
                      hexlen: csize_t; ignore: cstring; binlen: ptr csize_t;
                      hexend: ptr cstring): cint {.cdecl,
      importc: "sodium_hex2bin".}
else:
  static :
    hint("Declaration of " & "sodiumhex2bin" &
        " already exists, not redeclaring")
when not declared(sodiumbase64encodedlen):
  proc sodiumbase64encodedlen*(binlen: csize_t; variant: cint): csize_t {.cdecl,
      importc: "sodium_base64_encoded_len".}
else:
  static :
    hint("Declaration of " & "sodiumbase64encodedlen" &
        " already exists, not redeclaring")
when not declared(sodiumbin2base64):
  proc sodiumbin2base64*(b64: cstring; b64maxlen: csize_t; bin: ptr uint8;
                         binlen: csize_t; variant: cint): cstring {.cdecl,
      importc: "sodium_bin2base64".}
else:
  static :
    hint("Declaration of " & "sodiumbin2base64" &
        " already exists, not redeclaring")
when not declared(sodiumbase642bin):
  proc sodiumbase642bin*(bin: ptr uint8; binmaxlen: csize_t; b64: cstring;
                         b64len: csize_t; ignore: cstring; binlen: ptr csize_t;
                         b64end: ptr cstring; variant: cint): cint {.cdecl,
      importc: "sodium_base642bin".}
else:
  static :
    hint("Declaration of " & "sodiumbase642bin" &
        " already exists, not redeclaring")
when not declared(sodiummlock):
  proc sodiummlock*(addrarg: pointer; len: csize_t): cint {.cdecl,
      importc: "sodium_mlock".}
else:
  static :
    hint("Declaration of " & "sodiummlock" & " already exists, not redeclaring")
when not declared(sodiummunlock):
  proc sodiummunlock*(addrarg: pointer; len: csize_t): cint {.cdecl,
      importc: "sodium_munlock".}
else:
  static :
    hint("Declaration of " & "sodiummunlock" &
        " already exists, not redeclaring")
when not declared(sodiummalloc):
  proc sodiummalloc*(size: csize_t): pointer {.cdecl, importc: "sodium_malloc".}
else:
  static :
    hint("Declaration of " & "sodiummalloc" & " already exists, not redeclaring")
when not declared(sodiumallocarray):
  proc sodiumallocarray*(count: csize_t; size: csize_t): pointer {.cdecl,
      importc: "sodium_allocarray".}
else:
  static :
    hint("Declaration of " & "sodiumallocarray" &
        " already exists, not redeclaring")
when not declared(sodiumfree):
  proc sodiumfree*(ptrarg: pointer): void {.cdecl, importc: "sodium_free".}
else:
  static :
    hint("Declaration of " & "sodiumfree" & " already exists, not redeclaring")
when not declared(sodiummprotectnoaccess):
  proc sodiummprotectnoaccess*(ptrarg: pointer): cint {.cdecl,
      importc: "sodium_mprotect_noaccess".}
else:
  static :
    hint("Declaration of " & "sodiummprotectnoaccess" &
        " already exists, not redeclaring")
when not declared(sodiummprotectreadonly):
  proc sodiummprotectreadonly*(ptrarg: pointer): cint {.cdecl,
      importc: "sodium_mprotect_readonly".}
else:
  static :
    hint("Declaration of " & "sodiummprotectreadonly" &
        " already exists, not redeclaring")
when not declared(sodiummprotectreadwrite):
  proc sodiummprotectreadwrite*(ptrarg: pointer): cint {.cdecl,
      importc: "sodium_mprotect_readwrite".}
else:
  static :
    hint("Declaration of " & "sodiummprotectreadwrite" &
        " already exists, not redeclaring")
when not declared(sodiumpad):
  proc sodiumpad*(paddedbuflenp: ptr csize_t; buf: ptr uint8;
                  unpaddedbuflen: csize_t; blocksize: csize_t;
                  maxbuflen: csize_t): cint {.cdecl, importc: "sodium_pad".}
else:
  static :
    hint("Declaration of " & "sodiumpad" & " already exists, not redeclaring")
when not declared(sodiumunpad):
  proc sodiumunpad*(unpaddedbuflenp: ptr csize_t; buf: ptr uint8;
                    paddedbuflen: csize_t; blocksize: csize_t): cint {.cdecl,
      importc: "sodium_unpad".}
else:
  static :
    hint("Declaration of " & "sodiumunpad" & " already exists, not redeclaring")
when not declared(internalsodiumallocinit):
  proc internalsodiumallocinit*(): cint {.cdecl, importc: "_sodium_alloc_init".}
else:
  static :
    hint("Declaration of " & "internalsodiumallocinit" &
        " already exists, not redeclaring")
when not declared(cryptostreamxchacha20keybytesproc):
  proc cryptostreamxchacha20keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_xchacha20_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamxchacha20keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamxchacha20noncebytesproc):
  proc cryptostreamxchacha20noncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_xchacha20_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamxchacha20noncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamxchacha20messagebytesmaxproc):
  proc cryptostreamxchacha20messagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_stream_xchacha20_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptostreamxchacha20messagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamxchacha20):
  proc cryptostreamxchacha20*(c: ptr uint8; clen: culonglong; n: ptr uint8;
                              k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_xchacha20".}
else:
  static :
    hint("Declaration of " & "cryptostreamxchacha20" &
        " already exists, not redeclaring")
when not declared(cryptostreamxchacha20xor):
  proc cryptostreamxchacha20xor*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                                 n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_xchacha20_xor".}
else:
  static :
    hint("Declaration of " & "cryptostreamxchacha20xor" &
        " already exists, not redeclaring")
when not declared(cryptostreamxchacha20xoric):
  proc cryptostreamxchacha20xoric*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                                   n: ptr uint8; ic: uint64; k: ptr uint8): cint {.
      cdecl, importc: "crypto_stream_xchacha20_xor_ic".}
else:
  static :
    hint("Declaration of " & "cryptostreamxchacha20xoric" &
        " already exists, not redeclaring")
when not declared(cryptostreamxchacha20keygen):
  proc cryptostreamxchacha20keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_stream_xchacha20_keygen".}
else:
  static :
    hint("Declaration of " & "cryptostreamxchacha20keygen" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305seedbytesproc):
  proc cryptoboxcurve25519xchacha20poly1305seedbytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_seedbytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305seedbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305publickeybytesproc):
  proc cryptoboxcurve25519xchacha20poly1305publickeybytesproc*(): csize_t {.
      cdecl, importc: "crypto_box_curve25519xchacha20poly1305_publickeybytes".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xchacha20poly1305publickeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305secretkeybytesproc):
  proc cryptoboxcurve25519xchacha20poly1305secretkeybytesproc*(): csize_t {.
      cdecl, importc: "crypto_box_curve25519xchacha20poly1305_secretkeybytes".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xchacha20poly1305secretkeybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305beforenmbytesproc):
  proc cryptoboxcurve25519xchacha20poly1305beforenmbytesproc*(): csize_t {.
      cdecl, importc: "crypto_box_curve25519xchacha20poly1305_beforenmbytes".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xchacha20poly1305beforenmbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305noncebytesproc):
  proc cryptoboxcurve25519xchacha20poly1305noncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_noncebytes".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xchacha20poly1305noncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305macbytesproc):
  proc cryptoboxcurve25519xchacha20poly1305macbytesproc*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_macbytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305macbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305messagebytesmax):
  proc cryptoboxcurve25519xchacha20poly1305messagebytesmax*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_messagebytes_max".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xchacha20poly1305messagebytesmax" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305seedkeypair):
  proc cryptoboxcurve25519xchacha20poly1305seedkeypair*(pk: ptr uint8;
      sk: ptr uint8; seed: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_seed_keypair".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305seedkeypair" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305keypair):
  proc cryptoboxcurve25519xchacha20poly1305keypair*(pk: ptr uint8; sk: ptr uint8): cint {.
      cdecl, importc: "crypto_box_curve25519xchacha20poly1305_keypair".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305keypair" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305easy):
  proc cryptoboxcurve25519xchacha20poly1305easy*(c: ptr uint8; m: ptr uint8;
      mlen: culonglong; n: ptr uint8; pk: ptr uint8; sk: ptr uint8): cint {.
      cdecl, importc: "crypto_box_curve25519xchacha20poly1305_easy".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305easy" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305openeasy):
  proc cryptoboxcurve25519xchacha20poly1305openeasy*(m: ptr uint8; c: ptr uint8;
      clen: culonglong; n: ptr uint8; pk: ptr uint8; sk: ptr uint8): cint {.
      cdecl, importc: "crypto_box_curve25519xchacha20poly1305_open_easy".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305openeasy" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305detached):
  proc cryptoboxcurve25519xchacha20poly1305detached*(c: ptr uint8;
      mac: ptr uint8; m: ptr uint8; mlen: culonglong; n: ptr uint8;
      pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_detached".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305detached" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305opendetached):
  proc cryptoboxcurve25519xchacha20poly1305opendetached*(m: ptr uint8;
      c: ptr uint8; mac: ptr uint8; clen: culonglong; n: ptr uint8;
      pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_open_detached".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305opendetached" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305beforenm):
  proc cryptoboxcurve25519xchacha20poly1305beforenm*(k: ptr uint8;
      pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_beforenm".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305beforenm" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305easyafternm):
  proc cryptoboxcurve25519xchacha20poly1305easyafternm*(c: ptr uint8;
      m: ptr uint8; mlen: culonglong; n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_easy_afternm".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305easyafternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305openeasyafternm):
  proc cryptoboxcurve25519xchacha20poly1305openeasyafternm*(m: ptr uint8;
      c: ptr uint8; clen: culonglong; n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_open_easy_afternm".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xchacha20poly1305openeasyafternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305detachedafternm):
  proc cryptoboxcurve25519xchacha20poly1305detachedafternm*(c: ptr uint8;
      mac: ptr uint8; m: ptr uint8; mlen: culonglong; n: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_box_curve25519xchacha20poly1305_detached_afternm".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xchacha20poly1305detachedafternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305opendetachedafternm):
  proc cryptoboxcurve25519xchacha20poly1305opendetachedafternm*(m: ptr uint8;
      c: ptr uint8; mac: ptr uint8; clen: culonglong; n: ptr uint8; k: ptr uint8): cint {.
      cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_open_detached_afternm".}
else:
  static :
    hint("Declaration of " &
        "cryptoboxcurve25519xchacha20poly1305opendetachedafternm" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305sealbytes):
  proc cryptoboxcurve25519xchacha20poly1305sealbytes*(): csize_t {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_sealbytes".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305sealbytes" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305seal):
  proc cryptoboxcurve25519xchacha20poly1305seal*(c: ptr uint8; m: ptr uint8;
      mlen: culonglong; pk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_seal".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305seal" &
        " already exists, not redeclaring")
when not declared(cryptoboxcurve25519xchacha20poly1305sealopen):
  proc cryptoboxcurve25519xchacha20poly1305sealopen*(m: ptr uint8; c: ptr uint8;
      clen: culonglong; pk: ptr uint8; sk: ptr uint8): cint {.cdecl,
      importc: "crypto_box_curve25519xchacha20poly1305_seal_open".}
else:
  static :
    hint("Declaration of " & "cryptoboxcurve25519xchacha20poly1305sealopen" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519bytesproc):
  proc cryptocoreed25519bytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_ed25519_bytes".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519uniformbytesproc):
  proc cryptocoreed25519uniformbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_ed25519_uniformbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519uniformbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519hashbytesproc):
  proc cryptocoreed25519hashbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_ed25519_hashbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519hashbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519scalarbytesproc):
  proc cryptocoreed25519scalarbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_ed25519_scalarbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519scalarbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519nonreducedscalarbytesproc):
  proc cryptocoreed25519nonreducedscalarbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_ed25519_nonreducedscalarbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519nonreducedscalarbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519isvalidpoint):
  proc cryptocoreed25519isvalidpoint*(p: ptr uint8): cint {.cdecl,
      importc: "crypto_core_ed25519_is_valid_point".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519isvalidpoint" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519add):
  proc cryptocoreed25519add*(r: ptr uint8; p: ptr uint8; q: ptr uint8): cint {.
      cdecl, importc: "crypto_core_ed25519_add".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519add" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519sub):
  proc cryptocoreed25519sub*(r: ptr uint8; p: ptr uint8; q: ptr uint8): cint {.
      cdecl, importc: "crypto_core_ed25519_sub".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519sub" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519fromuniform):
  proc cryptocoreed25519fromuniform*(p: ptr uint8; r: ptr uint8): cint {.cdecl,
      importc: "crypto_core_ed25519_from_uniform".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519fromuniform" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519fromhash):
  proc cryptocoreed25519fromhash*(p: ptr uint8; h: ptr uint8): cint {.cdecl,
      importc: "crypto_core_ed25519_from_hash".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519fromhash" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519random):
  proc cryptocoreed25519random*(p: ptr uint8): void {.cdecl,
      importc: "crypto_core_ed25519_random".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519random" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519scalarrandom):
  proc cryptocoreed25519scalarrandom*(r: ptr uint8): void {.cdecl,
      importc: "crypto_core_ed25519_scalar_random".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519scalarrandom" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519scalarinvert):
  proc cryptocoreed25519scalarinvert*(recip: ptr uint8; s: ptr uint8): cint {.
      cdecl, importc: "crypto_core_ed25519_scalar_invert".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519scalarinvert" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519scalarnegate):
  proc cryptocoreed25519scalarnegate*(neg: ptr uint8; s: ptr uint8): void {.
      cdecl, importc: "crypto_core_ed25519_scalar_negate".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519scalarnegate" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519scalarcomplement):
  proc cryptocoreed25519scalarcomplement*(comp: ptr uint8; s: ptr uint8): void {.
      cdecl, importc: "crypto_core_ed25519_scalar_complement".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519scalarcomplement" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519scalaradd):
  proc cryptocoreed25519scalaradd*(z: ptr uint8; x: ptr uint8; y: ptr uint8): void {.
      cdecl, importc: "crypto_core_ed25519_scalar_add".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519scalaradd" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519scalarsub):
  proc cryptocoreed25519scalarsub*(z: ptr uint8; x: ptr uint8; y: ptr uint8): void {.
      cdecl, importc: "crypto_core_ed25519_scalar_sub".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519scalarsub" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519scalarmul):
  proc cryptocoreed25519scalarmul*(z: ptr uint8; x: ptr uint8; y: ptr uint8): void {.
      cdecl, importc: "crypto_core_ed25519_scalar_mul".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519scalarmul" &
        " already exists, not redeclaring")
when not declared(cryptocoreed25519scalarreduce):
  proc cryptocoreed25519scalarreduce*(r: ptr uint8; s: ptr uint8): void {.cdecl,
      importc: "crypto_core_ed25519_scalar_reduce".}
else:
  static :
    hint("Declaration of " & "cryptocoreed25519scalarreduce" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255bytesproc):
  proc cryptocoreristretto255bytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_ristretto255_bytes".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255hashbytesproc):
  proc cryptocoreristretto255hashbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_ristretto255_hashbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255hashbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255scalarbytesproc):
  proc cryptocoreristretto255scalarbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_ristretto255_scalarbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255scalarbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255nonreducedscalarbytesproc):
  proc cryptocoreristretto255nonreducedscalarbytesproc*(): csize_t {.cdecl,
      importc: "crypto_core_ristretto255_nonreducedscalarbytes".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255nonreducedscalarbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255isvalidpoint):
  proc cryptocoreristretto255isvalidpoint*(p: ptr uint8): cint {.cdecl,
      importc: "crypto_core_ristretto255_is_valid_point".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255isvalidpoint" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255add):
  proc cryptocoreristretto255add*(r: ptr uint8; p: ptr uint8; q: ptr uint8): cint {.
      cdecl, importc: "crypto_core_ristretto255_add".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255add" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255sub):
  proc cryptocoreristretto255sub*(r: ptr uint8; p: ptr uint8; q: ptr uint8): cint {.
      cdecl, importc: "crypto_core_ristretto255_sub".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255sub" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255fromhash):
  proc cryptocoreristretto255fromhash*(p: ptr uint8; r: ptr uint8): cint {.
      cdecl, importc: "crypto_core_ristretto255_from_hash".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255fromhash" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255random):
  proc cryptocoreristretto255random*(p: ptr uint8): void {.cdecl,
      importc: "crypto_core_ristretto255_random".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255random" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255scalarrandom):
  proc cryptocoreristretto255scalarrandom*(r: ptr uint8): void {.cdecl,
      importc: "crypto_core_ristretto255_scalar_random".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255scalarrandom" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255scalarinvert):
  proc cryptocoreristretto255scalarinvert*(recip: ptr uint8; s: ptr uint8): cint {.
      cdecl, importc: "crypto_core_ristretto255_scalar_invert".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255scalarinvert" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255scalarnegate):
  proc cryptocoreristretto255scalarnegate*(neg: ptr uint8; s: ptr uint8): void {.
      cdecl, importc: "crypto_core_ristretto255_scalar_negate".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255scalarnegate" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255scalarcomplement):
  proc cryptocoreristretto255scalarcomplement*(comp: ptr uint8; s: ptr uint8): void {.
      cdecl, importc: "crypto_core_ristretto255_scalar_complement".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255scalarcomplement" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255scalaradd):
  proc cryptocoreristretto255scalaradd*(z: ptr uint8; x: ptr uint8; y: ptr uint8): void {.
      cdecl, importc: "crypto_core_ristretto255_scalar_add".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255scalaradd" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255scalarsub):
  proc cryptocoreristretto255scalarsub*(z: ptr uint8; x: ptr uint8; y: ptr uint8): void {.
      cdecl, importc: "crypto_core_ristretto255_scalar_sub".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255scalarsub" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255scalarmul):
  proc cryptocoreristretto255scalarmul*(z: ptr uint8; x: ptr uint8; y: ptr uint8): void {.
      cdecl, importc: "crypto_core_ristretto255_scalar_mul".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255scalarmul" &
        " already exists, not redeclaring")
when not declared(cryptocoreristretto255scalarreduce):
  proc cryptocoreristretto255scalarreduce*(r: ptr uint8; s: ptr uint8): void {.
      cdecl, importc: "crypto_core_ristretto255_scalar_reduce".}
else:
  static :
    hint("Declaration of " & "cryptocoreristretto255scalarreduce" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmulted25519bytesproc):
  proc cryptoscalarmulted25519bytesproc*(): csize_t {.cdecl,
      importc: "crypto_scalarmult_ed25519_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmulted25519bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmulted25519scalarbytesproc):
  proc cryptoscalarmulted25519scalarbytesproc*(): csize_t {.cdecl,
      importc: "crypto_scalarmult_ed25519_scalarbytes".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmulted25519scalarbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmulted25519):
  proc cryptoscalarmulted25519*(q: ptr uint8; n: ptr uint8; p: ptr uint8): cint {.
      cdecl, importc: "crypto_scalarmult_ed25519".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmulted25519" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmulted25519noclamp):
  proc cryptoscalarmulted25519noclamp*(q: ptr uint8; n: ptr uint8; p: ptr uint8): cint {.
      cdecl, importc: "crypto_scalarmult_ed25519_noclamp".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmulted25519noclamp" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmulted25519base):
  proc cryptoscalarmulted25519base*(q: ptr uint8; n: ptr uint8): cint {.cdecl,
      importc: "crypto_scalarmult_ed25519_base".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmulted25519base" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmulted25519basenoclamp):
  proc cryptoscalarmulted25519basenoclamp*(q: ptr uint8; n: ptr uint8): cint {.
      cdecl, importc: "crypto_scalarmult_ed25519_base_noclamp".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmulted25519basenoclamp" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultristretto255bytesproc):
  proc cryptoscalarmultristretto255bytesproc*(): csize_t {.cdecl,
      importc: "crypto_scalarmult_ristretto255_bytes".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultristretto255bytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultristretto255scalarbytesproc):
  proc cryptoscalarmultristretto255scalarbytesproc*(): csize_t {.cdecl,
      importc: "crypto_scalarmult_ristretto255_scalarbytes".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultristretto255scalarbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultristretto255):
  proc cryptoscalarmultristretto255*(q: ptr uint8; n: ptr uint8; p: ptr uint8): cint {.
      cdecl, importc: "crypto_scalarmult_ristretto255".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultristretto255" &
        " already exists, not redeclaring")
when not declared(cryptoscalarmultristretto255base):
  proc cryptoscalarmultristretto255base*(q: ptr uint8; n: ptr uint8): cint {.
      cdecl, importc: "crypto_scalarmult_ristretto255_base".}
else:
  static :
    hint("Declaration of " & "cryptoscalarmultristretto255base" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305keybytesproc):
  proc cryptosecretboxxchacha20poly1305keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_xchacha20poly1305_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305noncebytesproc):
  proc cryptosecretboxxchacha20poly1305noncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_xchacha20poly1305_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305noncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305macbytesproc):
  proc cryptosecretboxxchacha20poly1305macbytesproc*(): csize_t {.cdecl,
      importc: "crypto_secretbox_xchacha20poly1305_macbytes".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305macbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305messagebytesmax):
  proc cryptosecretboxxchacha20poly1305messagebytesmax*(): csize_t {.cdecl,
      importc: "crypto_secretbox_xchacha20poly1305_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305messagebytesmax" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305easy):
  proc cryptosecretboxxchacha20poly1305easy*(c: ptr uint8; m: ptr uint8;
      mlen: culonglong; n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_secretbox_xchacha20poly1305_easy".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305easy" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305openeasy):
  proc cryptosecretboxxchacha20poly1305openeasy*(m: ptr uint8; c: ptr uint8;
      clen: culonglong; n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_secretbox_xchacha20poly1305_open_easy".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305openeasy" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305detached):
  proc cryptosecretboxxchacha20poly1305detached*(c: ptr uint8; mac: ptr uint8;
      m: ptr uint8; mlen: culonglong; n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_secretbox_xchacha20poly1305_detached".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305detached" &
        " already exists, not redeclaring")
when not declared(cryptosecretboxxchacha20poly1305opendetached):
  proc cryptosecretboxxchacha20poly1305opendetached*(m: ptr uint8; c: ptr uint8;
      mac: ptr uint8; clen: culonglong; n: ptr uint8; k: ptr uint8): cint {.
      cdecl, importc: "crypto_secretbox_xchacha20poly1305_open_detached".}
else:
  static :
    hint("Declaration of " & "cryptosecretboxxchacha20poly1305opendetached" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256bytesminproc):
  proc cryptopwhashscryptsalsa208sha256bytesminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_bytes_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256bytesminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256bytesmax):
  proc cryptopwhashscryptsalsa208sha256bytesmax*(): csize_t {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_bytes_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256bytesmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256passwdminproc):
  proc cryptopwhashscryptsalsa208sha256passwdminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_passwd_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256passwdminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256passwdmaxproc):
  proc cryptopwhashscryptsalsa208sha256passwdmaxproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_passwd_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256passwdmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256saltbytesproc):
  proc cryptopwhashscryptsalsa208sha256saltbytesproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_saltbytes".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256saltbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256strbytesproc):
  proc cryptopwhashscryptsalsa208sha256strbytesproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_strbytes".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256strbytesproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256strprefixproc):
  proc cryptopwhashscryptsalsa208sha256strprefixproc*(): cstring {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_strprefix".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256strprefixproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256opslimitminproc):
  proc cryptopwhashscryptsalsa208sha256opslimitminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_opslimit_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256opslimitminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256opslimitmaxproc):
  proc cryptopwhashscryptsalsa208sha256opslimitmaxproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_opslimit_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256opslimitmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256memlimitminproc):
  proc cryptopwhashscryptsalsa208sha256memlimitminproc*(): csize_t {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_memlimit_min".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256memlimitminproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256memlimitmax):
  proc cryptopwhashscryptsalsa208sha256memlimitmax*(): csize_t {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_memlimit_max".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256memlimitmax" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256opslimitinteractiveproc):
  proc cryptopwhashscryptsalsa208sha256opslimitinteractiveproc*(): csize_t {.
      cdecl, importc: "crypto_pwhash_scryptsalsa208sha256_opslimit_interactive".}
else:
  static :
    hint("Declaration of " &
        "cryptopwhashscryptsalsa208sha256opslimitinteractiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256memlimitinteractiveproc):
  proc cryptopwhashscryptsalsa208sha256memlimitinteractiveproc*(): csize_t {.
      cdecl, importc: "crypto_pwhash_scryptsalsa208sha256_memlimit_interactive".}
else:
  static :
    hint("Declaration of " &
        "cryptopwhashscryptsalsa208sha256memlimitinteractiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256opslimitsensitiveproc):
  proc cryptopwhashscryptsalsa208sha256opslimitsensitiveproc*(): csize_t {.
      cdecl, importc: "crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive".}
else:
  static :
    hint("Declaration of " &
        "cryptopwhashscryptsalsa208sha256opslimitsensitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256memlimitsensitiveproc):
  proc cryptopwhashscryptsalsa208sha256memlimitsensitiveproc*(): csize_t {.
      cdecl, importc: "crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive".}
else:
  static :
    hint("Declaration of " &
        "cryptopwhashscryptsalsa208sha256memlimitsensitiveproc" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256):
  proc cryptopwhashscryptsalsa208sha256*(outarg: ptr uint8; outlen: culonglong;
      passwd: cstring; passwdlen: culonglong; salt: ptr uint8;
      opslimit: culonglong; memlimit: csize_t): cint {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256str):
  proc cryptopwhashscryptsalsa208sha256str*(outarg: array[102'i64, cschar];
      passwd: cstring; passwdlen: culonglong; opslimit: culonglong;
      memlimit: csize_t): cint {.cdecl, importc: "crypto_pwhash_scryptsalsa208sha256_str".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256str" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256strverify):
  proc cryptopwhashscryptsalsa208sha256strverify*(str: array[102'i64, cschar];
      passwd: cstring; passwdlen: culonglong): cint {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_str_verify".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256strverify" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256ll):
  proc cryptopwhashscryptsalsa208sha256ll*(passwd: ptr uint8;
      passwdlen: csize_t; salt: ptr uint8; saltlen: csize_t; N: uint64;
      r: uint32; p: uint32; buf: ptr uint8; buflen: csize_t): cint {.cdecl,
      importc: "crypto_pwhash_scryptsalsa208sha256_ll".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256ll" &
        " already exists, not redeclaring")
when not declared(cryptopwhashscryptsalsa208sha256strneedsrehash):
  proc cryptopwhashscryptsalsa208sha256strneedsrehash*(
      str: array[102'i64, cschar]; opslimit: culonglong; memlimit: csize_t): cint {.
      cdecl, importc: "crypto_pwhash_scryptsalsa208sha256_str_needs_rehash".}
else:
  static :
    hint("Declaration of " & "cryptopwhashscryptsalsa208sha256strneedsrehash" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa2012keybytesproc):
  proc cryptostreamsalsa2012keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_salsa2012_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa2012keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa2012noncebytesproc):
  proc cryptostreamsalsa2012noncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_salsa2012_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa2012noncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa2012messagebytesmaxproc):
  proc cryptostreamsalsa2012messagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_stream_salsa2012_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa2012messagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa2012):
  proc cryptostreamsalsa2012*(c: ptr uint8; clen: culonglong; n: ptr uint8;
                              k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_salsa2012".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa2012" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa2012xor):
  proc cryptostreamsalsa2012xor*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                                 n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_salsa2012_xor".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa2012xor" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa2012keygen):
  proc cryptostreamsalsa2012keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_stream_salsa2012_keygen".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa2012keygen" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa208keybytesproc):
  proc cryptostreamsalsa208keybytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_salsa208_keybytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa208keybytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa208noncebytesproc):
  proc cryptostreamsalsa208noncebytesproc*(): csize_t {.cdecl,
      importc: "crypto_stream_salsa208_noncebytes".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa208noncebytesproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa208messagebytesmaxproc):
  proc cryptostreamsalsa208messagebytesmaxproc*(): csize_t {.cdecl,
      importc: "crypto_stream_salsa208_messagebytes_max".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa208messagebytesmaxproc" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa208):
  proc cryptostreamsalsa208*(c: ptr uint8; clen: culonglong; n: ptr uint8;
                             k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_salsa208".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa208" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa208xor):
  proc cryptostreamsalsa208xor*(c: ptr uint8; m: ptr uint8; mlen: culonglong;
                                n: ptr uint8; k: ptr uint8): cint {.cdecl,
      importc: "crypto_stream_salsa208_xor".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa208xor" &
        " already exists, not redeclaring")
when not declared(cryptostreamsalsa208keygen):
  proc cryptostreamsalsa208keygen*(k: array[32'i64, uint8]): void {.cdecl,
      importc: "crypto_stream_salsa208_keygen".}
else:
  static :
    hint("Declaration of " & "cryptostreamsalsa208keygen" &
        " already exists, not redeclaring")