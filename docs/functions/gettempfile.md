# getTempFile

 Creates a temporary file in a directory whose name starts with
 (at most) the first three characters of prefix.

```javascript
getTempFile(dir, prefix)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| dir | string | Yes |  |  |
| prefix | string | Yes |  |  |

## Create temp file in temp dir

Returns path of file created

```javascript
getTempFile(getTempDirectory(),"testFile")
```
