# createEncryptedJWT

Create an encrypted JWT (JSON Web Encryption - JWE)

```javascript
createEncryptedJWT(payload, encryptOptions, config)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| payload | any | Yes |  | The payload as a string or struct. |
| encryptOptions | struct | Yes |  | Encrypt using the key information from given struct |
| config | struct | Yes |  | A struct with the following values:
- algorithm : algorithm used for signing.
- encryption : algorithm used for encrypting the payload.
- generateIssuedAt : boolean to indicate whether to generate "iat" field
- generateJti : boolean to indicate whether to generate "jti" field |
