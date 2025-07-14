# hash

Converts a string into a fixed length hexadecimal string.

NOTE: The result is useful for comparison and validation, such as storing and validating a hashed password without exposing the original password.

```javascript
hash(string [, algorithm [, encoding]] [, additionalIterations])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  |  |
| algorithm | string | No | MD5 | CF7+ A supported algorithm such as MD5,SHA,SHA-256,SHA-384, or SHA-512. Of those listed SHA-512 is the strongest and generates a 128 character hex result.<br /><br />NOTE: The Enterprise Edition of ColdFusion installs the RSA BSafe Crypto-J library, which provides FIPS-140 Compliant Strong Cryptography. This includes additional algorithms. You can also install additional cryptography algorithms and use those hashing algorithms. |
| encoding | string | No | UTF-8 | CF7+ A string specifying the encoding to use when converting the string to byte data used by the hash algorithm.<br />Must be a character encoding name recognized by the Java runtime.<br /><br />NOTE: The default is specified by the value of `defaultCharset` in the `neo-runtime.xml` file, which is normally `UTF-8`. <br />NOTE: This is ignored when using the `CFMX_COMPAT` algorithm. |
| additionalIterations | numeric | No | 0 | CF10+ Iterates the number of times the hash is computed to create a more computationally intensive hash. Lucee and Adobe CF implement this differently (off by one), see compatibility notes below.<br /><br />NOTE: This parameter appears to be ignored if the `CFMX_COMPAT` default algorithm is used. |

## SHA-256 Hash Example

Returns 64 character hex result.

```javascript
hash("something", "SHA-256", "UTF-8")
```

### Expected Result: 3FC9B689459D738F8C88A3A48AA9E33542016B7A4052E001AAA536FCA74813CB

## MD5 Hash Example

MD5 is not recommended for use requiring security.

```javascript
hash("something")
```

### Expected Result: 437B930DB84B8079C2DD804A71936B5F
