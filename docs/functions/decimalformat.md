# decimalFormat

Converts a number to a decimal-formatted string.

```javascript
decimalFormat(number)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  |  |

## Formatting examples

```javascript
formattedInt = decimalFormat(123); // 123.00
writeOutput(formattedInt & "<br>");

formattedWithSeparators = decimalFormat(1000000); // 1,000,000.00
writeOutput(formattedWithSeparators & "<br>");

formattedDecimal = decimalFormat(987.15); // 987.15
writeOutput(formattedDecimal & "<br>");

formattedRoundedUp = decimalFormat(456.789); // 456.79 - rounds up
writeOutput(formattedRoundedUp & "<br>");
```
