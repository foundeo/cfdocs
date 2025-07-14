# fileClose

Closes an on-disk or in-memory file that is open.

```javascript
fileClose(file)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| file | any | Yes |  | A file object |

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
