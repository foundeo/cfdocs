# encodeForHTMLAttribute

Encodes the input string for safe output in the attribute value of an HTML attribute, such as table width or image height. The encoding is meant to mitigate Cross Site Scripting (XSS) attacks.

```javascript
encodeForHTMLAttribute(string [, canonicalize])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | A string to encode. |
| canonicalize | boolean | No | false | If set to true, canonicalization happens before encoding. If set to false, the given input string will just be encoded. The default value for canonicalize is false. 
When this parameter is not specified, canonicalization will not happen. By default, when canonicalization is performed, both mixed and multiple encodings will be allowed. 
To use any other combinations you should canonicalize using canonicalize method and then do encoding. |

## Simple encodeForHTMLAttribute Example

Shows how and where encodeForHTMLAttribute would be used.

```javascript
<cfoutput><div title="#encodeForHTMLAttribute("<test>")#"></cfoutput>
```

### Expected Result: <div title="&lt;test&gt;">
