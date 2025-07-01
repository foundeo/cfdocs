# verifySCryptHash

This function compares a plaintext entry to the hashed string.
NOTE 1:Hashing is one-way, so you can't "decrypt" a hashed value. You have to hash the value you want to check and then compare that to the saved hash.

```javascript
verifySCryptHash(plaintext,hashedstring);
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| plaintext | string | Yes |  | The unhashed string to compare. |
| hashedString | string | Yes |  | The hashed string to compare. |
| options | struct | No | {"memorycost":8,"CpuCost":16348,"Parallel":1,"KeyLength":32,"saltLength":8} | A struct containing the optional values:
--memorycost - Default is 8.
--CpuCost - CPU cost of the algorithm (as defined in scrypt, this is `N`) that must be a power of 2 and greater than 1. Default is currently 16,348 or 2^14.
--Parallel - the parallelization of the algorithm (as defined in scrypt, this is `P`). Default is currently 1.
--Keylength - key length for the algorithm (as defined in scrypt, this is `dkLen`). Default is currently 32.
--saltLength - length of the salt to use. Default is 8. |

## Example of Verifying the SCrypt Hash

This is an example of using the function to check against a hashed value.

```javascript
secretMsg="$e0801$21aGCy86deU=$Yp2UaxwONLNgp0kUaBwuXAqsnFaAjOAUislNejW6Bjs=";
checkMe="My voice is my passport. Verify me."
writeOutput(verifySCryptHash(checkMe,secretMsg);
```

### Expected Result: YES

## Example of Verifying the SCrypt Hash With Options Set On Hash

This is an example of using the function to check against a hashed value when the options were previously set.

```javascript
secretMsg="$c0401$Eg7sS/HsxhHTWA==$sejraZ7kZZ82adEz8uHHUz51Hk36YkkJ4KZk3w==";
checkMe="Setec Astronomy"
writeOutput(verifySCryptHash(checkMe,secretMsg);
```

### Expected Result: YES
