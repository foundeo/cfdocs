# getProfileString

Gets an initialization file entry. An initialization file assigns values to configuration variables, also known as entries, that are set when the system
 boots, the operating system comes up, or an application starts. Returns the entry - if no value, returns an empty string.

```javascript
getProfileString(inipath, section, entry)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| inipath | string | Yes |  |  |
| section | string | Yes |  |  |
| entry | string | Yes |  |  |

## Tag Syntax

```javascript
<cfset IniPath = "c:\myboot.ini"> 
 <cfset Section = "boot loader"> 
 <cfset timeout = getProfileString(IniPath, Section, "timeout")>
```
