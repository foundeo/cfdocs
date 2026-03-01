# encodeForJavaScript

Encodes the input string for safe output within JavaScript code. The encoding in meant to mitigate Cross Site Scripting (XSS) attacks. This function can provide more protection from XSS than JSStringFormat does.

```javascript
encodeForJavaScript(string [, canonicalize])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | A string to encode. |
| canonicalize | boolean | No |  | When true runs the canonicalize function against the input before encoding. |
| canonicalize | boolean | No | false | If set to true, canonicalization happens before encoding. If set to false, the given input string will just be encoded. <br />When this parameter is not specified, canonicalization will not happen. By default, when canonicalization is performed, both mixed and multiple encodings will be allowed. <br />To use any other combinations you should canonicalize using `canonicalize` method and then do encoding. |

## Simple encodeForJavaScript Example

```javascript
encodeForJavaScript("foo()")
```

### Expected Result: foo\x28\x29
