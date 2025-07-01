# extract

Extract the data of a compressed file.

```javascript
extract(format, source, target)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| format | string | Yes |  | The format of the compressed file. |
| source | string | Yes |  | Path (relative or absolute) to the source-file or a directory with zip-files. |
| target | string | Yes |  | Path (relative or absolute) to the directory, where you want to extract the data. |

## Extract a zip-file

Extract a zip-file and save the data in the "output-directory".

```javascript
extract("zip", "test.zip", "output-directory")
```

## Extract a multiple zip-files via a directory

Extract all zip-files, which are stored in the "multiple-directory" and save the data in the "output-directory".

```javascript
extract("zip", "multiple-directory", "output-directory")
```
