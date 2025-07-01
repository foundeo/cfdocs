# fileAppend

Appends the data contents to the file.

```javascript
fileAppend(file, data [, charset] [, addNewLine])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| file | string | Yes |  | File path |
| data | string | Yes |  | Data to append to the file |
| charset | string | No |  | The character encoding in which the file contents is encoded. |
| addNewLine | boolean | No | true | CF2016u11+ Indicates whether a new line is added to the end of the appended data |

## Simple Example

Appends a mock entry to a file.

```javascript
// Create mock log entry
logEntry = dateTimeFormat(now(), "yyyy/mm/dd HH:nn") & " this is a mock log entry!";

// Append line to file
fileAppend("/path/to/file.log", logEntry);
```
