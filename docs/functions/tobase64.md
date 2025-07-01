# toBase64

 Calculates the Base64 representation of a string or binary
 object. The Base64 format uses printable characters, allowing
 binary data to be sent in forms and e-mail, and stored in a
 database or file.

```javascript
toBase64(string_or_object [, encoding])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| string_or_object | any | Yes |  | A string, the name of a string, or a binary object. |  |
| encoding | string | No |  | For a string, defines how characters are represented in a
 byte array. | /Users/garethedwards/development/github/cfdocs/docs/functions/tobase64.md|utf-16 |

## String Example

Converts a String to a Base64-String.

```javascript
ToBase64("Test String")
```

### Expected Result: VGVzdCBTdHJpbmc=

## Binary Object Example

Converts an Image Binary to a Base64-String.

```javascript
ToBase64(ToBinary(ImageRead("example.jpg")))
```
