# fileDelete

Deletes the specified file on the server. fileDelete throws an exception whenever a file doesn't exist.

```javascript
fileDelete(filePath)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filePath | string | Yes |  | Pathname of the file to delete. If not an absolute path (starting with a drive letter and a colon, or a forward or backward slash), it is relative to the ColdFusion temporary directory, which is returned by the GetTempDirectory function. |

## Script Syntax

Obtaining files within an archive folder and then removing them if they are older than one hour.

```javascript
var existingFiles = directoryList(expandPath("/archive/"), false, "query");
for (file in existingFiles) {
	if (dateDiff("h", file.datelastmodified, now()) GT 1) {
		fileDelete(file.directory & "\" & file.name);
	}
}
```

### Expected Result: All files within the archive directory older than one hour will be deleted.
