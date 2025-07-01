# dollarFormat

Formats a string in U.S. Dollar format. For other currencies, use `LSCurrencyFormat` or `LSEuroCurrencyFormat`. The function will return a number as a string, formatted with two decimal places, thousands separator and dollar sign. If the number is negative, the return value is enclosed in parentheses. If number is an empty string, the function returns zero.

```javascript
dollarFormat(number)
```

```javascript
returns string
```
