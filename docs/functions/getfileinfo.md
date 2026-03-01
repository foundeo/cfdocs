# getFileInfo

Returns information about on-disk or in-memory file. Return struct contains keys such as: lastModified, size, path, name, type, canWrite, canRead, isHidden and more.

```javascript
getFileInfo(path)
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  | Path to the on-disk or in-memory file |

## Output some information about a temporary file

```javascript
myFile = getTempFile(getTempDirectory(),"testFile");
fileInfo = getFileInfo(myFile);
isReadable = (not fileInfo.canRead ? 'un' : '')&'readable';
isWritable = (not fileInfo.canWrite ? 'un' : '')&'writable';
isHidden = (not fileInfo.isHidden ? 'not ' : '')&'hidden';
date = DateTimeFormat(fileInfo.lastModified,'full');
fileSize = NumberFormat(fileInfo.size / 1000 / 1000,'0.00');
writeOutput('"'&fileInfo.name&'" is '&isReadable&', '&isWritable&' and '&isHidden&'. ');
writeOutput('It was at last modified at '&date&' and has a size of '&fileSize&' MB');
```

### Expected Result: "testFile9217639658547923751.tmp" is readable, writable and not hidden. It was at last modified at Friday, November 3, 2017 3:58:08 PM UTC and has a size of 0.00 MB
