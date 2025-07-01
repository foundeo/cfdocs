# compress

Compress a file or a directory with files.

```javascript
compress(format, source, target [, includeBaseFolder] [, mode])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| format | string | Yes |  | The format in which you want to compress the files. |
| source | string | Yes |  | Path (relative or absolute) to the file or directory you want to compress. |
| target | string | Yes |  | Path (relative or absolute) including the name, where you want to save the compressed output-file. |
| includeBaseFolder | boolean | No | true | Compress the directory or just the content of the directory. |
| mode | string | No | 777 |  |

## Compress a file

Compress the file "example.txt" to a zip-file.

```javascript
compress("zip", "example.txt", "output.zip")
```

## Compress a directory

Compress the "example-directory" to a zip-file.

```javascript
compress("zip", "example-directory", "output.zip")
```
