# verifyBCryptHash

This function compares a plaintext entry to the hashed string.
NOTE 1:Hashing is one-way, so you can't "decrypt" a hashed value. You have to hash the value you want to check and then compare that to the saved hash.
NOTE 2: The version and rounds don't need to be specified because they are included at the beginning of the hashed string.

```javascript
verifyBCryptHash(plaintext,hashedstring);
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| plaintext | string | Yes |  | The unhashed string to compare. |
| hashedstring | string | Yes |  | The hashed string to compare. |

## Example of Verifying the BCrypt Hash

This is an example of using the function to check against a hashed value.

```javascript
secretMsg="$2a$10$.jQX1KnwPzhvVet0vEENnOlO8C70oM8GQhu0MQnCgcIlWhguWb3q.";
checkMe="My voice is my passport. Verify me."
writeOutput(verifyBCryptHash(checkMe,secretMsg);
```

### Expected Result: YES

## Example of Verifying the BCrypt Hash With Options Set On Hash

This is an example of using the function to check against a hashed value when the options were previously set.

```javascript
secretMsg="$2b$05$Cf4c5OFks8s8QKrByuEA7OHQDKSKPs5217L0H1DowfFLY3RLbFi4a";
checkMe="Setec Astronomy"
writeOutput(verifyBCryptHash(checkMe,secretMsg));
```

### Expected Result: YES
