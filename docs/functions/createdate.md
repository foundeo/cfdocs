# createDate

Creates a date/time object

```javascript
createDate(year, month, day)
```

```javascript
returns date
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| year | numeric | Yes |  | Integer in the range 0-9999. When in the range 0-29, year is converted to 2000-2029. When in the range 30-99, year is converted to 1930-1999. You cannot specify dates before AD 100. |
| month | numeric | Yes |  | Numeric month of the year (1-12) |
| day | numeric | Yes |  | Day of the month |

## Output timestamp from date/time object

```javascript
<cfscript>
	yourDate = createDate("2015","12","09");
	writeOutput(yourDate);
</cfscript>
```

### Expected Result: {ts '2015-12-09 00:00:00'}
