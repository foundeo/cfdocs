# lsParseNumber

Converts a string that is a valid numeric representation in the current locale into a formatted number.

```javascript
lsParseNumber(String [, locale])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  |  |
| locale | string | No |  | Locale to use instead of the locale of the page when processing the function |

## Simple example usage

Converts number to string and back"

```javascript
str = numberFormat(42,'000.00');
num = lsParseNumber(str);
writeOutput(str&' → '&num);
```

### Expected Result: 042.00 → 42
