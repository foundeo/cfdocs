# datePart

Extracts a part from a datetime value as a numeric.

```javascript
datePart(datepart, date [,timezone])
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date.datePart(datepart)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datepart | string | Yes |  | yyyy: Year 
 q: Quarter 
 m: Month 
 y: Day of year 
 d: Day 
 w: Weekday 
 ww: Week 
 h: Hour 
 n: Minute 
 s: Second 
 l: Millisecond |
| date | date | Yes |  | Datetime object (100AD-9999AD). |
| timezone | string | No | Timezone Specified in Lucee Administrator | This is only available in Lucee.
  A datetime object is independent of a specific timezone; it is only an offset in milliseconds from `1970-1-1 00.00:00 UTC`.
 The timezone only comes into play when you need specific information like hours in a day, minutes in an hour or which day it is, as these calculations depend on the timezone.
 A timezone must be specified in order to translate the date object to something else. If you do not provide the timezone in the function call, it will default to the timezone specified in the Lucee Administrator (Settings/Regional), or the timezone specified for the current request using the function `setTimezone()`. |

## All dateparts

This example shows information available from datePart

```javascript
<cfset todayDate = now()>
<h3>datePart Example</h3>
<p>Today's date is <cfoutput>#todayDate#</cfoutput>.
<p>Using datePart, we extract an integer representing the dateparts from that value <cfoutput>
<ul>
<li>year: #datePart("yyyy", todayDate)#</li>
<li>quarter: #datePart("q", todayDate)#</li>
<li>month: #datePart("m", todayDate)#</li>
<li>day of year: #datePart("y", todayDate)#</li>
<li>day: #datePart("d", todayDate)#</li>
<li>weekday: #datePart("w", todayDate)#</li>
<li>week: #datePart("ww", todayDate)#</li>
<li>hour: #datePart("h", todayDate)#</li>
<li>minute: #datePart("n", todayDate)#</li>
<li>second: #datePart("s", todayDate)#</li>
</ul>
</cfoutput>
```
