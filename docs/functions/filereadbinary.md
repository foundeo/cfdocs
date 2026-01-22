# fileReadBinary

Reads an on-disk or in-memory binary file (such as an executable or image file) on the server, into a binary object

```javascript
fileReadBinary(filePath)
```

```javascript
returns binary
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filePath | string | Yes |  | Absolute path to the file. |

## Read a file into a binary object

Uses expandPath to grab a file in current directory.

```javascript
binaryContent = fileReadBinary(expandPath('./file.pdf'));
```
