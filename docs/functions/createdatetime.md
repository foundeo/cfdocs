# createDateTime

Creates a date-time object.

```javascript
createDateTime(year, month, day, hour, minute, second)
```

```javascript
returns date
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| year | numeric | Yes |  | Integer in the range 0-9999. When in the range 0-29, year is converted to 2000-2029. When in the range 30-99, year is converted to 1930-1999. You cannot specify dates before AD 100. |
| month | numeric | Yes | 1 | Numeric month of the year (1-12). |
| day | numeric | Yes | 1 | Day of the month. |
| hour | numeric | Yes | 0 | Hour of the day in 24-hour notation (0-23). |
| minute | numeric | Yes | 0 | Minute within the hour. |
| second | numeric | Yes | 0 | Second within the minute. |
| millisecond | numeric | No | 0 | CF2021+ or Lucee4.5+ Only |
| timezone | numeric | No |  | Lucee4.5+ |

## Tag Syntax

```javascript
<cfset yourDate = createDateTime("2015", "12", "09", "6", "20", "34")>
<cfdump var="#yourDate#" />
```
