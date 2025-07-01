# getNumericDate

Returns a real number whose integer part represents the number of days since the EPOCH and whose fractional part represents the time value expressed in hours then divided by 24. NOTE: Lucee (and ACF) uses 12/30/1899 00:00:00 as it's epoch time. See links below.

```javascript
getNumericDate(arg1)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| arg1 | any | Yes |  | A datetime object or a date-parsable String. |

## Convert a date string to a numeric date - Tag Syntax

This numeric date represents the number of days between December 30, 1899 and January 1, 2008.

```javascript
getNumericDate('2018-01-01')
```

### Expected Result: 43101
