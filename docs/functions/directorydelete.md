# directoryDelete

Deletes on-disk or in-memory directory at the given path. NOTE: Ensure that you have the required permissions to run this function.

```javascript
directoryDelete(path[, recurse])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  | Absolute path of the directory to be deleted. Alternatively, you can specify IP address, as in the following example: `DirectoryDelete("//12.3.123.123/c_drive/test");`. |
| recurse | boolean | No | false | If true, the directory and the sub-directories are deleted. If the directory (being deleted) has sub-directories and you set `recurse` to false, an exception occurs. |

## Tag Syntax

```javascript
<cfset delDirectory = "someDirPath" />
<cfset recurse = true />
<cfset directoryDelete(delDirectory,recurse)>
```
