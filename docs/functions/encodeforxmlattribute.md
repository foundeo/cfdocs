# encodeForXMLAttribute

Encodes a string for safe output within an XML attribute to prevent Cross Site Scripting attacks. Use encodeForXML when outputting a variable inside a XML tag body.

```javascript
encodeForXMLAttribute(string [,canonicalize]);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The string to encode. |
| canonicalize | boolean | No | false | If set to true, canonicalization happens before encoding. If set to false, the given input string will just be encoded. <br />When this parameter is not specified, canonicalization will not happen. By default, when canonicalization is performed, both mixed and multiple encodings will be allowed. <br />To use any other combinations you should canonicalize using canonicalize method and then do encoding. |

## Simple encodeForXMLAttribute Example

Encodes the single quote into an XML entity.

```javascript
encodeForXMLAttribute("It's for use in attribute values")
```

### Expected Result: It&#x27;s for use in attribute values
