import std/[
  os,
  strutils,
]

import sodium/sodium_internal


const
  saltSize = 16
  keySize = 32
  pwHashSize = 128
  cryptoCtxName = ['F', 'i', 'l', 'e', 't', 'o', 'o', 'l']

static:
  doAssert cryptoCtxName.len() == 8
  doAssert crypto_pwhash_STRBYTES == pwHashSize


type
  Salt* = distinct string
  CryptoKey* = distinct array[keySize, byte]
  MasterKey* = distinct CryptoKey
  SubkeyId* = distinct uint64

  PwHash* = distinct array[pwHashSize, byte]

proc `$`*(self: Salt): string =
  self.string.toHex()


template asArray*(self: CryptoKey): array[keySize, byte] =
  cast[ptr array[keySize, byte]](addr self)[]

proc `$`*(self: CryptoKey): string =
  var buf = newString(keySize)
  copyMem(addr buf[0], addr self.asArray()[0], keySize)
  buf.toHex()


proc `$`*(self: MasterKey): string = $self.CryptoKey
template asArray*(self: MasterKey): array[keySize, byte] = self.CryptoKey.asArray()

template asArray*(self: PwHash): array[pwHashSize, byte] =
  cast[ptr array[pwHashSize, byte]](addr self)[]

template asCsArray*(self: PwHash): array[pwHashSize, cschar] =
  cast[ptr array[pwhashSize, cschar]](addr self)[]

proc `$`*(self: PwHash): string =
  var buf = newString(pwHashSize)
  copyMem(addr buf[0], addr self.asArray()[0], pwHashSize)
  buf.toHex()


proc generateSalt*(): Salt =
  var salt = newString(saltSize)
  randombytes_buf(addr salt[0], salt.len().csize_t)
  salt.Salt

template checkPwLen(password: string): untyped =
  if password.len() < crypto_pwhash_passwd_min_proc().int:
    raiseAssert "Password too short. Must be at least: " & $crypto_pwhash_passwd_min_proc()

proc fromString*(t: typedesc[PwHash], str: string): PwHash =
  doAssert str.len() == pwHashSize
  result = default(PwHash)
  copyMem(addr result.asArray()[0], addr str[0], pwHashSize)

proc hashPassword*(password: string): PwHash =
  checkPwLen(password)
  result = default(PwHash)
  doAssert crypto_pwhash_str(
    result.asCsArray(),
    password.cstring,
    password.len().culonglong,
    crypto_pwhash_opslimit_moderate_proc(),
    crypto_pwhash_memlimit_moderate_proc(),
  ) == 0

proc verifyPassword*(pwHash: PwHash, password: string): bool =
  crypto_pwhash_str_verify(pwHash.asCsArray(), password.cstring, password.len().culonglong) == 0

proc deriveMasterKey*(password: string, salt: Salt): MasterKey =
  checkPwLen(password)
  result = default(MasterKey)
  doAssert crypto_pwhash(
    cast[ptr byte](addr result.asArray()[0]),
    keySize,
    password.cstring,
    password.len().culonglong,
    cast[ptr byte](addr salt.string[0]),
    crypto_pwhash_opslimit_moderate_proc(),
    crypto_pwhash_memlimit_moderate_proc(),
    crypto_pwhash_alg_argon2id13_proc()
  ) == 0

proc deriveSubkey*(key: MasterKey, id: SubkeyId): CryptoKey =
  doAssert crypto_secretstream_xchacha20poly1305_KEYBYTES() == crypto_kdf_keybytes_proc()
  result = default(Cryptokey)
  doAssert crypto_kdf_derive_from_key(
    cast[ptr byte](addr result.asArray()[0]),
    keySize,
    id.uint64,
    cast[array[8, cschar]](cryptoCtxName),
    key.asArray()
  ) == 0

proc encryptData*(masterKey: MasterKey, id: SubkeyId, data: openArray[byte]): seq[byte] =
  if data.len() == 0:
    return @[]
  let key = masterKey.deriveSubkey(id)
  var
    state = default(crypto_secretstream_xchacha20poly1305_state)
    header = default(array[24, byte])
  doAssert crypto_secretstream_xchacha20poly1305_init_push(
    addr state,
    header,
    key.asArray(),
  ) == 0
  result = newSeq[byte](crypto_secretstream_xchacha20poly1305_ABYTES().int + header.len() + data.len())
  copyMem(addr result[0], addr header[0], header.len())
  var outLen = 0.culonglong
  doAssert crypto_secretstream_xchacha20poly1305_push(
    addr state,
    addr result[header.len()],
    addr outLen,
    cast[ptr byte](addr data[0]),
    data.len().culonglong,
    nil,
    0,
    crypto_secretstream_xchacha20poly1305_TAG_FINAL(),
  ) == 0

proc decryptData*(masterKey: MasterKey, id: SubkeyId, data: openArray[byte]): seq[byte] =
  if data.len() == 0:
    return @[]
  let key = masterKey.deriveSubkey(id)
  var
    header = default(array[24, byte])
    state = default(crypto_secretstream_xchacha20poly1305_state)
  copyMem(addr header[0], addr data[0], header.len())
  doAssert crypto_secretstream_xchacha20poly1305_init_pull(
    addr state,
    header,
    key.asArray(),
  ) == 0

  result = newSeq[byte](data.len() - header.len() - crypto_secretstream_xchacha20poly1305_ABYTES().int)
  var
    tag = 0u8
    outLen = 0.culonglong
  doAssert crypto_secretstream_xchacha20poly1305_pull(
    addr state,
    addr result[0],
    addr outLen,
    addr tag,
    cast[ptr byte](addr data[header.len()]),
    (data.len() - header.len()).culonglong,
    nil,
    0
  ) == 0
  doAssert tag == crypto_secretstream_xchacha20poly1305_TAG_FINAL()
  doAssert outLen.int == result.len()


when isMainModule:
  let
    salt = generateSalt()
    masterKey = deriveMasterKey("test", salt)
  echo salt
  echo masterKey
  echo masterKey.deriveSubkey(0.SubkeyId)
  echo masterKey.deriveSubkey(1.SubkeyId)

  let data = "test"
  let edata = masterKey.encryptData(1.SubkeyId, data.toOpenArrayByte(0, data.len() - 1))
  let ddata = masterKey.decryptData(1.SubkeyId, edata)
  echo ddata

  let pwhash = "test".hashPassword()
  echo pwhash
  echo pwhash.verifyPassword("test")
