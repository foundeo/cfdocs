# reEscape

Escapes regular expression control characters within a string.

```javascript
reEscape(string);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The string you that to escape. |

## Example of reEscape

```javascript
reEscape('*.{}[]exam?ple')
```

### Expected Result: \*\.\{\}\[\]exam\?ple
