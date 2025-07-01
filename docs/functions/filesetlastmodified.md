# fileSetLastModified

Sets the date when an on-disk or in-memory file was most recently modified.

```javascript
fileSetLastModified(filePath, date)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filePath | string | Yes |  | An absolute path to an on-disk or in-memory file on the server |
| date | date | Yes |  | The date to set for when the file was last modified |

## Script Syntax

```javascript
<cfscript> 
 fileSetLastModified("c:	emp	est1.txt", "#now()#"); 
    writeOutput(#getFileInfo("c:	emp	est1.txt").lastmodified#); 
 </cfscript>
```
