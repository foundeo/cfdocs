# directoryRename

Renames given directory. NOTE:Ensure that you have the required permissions to run this function.

```javascript
directoryRename(oldPath, newPath)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| oldPath | string | Yes |  | Absolute path of the directory to be renamed. Alternatively, you can specify IP address, for example, `DirectoryRename("//12.3.123.123/c_drive/test");` |
| newPath | string | Yes |  | New name for the directory. |
| createPath | boolean | No | true | Lucee Only. If set to `false`, expects all parent directories to exist. `true` will generate necessary directories. |

## Tag Syntax

```javascript
<cfset renameDirectory = "someDirPath" />
<cfset rename = "newName" />
<cfset directoryRename(renameDirectory,newName)>
```
