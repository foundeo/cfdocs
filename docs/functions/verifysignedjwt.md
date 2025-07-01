# verifySignedJWT

Verify a signed JWT (JSON Web Signature - JWS)

```javascript
verifySignedJWT(token, signOptions, config)
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| token | string | Yes |  | A signed JWT |
| signOptions | struct | Yes |  | The signature uses the key information from the given struct |
| config | struct | Yes |  | A struct with the following values:
- clockSkew : time in seconds to account for difference between the systems generating and processing the JWT
- returntype : plaintext/struct |
