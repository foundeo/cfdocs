# directoryExists

Determines whether an on-disk or in-memory directory exists.

```javascript
directoryExists(path)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  | An absolute on-disk or in-memory path. Alternatively, you can specify IP address as in the following example: `DirectoryExists("//12.3.123.123/c_drive/test");` |
| allowRealPath | boolean | No |  | Lucee Only. boolean that defines if relative paths are interpreted or not. |

## Script Syntax

Checking if a directory called 'icons' exists and then creating the directory if it does not exist.

```javascript
if (!directoryExists(expandPath('/assets/img/icons'))) {
	directoryCreate('assets/img/icons');
}
```

### Expected Result: The directory 'icons' will be created under the img folder.
