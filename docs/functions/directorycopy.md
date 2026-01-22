# directoryCopy

Copies the contents of a directory to a destination directory

```javascript
directoryCopy(source, destination [, recurse][, filter])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| source | string | Yes |  | Absolute pathname of directory from which you copy content. |
| destination | string | Yes |  | Path of the destination directory. If not an absolute path, it is relative to the source directory. |
| recurse | boolean | No | false | If true, copies the subdirectories, otherwise only the files in the source directory. |
| filter | any | No |  | File extension filter applied, for example, *.cfm. Filter to be used to filter the data copied: - A string that uses "*" as a wildcard, for example, "*.cfm" - a UDF (User defined Function) using the following pattern "functioname(String path):boolean", the function is run for every single file, if the function returns true, then the file is will be added to the list otherwise it will be omitted. |
| createPath | boolean | No | true | Lucee4.5+ If set to false, expects all parent directories to exist. If set to true, it will generate necessary directories. |

## Simple DirectoryCopy Example

Copy directory from one place to another.

```javascript
directoryCopy(expandPath("./mySourceDirectory"),expandPath("../MyDestinationDirectory"))
```
