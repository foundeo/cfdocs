# decrypt

 Decrypts a string that is encrypted with the Encrypt function.

```javascript
decrypt(string, key [, algorithm [, encoding] [, iv | salt [, iterations]]])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | Encrypted string to decrypt. |
| key | string | Yes |  | Key or seed used to encrypt the string.
* For the `CFMX_COMPAT` algorithm, any combination of any number of characters; used as a seed used to generate a 32-bit encryption key.
* For all other algorithms, a key in the format used by the algorithm. For these algorithms, use the `GenerateSecretKey` function to generate the key. |
| algorithm | string | No | CFMX_COMPAT | The algorithm to use to decrypt the string. Must be the same as the algorithm used to encrypt the string. See the `encrypt` function for additional algorithms.
ColdFusion Standard Edition installs the following algorithms:
* CFMX_COMPAT: the algorithm used in ColdFusion MX and prior releases. This algorithm is the least secure option (default).
* AES: the Advanced Encryption Standard specified by the National Institute of Standards and Technology (NIST) FIPS-197.
* BLOWFISH: the Blowfish algorithm defined by Bruce Schneier.
* DES: the Data Encryption Standard algorithm defined by NIST FIPS-46-3.
* DESEDE: the "Triple DES" algorithm defined by NIST FIPS-46-3.

NOTE: ColdFusion Enterprise Edition installs RSA BSafe Crypto-J library, which provides FIPS-140 Compliant Strong Cryptography. This also includes:
* DESX: The extended Data Encryption Standard symmetric encryption algorithm.
* RC2: The RC2 block symmetric encryption algorithm defined by RFC 2268.
* RC4: The RC4 symmetric encryption algorithm.
* RC5: The RC5 encryption algorithm.
* PBE: Password-based encryption algorithm defined in PKCS #5.
* AES/GCM/NoPadding: Encryption algorithm.

NOTE: If you install additional cryptography algorithms, you can also specify any of its encryption and decryption algorithms. |
| encoding | string | No | UU | The binary encoding used to represent the data as a string. Must be the same as the algorithm used to encrypt the string.
* Base64: the Base64 algorithm, as specified by IETF RFC 2045.
* Hex: the characters A-F and 0-9 represent the hexadecimal byte values.
* UU: the UNIX standard UUEncode algorithm (default).

NOTE: If you specify this parameter, you must also specify the `algorithm` parameter. |
| iv | binary | No |  | THIS PARAMETER IS MUTUALLY EXCLUSIVE WITH `SALT`.

Specify this parameter to adjust ColdFusion encryption to match the details of other encryption software.
* For Block Encryption Algorithms: This is the binary Initialization Vector value to use with the algorithm. The algorithm must contain a Feedback Mode other than ECB. This must be a binary value that is exactly the same size as the algorithm block size.
NOTE: If you specify this parameter, you must also specify the `algorithm` parameter. |
| salt | binary | No |  | THIS PARAMETER IS MUTUALLY EXCLUSIVE WITH `IV`.

Specify this parameter to adjust ColdFusion encryption to match the details of other encryption software.
* For Password Based Encryption Algorithms: This is the binary Salt value to transform the password into a key.
NOTE: If you specify this parameter, you must also specify the `algorithm` parameter. |
| iterations | numeric | No | 0 | The number of iterations to transform the password into a binary key. Specify this parameter to adjust ColdFusion encryption to match the details of other encryption software.

NOTE: If you specify this parameter, you must also specify the `algorithm` parameter with a Password Based Encryption (PBE) algorithm.
NOTE: This parameter is used with the `salt` parameter. Do not specify this parameter for Block Encryption Algorithms.
NOTE: You must use the same value to encrypt and decrypt the data. |

## Encrypt and Decrypt a Secret

Generate an AES 128 bit key and then use it to encrypt and decrypt a secret.

```javascript
ex={};
ex.key = generateSecretKey("AES");
ex.secret = "top secret";
ex.encrypted=encrypt(ex.secret, ex.key, "AES", "Base64");
ex.decrypted=decrypt(ex.encrypted, ex.key, "AES", "Base64");
writeDump(ex);
```
