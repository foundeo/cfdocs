# fileReadLine

Returns the next line from the file

```javascript
fileReadLine(file)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| file | any | Yes |  | file object previously opened with fileOpen() |

## Opens a file, reads a line then closes it.

```javascript
// Open File
var fileObject = fileOpen("/path/to/file.txt");

// Perform Actions
try
{
	// Read Line
	writeOutput(fileReadLine(fileObject));
}

// Error Handling
catch(any ex)
{
	// Report Exception
	writeDump(ex);
}

// Always Close
finally
{
	// Close File
	fileClose(fileObject);
}
```
