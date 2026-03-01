# urlEncodedFormat

Generates a URL-encoded string. For example, it replaces spaces
 with %20, and non-alphanumeric characters with equivalent
 hexadecimal escape sequences. Passes arbitrary strings within a
 URL.

```javascript
urlEncodedFormat(String [, charset])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| String | string | Yes |  | A string or a variable that contains one |  |
| charset | string | No |  | The character encoding in which the string is encoded. | /Users/garethedwards/development/github/cfdocs/docs/functions/urlencodedformat.md|utf-16 |

## Simple urlEncodedFormat Example

It returns url encoded string.

```javascript
writeOutput(URLEncodedFormat('This is a string with special character.'));
```

### Expected Result: This%20is%20string%20with%20special%20character%2E
