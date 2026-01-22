# createSignedJWT

Create a signed JWT (JSON Web Signature - JWS)

```javascript
createSignedJWT(payload, signOptions, config)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| payload | any | Yes |  | The payload as a string or struct. |
| signOptions | struct | Yes |  | Create the signature using the key information from the given struct |
| config | struct | Yes |  | A struct with the following values:<br />- algorithm : algorithm used for signing.<br />- generateIssuedAt : boolean to indicate whether to generate "iat" field<br />- generateJti : boolean to indicate whether to generate "jti" field |
