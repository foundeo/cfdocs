# createTimespan

Returns a value that defines a time period, represented by a numeric (double) where 1 equals 1 day. You can add or subtract it from other date/time objects and use it with the cachedWithin attribute of cfquery.

```javascript
createTimespan(days, hours, minutes, seconds)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| days | numeric | Yes |  | The number of days ranging from 0 to 32768 |
| hours | numeric | Yes |  | The number of hours |
| minutes | numeric | Yes |  | The number of minutes |
| seconds | numeric | Yes |  | The number of seconds |

## Use of createTimespan in a cfquery

The createTimespan function is useful in the cachedwithin attribute of cfquery.

```javascript
<cfquery name = "GetParks" datasource = "cfdocexamples" cachedWithin = "#createTimespan(0, 6, 0, 0)#"> 
 SELECT PARKNAME, REGION, STATE 
 FROM Parks 
 ORDER by ParkName, State 
 </cfquery>
```

## The createTimespan function returns a numeric value

Passing 6 hours, or a quarter of a day returns a double representing 1/4

```javascript
createTimespan(0, 6, 0, 0)
```

### Expected Result: 0.25

## Adding a date and a timestamp

Instead of using dateAdd you could add a timestamp to a date object

```javascript
dateFormat( createDate(2017,1,1) + createTimespan(2,0,0,0) )
```

### Expected Result: 03-Jan-17
