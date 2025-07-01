# day

 Determines the day of the month, in a date.
 The ordinal for the day of the month, ranging from 1 to 31.

```javascript
day(date)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date.day()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | Date or datetime object (100AD-9999AD).
When passing a datetime object as a string, enclose it in quotation marks. Otherwise, it is interpreted as a numeric representation of a datetime object. |

## Determines the day of the month

Uses the day function to determine the day of the month

```javascript
<cfset Date = CreateDate(2010, 09, 08)>
<cfset result = day(Date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: 8

## Day using member syntax

Returns the day from a datetime object

```javascript
createDate( 2022, 10, 1 ).day();
```

### Expected Result: 1
