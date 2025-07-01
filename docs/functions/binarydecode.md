# binaryDecode

Converts a string to a binary object. Used to convert
 binary data that has been encoded into string format
 back into binary data.

```javascript
binaryDecode(string, encoding)
```

```javascript
returns binary
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| string | string | Yes |  | A string containing encoded binary data. |  |
| encoding | string | Yes |  | A string specifying the algorithm used to encode the original
 binary data into a string; must be one of the following:
 - hex: characters 0-9 and A-F represent the hexadecimal value
 of each byte; for example, 3A.
 - UU: data is encoded using the UNIX UUencode algorithm.
 - base64: data is encoded using the Base64 algorithm.
 - base64URL: modification of the main Base64 standard, which uses the encoding result as filename or URL address. | /Users/garethedwards/development/github/cfdocs/docs/functions/binarydecode.md|base64URL |

## Decode a string using hex back into binary encoding of the string

use binaryDecode to decode with hex

```javascript
binaryDecode('F62B','hex');
```

### Expected Result: [BINARY]

## Decode a string using UNIX UUencode (UU) back into binary encoding of the string

use binaryDecode to decode with UNIX UUencode (UU)

```javascript
binaryDecode('&<W1R:6YG','UU');
```

### Expected Result: [BINARY]

## Decode a string using base64 back into binary encoding of the string

use binaryDecode to decode with base64

```javascript
binaryDecode('U3RyaW5n','base64');
```

### Expected Result: [BINARY]

## Create a byte array with 16 bytes

Each byte in the array is set to 0

```javascript
arrayLen(binaryDecode('00000000000000000000000000000000','hex'))
```

### Expected Result: 16
