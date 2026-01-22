# fileWriteLine

Appends content to an existing file

```javascript
fileWriteLine(file, data)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| file | any | Yes |  | The file where you want to add your content |
| data | string | Yes |  | Content to add to the file |

## Script Syntax

```javascript
myfile = fileOpen("c:\temp\test1.txt", "write"); 
fileWriteLine(myfile,"This line is new."); 
fileClose(myfile);
```
