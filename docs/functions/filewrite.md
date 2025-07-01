# fileWrite

Writes the data to the file object or file path specified using the charset specified or the java default character set if unspecified.

```javascript
fileWrite(filePath, data [, charset])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filePath | any | Yes |  | A file object or a file system path string. |
| data | any | Yes |  | The variable to  write to the file. |
| charset | string | No |  | An optional character set that the data is encoded with. Defaults to the Java default character set (which is usually UTF-8). |

## Write a Temporary File

```javascript
fileWrite( getTempFile( getTempDirectory(), "tempFile"), "My Data" );
```
