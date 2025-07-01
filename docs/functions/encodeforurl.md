# encodeForURL

Encodes the input string for safe output in URLs to prevent Cross Site Scripting attacks.

```javascript
encodeForURL(string [,canonicalize]);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The string to encode. |
| canonicalize | boolean | No | false | If set to true, canonicalization happens before encoding. If set to false, the given input string will just be encoded and canonicalization will not happen. By default, when canonicalization is performed, both mixed and multiple encodings will be allowed. To use any other combinations you should canonicalize using canonicalize method and then do encoding. |

## URL Encode a value

```javascript
encodeForURL("<tag>")
```

### Expected Result: %3Ctag%3E

## URL Encode a value with escaped HTML entities

```javascript
encodeForURL("&lt;tag&gt;",true)
```

### Expected Result: %3Ctag%3E

## Example Usage

```javascript
<cfset formula = "5+3=8">
<cfoutput>http://example.com/math?formula=#encodeForURL(formula)#</cfoutput>
```

### Expected Result: http://example.com/math?formula=5%2B3%3D8
