# directoryCreate

Creates an on-disk or in-memory directory in the specified path

```javascript
directoryCreate(path)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  | Absolute path of the directory to be created. Alternatively, you can specify an IP address, as in the following example: `DirectoryCreate("//12.3.123.123/c_drive/test". NOTE: You have to have the required permissions to run this function.`); |
| createPath | boolean | No | true | Lucee Only. Create parent directory when it doesn't exist. |
| ignoreExists | boolean | No | false | Lucee Only. Pass false (default) to throw an error if the directory already exists, or true to skip the create operation without an error. |

## Script Syntax

Checking if a directory called 'icons' exists and then creating the directory if it does not exist.

```javascript
if (!directoryExists(expandPath('/assets/img/icons'))) {
	directoryCreate('assets/img/icons');
}
```

### Expected Result: The directory 'icons' will be created under the img folder.
