# daysInMonth

 Determines the number of days in a month.

```javascript
daysInMonth(date)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date.daysInMonth()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | Date or datetime object (100AD-9999AD). 
When passing a datetime object as a string, enclose it in quotation marks, otherwise, it is interpreted as a numeric representation of a datetime object. |

## Determines the number of days in a month

Uses the daysInMonth function to determine the number of days in a month

```javascript
<cfset Date = CreateDate(2012, 12, 30)>
<cfset result = daysInMonth(Date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: 31

## Simple example

To determine the number of days in a month

```javascript
<cfset Date = CreateDate(2012, 02, 03)>
<cfset result = daysInMonth(Date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: 29
