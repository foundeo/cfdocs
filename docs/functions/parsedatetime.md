# parseDateTime

 Parses a date/time string according to the English (U.S.)
 locale conventions. (To format a date/time string for other
 locales, use the LSParseDateTime function.)

```javascript
parseDateTime(dt_string [, pop_conversion])
```

```javascript
returns date
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| dt_string | string | Yes |  |  |  |
| pop_conversion | string | No | standard | - standard: function does no conversion.<br /> - pop: specifies that the date/time string is in POP format, which includes the local time of the sender and a time-zone offset from UTC. ColdFusion applies the offset and returns<br /> a value with the UTC time.<br />- Apart from these two values, this parameter allows you to directly specify the format in which to parse the given string. | /Users/garethedwards/development/github/cfdocs/docs/functions/parsedatetime.md|pop |

## Tag Example

```javascript
<cfset dateTimeVar = #dateTimeFormat(now(), "yyyy.MM.dd HH:nn:ss ")# /> 
 <cfoutput> 
 #parseDateTime(dateTimeVar)# 
 </cfoutput>
```
