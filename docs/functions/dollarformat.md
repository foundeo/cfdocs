# dollarFormat

Formats a string in U.S. Dollar format. For other currencies, use `LSCurrencyFormat` or `LSEuroCurrencyFormat`. The function will return a number as a string, formatted with two decimal places, thousands separator and dollar sign. If the number is negative, the return value is enclosed in parentheses. If number is an empty string, the function returns zero.

```javascript
dollarFormat(number)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  | The number to format. |

## Format Positive Numbers

Dollar Format is about $, commas, and 2 decimal places

```javascript
dollarFormat(1236598.2)
```

### Expected Result: $1,236,598.20

## Format Negative Numbers

Negative numbers appear with parentheses. May cause issues due to LDEV-3743

```javascript
dollarFormat(-11.34)
```

### Expected Result: ($11.34)
