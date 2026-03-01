# charsetEncode

Uses the specified encoding to convert binary data to a string.

```javascript
charsetEncode(binaryData, encoding)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| binaryData | binary | Yes |  | A variable containing binary data to decode into text. |  |
| encoding | string | Yes |  | The character encoding that was used to encode the string into binary format. | /Users/garethedwards/development/github/cfdocs/docs/functions/charsetencode.md|utf-16 |

## Encode a string using utf-8 back into binary encoding of the string

Use charsetEncode to Encode with utf-8

```javascript
s=charsetDecode('string','utf-8');
 charsetEncode(s,'utf-8');
```

### Expected Result: string

## Encode a string using us-ascii back into binary encoding of the string

Use charsetEncode to Encode with us-ascii

```javascript
s=charsetDecode('string','us-ascii');
 charsetEncode(s,'us-ascii');
```

### Expected Result: string
