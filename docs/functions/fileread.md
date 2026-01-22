# fileRead

Reads an on-disk or in-memory text file or a file object created with the FileOpen function.

```javascript
fileRead(filePath [, charset | bufferSize])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filePath | any | Yes |  | An absolute file path, or file object. |
| charset | any | No |  | Character encoding used to read the file. |
| bufferSize | any | No |  | The number of characters to read. |

## Read a file into a variable

Uses expandPath to grab a file in current directory.

```javascript
fileContent = fileRead(expandPath("./file.txt"), "utf-8")
```
