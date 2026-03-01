# fileSkipBytes

Shifts the file pointer by the given number of bytes.

```javascript
fileSkipBytes(file, skipCount)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| file | any | Yes |  | The file object |
| skipCount | numeric | Yes |  | The number of bytes that must be skipped before the next file operation |

## Script Syntax

```javascript
<cfscript> 
 NewFile = fileOpen(expandPath(".") & "	est.txt","write","",true); 
             fileSeek(#NewFile#,5);  
 </cfscript>
```
