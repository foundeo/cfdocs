# dayOfWeek

Determines the day of the week from a date. Returns the ordinal for the day of the week, as an integer in the range 1 (Sunday) to 7 (Saturday).

```javascript
dayOfWeek(date)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date.dayOfWeek()
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| date | date | Yes |  | Date or datetime object (100AD-9999AD).
When passing a datetime object as a string, enclose it in quotation marks. Otherwise, it is interpreted as a numeric representation of a datetime object. |  |
| calendar | string | No | gregorian | CF2016u8+ Indicates whether the week starts on Sunday (gregorian) or Monday (iso) | /Users/garethedwards/development/github/cfdocs/docs/functions/dayofweek.md|iso |

## Determines the day of the week

Uses the dayOfWeek function to determine the day of the week

```javascript
<cfset date = createDate(2010, 09, 08)>
<cfset result = dayOfWeek(date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: 4
