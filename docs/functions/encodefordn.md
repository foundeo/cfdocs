# encodeForDN

Encodes the given string for safe output in LDAP Distinguished Names (DN). Intended to prevent LDAP Injection.

```javascript
encodeForDN( string [,canonicalize]);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | String to encode. |
| canonicalize | boolean | No | false | If set to true, canonicalization happens before encoding. If set to false, the given input string will just be encoded. The default value for canonicalize is false. 
When this parameter is not specified, canonicalization will not happen. By default, when canonicalization is performed, both mixed and multiple encodings will be allowed. 
To use any other combinations you should canonicalize using canonicalize method and then do encoding. |

## Simple encodeForDN Example

```javascript
encodeForDN("x,y")
```

### Expected Result: x\,y
