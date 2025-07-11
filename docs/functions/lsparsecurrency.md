# lsParseCurrency

Converts a locale-specific currency string into a formatted number. Attempts conversion by comparing the string with each the three supported currency formats (none, local, international) and using the first that matches.

```javascript
lsParseCurrency(String)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  |  |

## lsParseCurrency Example

LSParseCurrency converts a locale-specific currency string to a number.

```javascript
lsParseCurrency("$120.50")
```

### Expected Result: 120.5
