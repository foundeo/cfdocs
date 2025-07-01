# binaryEncode

Converts binary data to a string.

```javascript
binaryEncode(binaryData, encoding)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| binaryData | binary | Yes |  | A string containing encoded binary data. |  |
| encoding | string | Yes |  | A string specifying the encoding method to use to represent<br /> the data; one of the following:<br /> - hex: use characters 0-9 and A-F represent the hexadecimal value<br /> of each byte; for example, 3A.<br /> - UU: use the UNIX UUencode algorithm to convert the data.<br /> - base64: use the Base64 algorithm to convert the data.<br /> - base64URL: modification of the main Base64 standard, which uses the encoding result as filename or URL address. | /Users/garethedwards/development/github/cfdocs/docs/functions/binaryencode.md|base64URL |

## Encode a binary string back to a string using hex

use binaryEncode to Encode with hex

```javascript
s = binaryDecode('737472696E67','hex');
 binaryEncode(s,'hex');
```

### Expected Result: 737472696E67

## Encode a binary using UNIX UUencode (UU) back into string

use binaryEncode to Encode with UNIX UUencode (UU)

```javascript
s = binaryDecode('&<W1R:6YG','UU');
 binaryEncode(s,'UU');
```

### Expected Result: string

## Encode a binary using base64 back into a string

use binaryEncode to Encode with base64

```javascript
s = binaryDecode('&<W1R:6YG','base64');
 binaryEncode(s,'base64');
```

### Expected Result: string
