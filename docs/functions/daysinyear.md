# daysInYear

 Determines the number of days in a year.

```javascript
daysInYear(date)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date.daysInYear()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | Date or datetime object (100AD-9999AD). |

## Simple example

Uses the daysInYear function to determine the number of days in a year

```javascript
<cfset Date = CreateDate(2023, 06, 18)>
<cfset result = daysInYear(Date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: 365

## Simple example with leap year

To determine the number of days in a year

```javascript
<cfset Date = CreateDate(2012, 02, 03)>
<cfset result = daysInYear(Date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: 366
