# generateSecretKey

Generates a secure random key value for use in the encrypt and decrypt functions.

```javascript
generateSecretKey([algorithm] [,keysize])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| algorithm | string | No |  | The encryption algorithm used to generate the key. <br />NOTE: You cannot use `generateSecretKey()` to create a key for the `CFMX_COMPAT` default algorithm in `encrypt()` and `decrypt()` functions. | /Users/garethedwards/development/github/cfdocs/docs/functions/generatesecretkey.md|DESEDE |
| keysize | numeric | No | 128 | Number of bits requested in the key for the specified algorithm (when allowed by JDK). | /Users/garethedwards/development/github/cfdocs/docs/functions/generatesecretkey.md|512 |

## Generate an AES 128 bit Key

Generate an AES key and use it to encrypt and decrypt a secret.

```javascript
ex={};
ex.key = generateSecretKey("AES");
ex.secret = "top secret";
ex.encrypted=encrypt(ex.secret, ex.key, "AES", "Base64");
ex.decrypted=decrypt(ex.encrypted, ex.key, "AES", "Base64");
writeDump(ex);
```
