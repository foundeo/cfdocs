# generateBCryptHash

It is a password-hashing cryptographic function that takes an input and hashes it into a fixed size output./nNOTE: BCrypt input is limited to 72 bytes.

```javascript
generateBCryptHash(plaintext,options);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| plaintext | string | Yes |  | The input string to hash. |  |
| options | struct | No | {"version":"$2a","rounds":10} | A struct containing the optional values:
--version - Version of BCrypt hash to generate ($2a,$2y or $2b). (Default is "$2a". The most current version is "$2b")
--rounds - Number of rounds to run the hash functions. (Default is 10.) | /Users/garethedwards/development/github/cfdocs/docs/functions/generatebcrypthash.md|rounds |

## Example of BCrypt Hashing - No Options

This is an example of using the function with no options.

```javascript
secretMsg=generateBCryptHash("My voice is my passport. Verify me.");writeDump(secretMsg)
```

### Expected Result: $2a$10$.jQX1KnwPzhvVet0vEENnOlO8C70oM8GQhu0MQnCgcIlWhguWb3q.

## Example of BCrypt Hashing - With Version Option

This is an example of using the function with optional version specified.

```javascript
secretMsg=generateBCryptHash("My voice is my passport. Verify me.",{"version":"$2b"});
writeDump(secretMsg)
```

### Expected Result: $2b$10$wkfNE0B2hP/GMqQPWRvTte87F/PlEZwetaDPnVwW5OjBRAPiGKZp.

## Example of BCrypt Hashing - With Rounds Option

This is an example of using the function with optional rounds specified.

```javascript
secretMsg=generateBCryptHash("Setec Astronomy",{"rounds":15});writeDump(secretMsg)
```

### Expected Result: $2a$15$yBUewN8dYFd9QawytI5SO.MIq0hO65TXEoVyUAZRlK.oTHZ4Dwa0i
