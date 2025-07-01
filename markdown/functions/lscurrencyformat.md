# lsCurrencyFormat

Formats a number in a locale-specific currency format. For countries that use the euro, the result depends on the JVM.
 [type - quicky]
 local: the currency format and currency symbol used locally.
 - With JDK 1.3, the default for Euro Zone: local currency.
 - With JDK 1.4, the default for Euro Zone: euro.
 international: the international standard currency format
 none: the local currency format; no currency symbol

```javascript
lsCurrencyFormat(number [, type, locale])
```

```javascript
returns string
```
