# encodeFor

Encodes a given string for safe output in the specified context. The encoding is meant to mitigate Cross Site Scripting (XSS) attacks.

```javascript
encodeFor(type, value)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | Yes |  | The context of the encoding to perform. |
| value | string | Yes |  | The value to encode. |

## Simple encodeFor Example

Pass in a tag and HTML encode the result.

```javascript
encodeFor("html","<br>")
```

### Expected Result: &lt;br&gt;
