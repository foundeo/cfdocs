# fileIsEOF

Determines whether ColdFusion has reached the end of the file while reading it.

```javascript
fileIsEOF(file)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| file | any | Yes |  | The file object. |

## Simple usage syntax

Call fileIsEOF on a file object and save the result to a variable.

```javascript
fileObj = fileOpen(expandPath('./file.txt');
isEndOfFile = fileIsEOF(fileObj);
```

## Using fileIsEOF to loop over all lines of a text file

Simplified example of using fileIsEOF to determine when all lines have been read from a file. Error handling omitted for clarity.

```javascript
// Error handling omitted for clarity.

// open a file for reading
fileObj = fileOpen(expandPath('./file.txt'), "read");

// read each line until we read the end of the file.
// fileIsEOF(fileObj) == false until we've read in the last line.
while (!fileIsEOF(fileObj)) {

	lineContent = fileReadLine(fileObj);

	// do something with content of each line
}

// end of file reached, close the file handle
fileClose(fileObj);
```
