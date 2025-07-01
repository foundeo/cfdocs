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
