# verifyEncryptedJWT

Verify an encrypted JWT (JSON Web Encryption - JWE)

```javascript
verifyEncryptedJWT(token, encryptOptions, config)
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| token | string | Yes |  | An encrypted JWT |
| encryptOptions | struct | Yes |  | The encryption uses the key information from the given struct |
| config | struct | Yes |  | A struct with the following values:
- clockSkew : time in seconds to account for difference between the systems generating and processing the JWT
- returntype : plaintext/struct |
