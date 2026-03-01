# encodeForXML

Encodes a string for safe use within an XML tag body. Use `encodeForXMLAttribute` for variables output inside an XML attribute value.

```javascript
encodeForXML(string , [canonicalize]);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The string to encode. |
| canonicalize | boolean | No | false | If set to true, canonicalization happens before encoding. If set to false, the given input string will just be encoded. <br />When this parameter is not specified, canonicalization will not happen. By default, when canonicalization is performed, both mixed and multiple encodings will be allowed. <br />To use any other combinations you should canonicalize using canonicalize method and then do encoding. |

## Simple encodeForXML Example

Encodes the ampersand into an XML entity.

```javascript
encodeForXML("Fred & Ted")
```

### Expected Result: Fred &#x26; Ted
