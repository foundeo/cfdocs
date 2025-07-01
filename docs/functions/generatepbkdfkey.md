# generatePBKDFKey

CFML implementation of Password-Based Key-Derivation Function (PBKDF)

```javascript
generatePBKDFKey(algorithm, passphrase, salt, iterations, keySize);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| algorithm | string | Yes |  | Hashing algorithm used for generating key |
| passphrase | string | Yes |  | Passphrase used for the key. KEEP THIS SECRET. |
| salt | string | Yes |  | A string which will be added to the passphrase before encryption.
 The standard recommends a salt length of at least 64 bits (8 characters). The salt needs to be generated using a pseudo-random number generator (e.g. SHA1PRNG) |
| iterations | numeric | Yes |  | The number of PBKDEF iterations to perform. A minimum recommended value is 1000 |
| keySize | numeric | Yes |  | The length in bits of the key to generate |

## Example PBKDF2 With HMAC SHA1

The `PBKDF2WithHmacSHA1` algorithm will work on older JVMs, or older versions of CF

```javascript
generatePBKDFKey("PBKDF2WithHmacSHA1", "secret", "salty", 5000, 128)
```

### Expected Result: Y0MCpCe3zb0CNJvyXNUWEQ==

## More complex encryption example

```javascript
// some variables
password = "top_secret";
dataToEncrypt= "the most closely guarded secret";
encryptionAlgorithm = "AES";
keysize = 128;
algorithmVersion = 512;
PBKDFalgorithm = 'PBKDF2WithHmacSHA' & algorithmVersion;
    
// Generate key as recommended in docs
length = keysize / 8;
multiplicator = 10 ^ length;
salt = Round(Randomize(5,'SHA1PRNG') * multiplicator);
    
// The magic happens here
PBKDFKey = GeneratePBKDFKey(PBKDFalgorithm, password, salt, algorithmVersion, keysize);
encryptedData = encrypt(dataToEncrypt, PBKDFKey, encryptionAlgorithm, "BASE64"); 
decryptedData = decrypt(encryptedData, PBKDFKey, encryptionAlgorithm, "BASE64");
    
//Output
writeOutput("<b>Generated PBKDFKey (Base 64)</b>: " & PBKDFKey);
writeOutput("<br /><b>Data After Encryption</b>: " & encryptedData);
writeOutput("<br /><b>Data After Decryption</b>: " & decryptedData);
```
