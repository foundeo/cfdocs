# spreadsheetAddInfo

 Adds information to an Excel spreadsheet object.

```javascript
spreadsheetAddInfo(spreadsheetObj, info)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| info | struct | Yes |  | No Help Available |

## Tag Example

```javascript
<cfset a = SpreadsheetNew( "Test" )> 
  <cfset info = StructNew()> 
  <cfset info.title="Title"> 
  <cfset info.category="Category test"> 
  <cfset info.author="ABC"> 
  <cfset info.comments="Comments for this file"> 
  <cfset spreadsheetAddInfo(a,info)> 
 <cfdump var="#a#" />
```
