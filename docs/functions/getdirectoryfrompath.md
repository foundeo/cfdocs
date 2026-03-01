# getDirectoryFromPath

Extracts a directory from an absolute path. Returns the absolute path with a trailing slash and omits the filename.

```javascript
getDirectoryFromPath(path)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  |  |

## Basic Example

```javascript
getDirectoryFromPath("C:\temp\file.txt")
```

### Expected Result: C:\temp\
