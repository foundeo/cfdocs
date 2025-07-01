# directoryList

List the contents of a directory. Returns either an array, or a query. NOTE: Ensure that you have the required permissions to run this function.

```javascript
directoryList(path [, recurse] [, listInfo] [, filter] [, sort] [, type])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| path | string | Yes |  | The absolute path of the directory for which to list the contents. Alternatively, you can specify IP address as in the following example: `DirectoryList("//12.3.123.123/c_drive/test");`. |  |
| recurse | boolean | No | false | If `true` directoryList traverses the directory tree. |  |
| listInfo | string | No | path | Sets the return type. `name` returns an array with only the file names, `path` returns an array with the full path names and `query` returns a query containing the following fields: `Attributes`, `DateLastModified`, `Directory`, `Link`, `Mode`, `Name`, `Size`, `Type`. | /Users/garethedwards/development/github/cfdocs/docs/functions/directorylist.md|query |
| filter | string | No |  | File extension filter applied to the listed files, for example, `*.jpg`. Multiple filters can be applied by using a pipe delimiter. For example: `*.doc|*.xls`. You can also pass a function. The arguments of the passed function must have: `path` :the file path, `type`: The values (file or dir), `extension`: The file extension, if any, otherwise and empty string. This argument can also accept the instances of Java `FileFilter` Objects. In Lucee4.5+ it can be a closure as well. |  |
| sort | string | No |  | Columns by which to sort. e.g. `Directory, Size DESC, DateLastModified`. To qualify a column, use `asc` (ascending sort a-z) or `desc` (descending sort z-a). |  |
| type | string | No | all | CF11+ Lucee5+ Filter the result to only include files, directories, or both. | /Users/garethedwards/development/github/cfdocs/docs/functions/directorylist.md|all |

## An array of files in this directory

```javascript
arrayOfLocalFiles = directoryList( expandPath( "./" ), false, "name" );
```

## A query of files in this directory sorted by date last modified

```javascript
queryOfFiles = directoryList( expandPath( "./" ), false, "query", "", "DateLastModified DESC" );
```

## An array of files in the temp directory

Including sub-directories and as an array containing full paths

```javascript
arrayOfTempFiles = directoryList( "./", true );
```

## Filter files with closure

Lucee4.5+ Pass a closure instead of a string as `filter` param

```javascript
arrayOfFilteredFiles = directoryList(".", false, "name", function(path) {
	return ListFindNoCase("Application.cfc,robots.txt,server.json,favicon.ico,.htaccess,README.md", path);
});
```
