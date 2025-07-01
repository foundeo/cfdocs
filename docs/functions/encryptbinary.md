# encryptBinary

Encrypts binary data using a specific algorithm and encoding method.

```javascript
encryptBinary(binaryData, key [, algorithm [, encoding] [, iv | salt [, iterations]]])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| binaryData | any | Yes |  | Binary data to encrypt. |
| key | string | Yes |  | Key or seed used to encrypt the string.<br />* For the `CFMX_COMPAT` algorithm, any combination of any number of characters; used as a seed used to generate a 32-bit encryption key.<br />* For all other algorithms, a key in the format used by the algorithm. For these algorithms, use the `GenerateSecretKey` function to generate the key. |
| algorithm | string | No | CFMX_COMPAT | The algorithm to use to encrypt the string. <br />ColdFusion Standard Edition installs the following algorithms:<br />* CFMX_COMPAT: the algorithm used in ColdFusion MX and prior releases. This algorithm is the least secure option (default).<br />* AES: the Advanced Encryption Standard specified by the National Institute of Standards and Technology (NIST) FIPS-197.<br />* BLOWFISH: the Blowfish algorithm defined by Bruce Schneier.<br />* DES: the Data Encryption Standard algorithm defined by NIST FIPS-46-3.<br />* DESEDE: the "Triple DES" algorithm defined by NIST FIPS-46-3.<br /><br />NOTE: ColdFusion Enterprise Edition installs RSA BSafe Crypto-J library, which provides FIPS-140 Compliant Strong Cryptography. This also includes:<br />* DESX: The extended Data Encryption Standard symmetric encryption algorithm.<br />* RC2: The RC2 block symmetric encryption algorithm defined by RFC 2268.<br />* RC4: The RC4 symmetric encryption algorithm.<br />* RC5: The RC5 encryption algorithm.<br />* PBE: Password-based encryption algorithm defined in PKCS #5.<br />* AES/GCM/NoPadding: Encryption algorithm. <br />NOTE: If you install additional cryptography algorithms, you can also specify any of its encryption and decryption algorithms. |
| iv | binary | No |  | THIS PARAMETER IS MUTUALLY EXCLUSIVE WITH `salt`.<br /><br />Specify this parameter to adjust ColdFusion encryption to match the details of other encryption software.<br />* For Block Encryption Algorithms: This is the binary Initialization Vector value to use with the algorithm. The algorithm must contain a Feedback Mode other than ECB. This must be a binary value that is exactly the same size as the algorithm block size.<br />NOTE: If you specify this parameter, you must also specify the `algorithm` parameter. |
| salt | binary | No |  | THIS PARAMETER IS MUTUALLY EXCLUSIVE WITH `iv`.<br /><br />Specify this parameter to adjust ColdFusion encryption to match the details of other encryption software.<br />* For Password Based Encryption Algorithms: This is the binary Salt value to transform the password into a key.<br />NOTE: If you specify this parameter, you must also specify the `algorithm` parameter. |
| iterations | numeric | No | 0 | The number of iterations to transform the password into a binary key. Specify this parameter to adjust ColdFusion encryption to match the details of other encryption software.<br /><br />NOTE: If you specify this parameter, you must also specify the `algorithm` parameter with a Password Based Encryption (PBE) algorithm.<br />NOTE: This parameter is used with the `salt` parameter. Do not specify this parameter for Block Encryption Algorithms.<br />NOTE: You must use the same value to encrypt and decrypt the data. |
