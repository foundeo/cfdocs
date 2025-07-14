# hmac

Creates a keyed-hash message authentication code (HMAC), which can be used to verify authenticity and integrity of a message by two parties that share the key.

```javascript
hmac(message, key [, algorithm] [, encoding] )
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| message | any | Yes |  | The message or data to authenticate. This can be a String or a byte array. |  |
| key | any | Yes |  | The secret key. The key can be a String or byte array. |  |
| algorithm | string | No | HMACMD5 | An algorithm supported by the java crypto provider. | /Users/garethedwards/development/github/cfdocs/docs/functions/hmac.md|HMACSHA512 |
| encoding | string | No | utf-8 | The character encoding to use when converting the message to bytes. Must be a character encoding name recognized by the Java runtime. | /Users/garethedwards/development/github/cfdocs/docs/functions/hmac.md|utf-16 |

## Example HMAC Using HMACSHA256

```javascript
hmac("msg", "secret", "HMACSHA256")
```

### Expected Result: FE4F9C418F683F034F6AF90D1DD5B86AC0355DD96332C59CC74598D0736107F6
