# dayOfYear

 Determines the day of the year, in a date.

```javascript
dayOfYear(date)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date.dayOfYear()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | Date or datetime object (100AD-9999AD). |

## Determines the day of the year

Uses the dayOfYear function to determine the day of the year

```javascript
<cfset Date = CreateDate(2012, 12, 30)>
<cfset result = dayOfYear(Date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: 365
