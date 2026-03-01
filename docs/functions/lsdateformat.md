# lsDateFormat

Formats the date part of a date/time value in a locale-specific format.
 [mask - quicky]
 d,dd,ddd,dddd: Day of month / week
 m,mm,mmm,mmmm: Month
 y,yy,yyyy: Year
 gg: Period/era string
 short / medium / long / full

```javascript
lsDateFormat(date [, mask, locale])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
date.lsDateFormat([mask, locale])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | The datetime object |
| mask | string | No | medium | A keyword or custom combination of components |
| locale | string | No |  | CF8+ Locale to use instead of the locale of the page when processing the function |

## Tag Example

lsDateFormat formats the date part of a date/time value using the locale convention.

```javascript
<!--- loop through a list of locales; show date values for now()---> 
 <cfloop list = "#Server.Coldfusion.SupportedLocales#" 
 index = "locale" delimiters = ","> 
 <cfset oldlocale = setLocale(locale)> 
  <cfoutput><p><B><I>#locale#</I></B> 
 #lsDateFormat(now(), "mmm-dd-yyyy")# 
 #lsDateFormat(now(), "mmmm d, yyyy")# 
 #lsDateFormat(now(), "mm/dd/yyyy")# 
 #lsDateFormat(now(), "d-mmm-yyyy")# 
 #lsDateFormat(now(), "ddd, mmmm dd, yyyy")# 
 #lsDateFormat(now(), "d/m/yy")# 
 #lsDateFormat(now())# 
 <hr noshade> 
 </cfoutput> 
 </cfloop>
```
