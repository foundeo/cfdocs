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
| dayOfWeek | numeric | Yes |  | Only values from 1 to 7 are valid.
Week starting with 1 for Sunday and ends with 7 for Saturday:
	- 1 = Sunday 
	- 2 = Monday 
	- 3 = Tuesday 
	- 4 = Wednesday 
	- 5 = Thursday 
	- 6 = Friday 
	- 7 = Saturday |
| locale | string | No | Default JVM Locale | Locale to use instead of the default JVM locale. |

## Get Sunday

```javascript
dayOfWeekAsString(1)
```

### Expected Result: Sunday
