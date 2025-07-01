# argon2CheckHash

Verify the Argon2 hash of an input.

```javascript
argon2CheckHash(string, hash [, variant])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| input | string | Yes |  | The string input to test against the hash. |  |
| hash | string | Yes |  | An Argon2 hash value |  |
| variant | string | No | Argon2i |  | /Users/garethedwards/development/github/cfdocs/docs/functions/argon2checkhash.md|Argon2id |

## Show a passing and failing Argon2 hash check

```javascript
hashedValue = GenerateArgon2Hash("CFDocs.org");
dump(hashedValue);
check1 = Argon2CheckHash( "CFDocs.org", hashedValue);
dump( check1 );
check2 = Argon2CheckHash( "DifferentInput", hashedValue);
dump( check2 );
```
