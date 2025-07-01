# getTimezoneInfo

 Gets local time zone information for the computer on which it
 is called, relative to Universal Time Coordinated (UTC). UTC is
 the mean solar time of the meridian of Greenwich, England.

```javascript
getTimezoneInfo(text)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| timezone | string | Yes |  | Lucee Specify a timezone to return info from |
| locale | string | Yes |  | Lucee Locale used to format the output |

## Output timezone information

This example shows the use of GetTimeZoneInfo

```javascript
<cfoutput>
The local date and time are #now()#.
</cfoutput>
<cfset info = GetTimeZoneInfo()>
<cfoutput>
<p>Total offset in seconds is #info.utcTotalOffset#.</p>
<p>Offset in hours is #info.utcHourOffset#.</p>
<p>Offset in minutes minus the offset in hours is #info.utcMinuteOffset#.</p>
<p>Is Daylight Savings Time in effect? #info.isDSTOn#.</p>
</cfoutput>
```

## Get Hawaii timezone information in German

Shows the use of getTimeZoneInfo for a known / specific timezone with German locale. This syntax is only supported in Lucee.

```javascript
<cfscript>
var tz = getTimeZoneInfo("US/Hawaii", "de-DE");
</cfscript>
```
