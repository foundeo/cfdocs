# fileGetMimeType

Gets the MIME type for the file path/file object you have specified.

```javascript
fileGetMimeType(file, strict)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| file | any | Yes |  | Name of the file object or full path on disk to the file if strict is set to true. If you do not specify the full path, the file is assumed to be present in the temp directory, as returned by the function getTempDirectory. |
| strict | boolean | No | true | If false, determines the file type by extension. The default value is true. |

## Two PDFs and two text files with and without strict mode

Assume that you have a file named test.pdf in temp directory and test.txt in the same folder, and you want to check the MIME type. Here test.txt is a copy of test.pdf with extension renamed to txt.

```javascript
<cfscript>
	mimeTypes = '';
	mimeTypes = listAppend(mimeTypes, fileGetMimeType(expandPath('/folder1/test.pdf')));
	mimeTypes = listAppend(mimeTypes, fileGetMimeType(expandPath('/folder1/test.pdf'),false));
	mimeTypes = listAppend(mimeTypes, fileGetMimeType(expandPath('/folder1/test.txt')));
	mimeTypes = listAppend(mimeTypes, fileGetMimeType(expandPath('/folder1/test.txt'),false));
	writeOutput(mimeTypes);
</cfscript>
```

### Expected Result: application/pdf,application/pdf,text/plain,text/plain
