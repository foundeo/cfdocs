# lsDateTimeFormat

 Formats date and time values using locale-specific date and time formatting conventions.

```javascript
lsDateTimeFormat(date [, mask, locale, [timeZone]]);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | A date/time object, in the range 100 AD-9999 AD. |
| mask | string | No |  | Mask that has to be used for formatting. |
| locale | string | No |  | Locale to use instead of the locale of the page when processing the function. |
| timeZone | string | No |  | The time-zone information. You can specify in either of the following formats. Abbreviation and Full Name. |

## Mask = Short Example

```javascript
lsDateTimeFormat("2015-04-11 19:02", "short")
```
