# encodeForLDAP

Encodes the input string for safe output in LDAP queries to prevent Cross Site Scripting attacks.

```javascript
encodeForLDAP(string [,canonicalize]);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | String to encode. |
| canonicalize | boolean | No | false | If set to true, canonicalization happens before encoding. If set to false, the given input string will just be encoded. 
When this parameter is not specified, canonicalization will not happen. By default, when canonicalization is performed, both mixed and multiple encodings will be allowed. 
To use any other combinations you should canonicalize using canonicalize method and then do encoding. |

## Script Syntax

```javascript
encodeForLDAP("pete) (| (password = * ) )")
```

### Expected Result: pete\29 \28| \28password = \2a \29 \29
