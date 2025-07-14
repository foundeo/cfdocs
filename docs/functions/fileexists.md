# fileExists

Determines whether a file exists

```javascript
fileExists(filePath)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filePath | string | Yes |  | A absolute file system path string. |

## Checks if file at the given path exists.

```javascript
var myFile = "/path/to/the/file.jpg";
if(fileExists(expandPath(myFile))) {
	writeOutput(myFile & 'exists!');
}
```
