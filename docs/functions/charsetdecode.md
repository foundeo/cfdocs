# charsetDecode

Converts a string to a binary representation.

```javascript
charsetDecode(string, encoding)
```

```javascript
returns binary
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| string | string | Yes |  | A string containing data to encode in binary format. |  |
| encoding | string | Yes |  | A string specifying encoding of the input data. | /Users/garethedwards/development/github/cfdocs/docs/functions/charsetdecode.md|utf-16 |

## Decode a string using utf-8 back into binary encoding of the string

Use charsetDecode to decode with utf-8

```javascript
charsetDecode('string','utf-8');
```

### Expected Result: [BINARY]

## Decode a string using us-ascii back into binary encoding of the string

Use charsetDecode to decode with us-ascii

```javascript
charsetDecode('string','us-ascii');
```

### Expected Result: [BINARY]
