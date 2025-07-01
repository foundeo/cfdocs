# hash40

Converts a variable-length string to a 32-byte, hexadecimal string, using the MD5 algorithm.
Note: It is not possible to convert the hash result back to the source string.

```javascript
hash40(input [, algorithm] [, encoding] [, numIterations])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| input | any | Yes |  | String for hashing |
| algorithm | string | No |  | The algorithm to use to hash the string. Supported are the following algorithms:<br />- CFMX_COMPAT: generating a hash string using classic CFML algorithm.<br />- MD5: (default) Generates a 32-character, hexadecimal string, using the MD5 algorithm.<br />- SHA: Generates a 28-character string using the Secure Hash Standard SHA-1 algorithm specified by Nation Institute of Standards and Technology (NIST) FIPS-180-2.<br />- SHA-256: Generates a 44-character string using the SHA-256 algorithm specified by FIPS-180-2.<br />- SHA-384: Generates a 64-character string using the SHA-384 algorithm specified by FIPS-180-2.<br />- SHA-512: Generates an 88-character string using the SHA-1 algorithm specified by FIPS-180-2. |
| encoding | string | No |  | Encoding which will be used by the hash algorithm |
| numIterations | numeric | No | 1 | number of iterations |
