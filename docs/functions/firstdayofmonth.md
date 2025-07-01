# firstDayOfMonth

Determines the ordinal (day number, in the year) of the first day of the month in which a given date falls.

```javascript
firstDayOfMonth(date)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date.firstDayOfMonth()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | Date or date/time object. |

## Simple example

To determine the ordinal (day number, in the year).

```javascript
<cfset Date = CreateDate(2012, 12, 12)>
<cfset result = firstDayOfMonth(Date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: 336
