# generateSCryptHash

It is a salted password-hashing cryptographic function that takes an input and hashes it into a fixed size output.
NOTE: This function is less secure than BCrypt.

```javascript
generateSCryptHash(plaintext,options);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| plaintext | string | Yes |  | The input string to hash. |
| options | struct | No | {"memorycost":8,"CpuCost":16348,"Parallel":1,"KeyLength":32,"saltLength":8} | A struct containing the optional values:<br />- memorycost - Default is 8.<br />- CpuCost - CPU cost of the algorithm (as defined in scrypt, this is `N`) that must be a power of 2 and greater than 1. Default is currently 16,348 or 2^14.<br />- Parallel - the parallelization of the algorithm (as defined in scrypt, this is `P`). Default is currently 1.<br />- Keylength - key length for the algorithm (as defined in scrypt, this is `dkLen`). Default is currently 32.<br />- saltLength - length of the salt to use. Default is 8. |

## Example of SCrypt Hashing - No Options

This is an example of using the function with no options.

```javascript
secretMsg=generateSCryptHash("My voice is my passport. Verify me.");
writeOutput(secretMsg)
```

### Expected Result: $e0801$BEJ9Ob8ZvoY=$LpQ79jMomeePrvBjcWRl3SrVf69962Ztn4WV/Sse4jg=

## Example of SCrypt Hashing - With Options

This is an example of using the function with options specified.

```javascript
secretMsg=generateBCryptHash("My voice is my passport. Verify me.",{"memorycost":4,"CpuCost":4096,"Parallel":1,"KeyLength":28,"saltLength":10});
writeOutput(secretMsg)
```

### Expected Result: $c0401$6TTkF3GRLGrHAw==$NGPASIOKsgNLDOZPyTvn9rrSW3F+IkHLlPWevQ==
