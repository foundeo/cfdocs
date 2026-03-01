# fileOpen

Opens a file

```javascript
fileOpen(filePath [, mode [, charset] [, seekable]])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filePath | string | Yes |  | An absolute path of an on-disk or in-memory file on the server |
| mode | string | No | read | Type of access you require to the file stream |
| charset | string | No |  | Character encoding identified by the file's byte order mark, if any; otherwise, JVM default file character set |
| seekable | boolean | No | false | Whether the file is usable with the `fileSeek` function |

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
