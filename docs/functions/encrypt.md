# encrypt

 Encrypts a string, using a symmetric key-based algorithm, in which the same key is used to encrypt and decrypt a string. The security of the encrypted string depends on maintaining the secrecy of the key, and the algorithm choice. Algorithm support is determined by the installed default JCE provider in Lucee or ColdFusion Standard. On ColdFusion Enterprise the algorithms are provided by the FIPS certified RSA BSafe Crypto-J JCE provider.

```javascript
encrypt(string, key [, algorithm [, encoding] [, iv | salt [, iterations]]])
```

```javascript
returns string
```
