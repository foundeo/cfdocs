# fileSeek

Shifts the file pointer to the given position. The file must be opened with seekable option

```javascript
fileSeek(file, position)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| file | any | Yes |  | The file object |
| position | numeric | Yes |  | The position in the file within a stream where the following read and write operation must occur. |

## Script Syntax

```javascript
<cfscript> 
 NewFile = fileOpen(expandPath(".") & "	est.txt","write","",true); 
             fileSeek(#NewFile#,0);  
 </cfscript>
```
