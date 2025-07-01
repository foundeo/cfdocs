# encodeForHTML

Encodes the input string for safe output in the body of a HTML tag. The encoding in meant to mitigate Cross Site Scripting (XSS) attacks. This function can provide more protection from XSS than the `HTMLEditFormat` or `XMLFormat` functions do.

```javascript
encodeForHTML(string [, canonicalize])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | A string to encode |
| canonicalize | boolean | No | false | If set to true, canonicalization happens before encoding. If set to false, the given input string will just be encoded. The default value for canonicalize is false. 
When this parameter is not specified, canonicalization will not happen. By default, when canonicalization is performed, both mixed and multiple encodings will be allowed. 
To use any other combinations you should canonicalize using canonicalize method and then do encoding. |

## Simple encodeForHTML Example

Pass in a tag and HTML encode the result.

```javascript
encodeForHTML("<test>")
```

### Expected Result: &lt;test&gt;
