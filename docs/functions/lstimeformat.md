# lsTimeFormat

Formats the time part of a date/time string into a string in a locale-specific format.
 [mask - quicky]
 h,hh,H,HH: Hours; m,mm: Minutes; s,ss: Seconds;
 l: Milliseconds; t: A or P; tt: AM or PM
 "short" = h:mm tt; "medium" = h:mm:ss tt

```javascript
lsTimeFormat(time [, mask, locale])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
time.lsTimeFormat([mask])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| time | date | Yes |  |  |  |
| mask | string | No | short |  | /Users/garethedwards/development/github/cfdocs/docs/functions/lstimeformat.md|long |
| locale | string | No |  | Geographic/language locale value, where the format is a combination of an ISO 639-1 code and an optional ISO 3166-1 code separated by a dash or an underscore. | /Users/garethedwards/development/github/cfdocs/docs/functions/lstimeformat.md|... |

## Tag Example

lsTimeFormat returns a time value using the locale convention.

```javascript
<!--- loop through a list of locales and show time values ---> 
 <cfloop LIST = "#Server.Coldfusion.SupportedLocales#" 
 index = "locale" delimiters = ","> 
 <cfset oldlocale = setLocale(locale)> 
  <cfoutput><p><B><I>#locale#</I></B> 
 #lsTimeFormat(now())# 
 #lsTimeFormat(now(), 'hh:mm:ss')# 
 #lsTimeFormat(now(), 'hh:mm:sst')# 
 #lsTimeFormat(now(), 'hh:mm:sstt')# 
 #lsTimeFormat(now(), 'HH:mm:ss')# 
 <hr noshade> 
 </cfoutput> 
 </cfloop>
```

## Script Example using specific locale

lsTimeFormat returns a time value using the specified locale.

```javascript
writeDump(lsTimeFormat(now(), 'short', 'en_US'));
```
