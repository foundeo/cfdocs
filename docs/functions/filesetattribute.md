# fileSetAttribute

Sets the attributes of an on-disk file in Windows. This function does not work with in-memory files.

```javascript
fileSetAttribute(filePath, attribute)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| filePath | string | Yes |  | Path to on-disk file |  |
| attribute | string | Yes |  | Attribute to enable/disable<br /><br />readonly/hidden sets the given attribute to `true` and the other one to `false`<br />normal sets both to false | /Users/garethedwards/development/github/cfdocs/docs/functions/filesetattribute.md|normal |

## Create a temporary file and then change read-only mode

```javascript
myFile = getTempFile(getTempDirectory(),"testFile");
writeOutput('is writable: '&getFileInfo(myFile).canWrite);
fileSetAttribute(myFile,'readOnly');
writeOutput(' → '&getFileInfo(myFile).canWrite);
```

### Expected Result: is writable: YES → NO
