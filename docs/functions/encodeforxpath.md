# encodeForXPath

Returns an encoded string for safe use in an XPATH query.

```javascript
encodeForXPath(string [,canonicalize]);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The string to encode. |
| canonicalize | boolean | No |  | If set to true, canonicalization happens before encoding.
If set to false, the given input string will just be encoded. 
When this parameter is not specified, canonicalization will not happen.

By default, when canonicalization is performed, both mixed and multiple encodings will be allowed. To use any other combinations you should canonicalize using canonicalize method and then do encoding. |

## Tag Syntax

```javascript
encodeForXPath("'or 1=1",false)
```

### Expected Result: &#x27;or 1&#x3d;1
