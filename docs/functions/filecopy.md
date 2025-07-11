# fileCopy

Copies the specified on-disk or in-memory source file to the specified destination file.

```javascript
fileCopy(source, destination)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| source | string | Yes |  | Path where the file is located currently |
| destination | string | Yes |  | Path where a copy of the file should be placed |

## Copy file from here to there

```javascript
fileCopy(sourceFile, destinationFile);
```
