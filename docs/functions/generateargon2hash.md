# generateArgon2Hash

Generates and returns an Argon2 hash of the input.

```javascript
generateArgon2Hash(string [, variant] [, parallelismFactor] [, memoryCost] [, iterations])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| input | string | Yes |  |  |
| variant | string | No | Argon2i |  |
| parallelismFactor | numeric | No | 1 | Degrees of parallelism, a number between 1 and 10. |
| memoryCost | numeric | No | 8 | A number between 8 and 100000. |
| iterations | numeric | No | 1 | A number between 1 and 20. |

## Generate and verify an Argon2 hash

```javascript
hashedValue = GenerateArgon2Hash("CFDocs.org");
dump(hashedValue);
check = Argon2CheckHash( "CFDocs.org", hashedValue);
dump(check);
```
