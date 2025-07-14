# lsParseDateTime

Converts a string that is a valid date/time representation in the current locale into a date/time object.

```javascript
lsParseDateTime(dt_string)
```

```javascript
returns date
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| dt_string | string | Yes |  |  |

## lsParseDateTime Example

This example illustrates use of the lsParseDateTime function.

```javascript
lsParseDateTime("01/08/2011")
```

### Expected Result: {ts '2011-01-08 00:00:00'}
