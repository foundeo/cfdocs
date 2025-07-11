# dayOfWeekAsString

 Determines the day of the week as a string from 1-7

```javascript
dayOfWeekAsString(dayOfWeek [, locale])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| dayOfWeek | numeric | Yes |  | Only values from 1 to 7 are valid.<br />Week starting with 1 for Sunday and ends with 7 for Saturday:<br />	- 1 = Sunday <br />	- 2 = Monday <br />	- 3 = Tuesday <br />	- 4 = Wednesday <br />	- 5 = Thursday <br />	- 6 = Friday <br />	- 7 = Saturday |
| locale | string | No | Default JVM Locale | Locale to use instead of the default JVM locale. |

## Get Sunday

```javascript
dayOfWeekAsString(1)
```

### Expected Result: Sunday
