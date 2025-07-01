# cffile

Manages interactions with server files.
 Different combinations cause different attributes to be
 required.

### Syntax

```html
<cffile action="read">
```

### Script Syntax

```javascript
fileRead(path);
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | Type of file manipulation that the tag performs. |
| file | string | No |  | Pathname of the file. |
| mode | string | No |  | Applies only to UNIX and Linux. Permissions. Octal values
 of Unix chmod command. Assigned to owner, group, and
 other, respectively. |
| output | string | No |  | String to add to the file |
| addnewline | boolean | No | YES | Yes: appends newline character to text written to file |
| attributes | string | No |  | Applies to Windows. A comma-delimited list of attributes
 to set on the file.

 If omitted, the file's attributes are maintained. |
| charset | string | No |  | The character encoding in which the file contents is
 encoded.

 For more information on character encodings, see:
 www.w3.org/International/O-charset.html. |
| source | string | No |  | Pathname of the file (during copy). |
| destination | string | No |  | Pathname of a directory or file on web server
 (during copy). |
| variable | string | No |  | Name of variable to contain contents of text file. |
| filefield | string | No |  | Name of form field used to select the file.

 Do not use pound signs (#) to specify the field name. |
| nameconflict | string | No |  | Action to take if filename is the same as that of a file
 in the directory. |
| accept | string | No |  | Limits the MIME types to accept. Comma-delimited list. For
 example, to permit JPG and Microsoft Word file uploads:

 accept = "image/jpg, application/msword" |
| result | variableName | No | cffile | Allows you to specify a name for the variable in which cffile
 returns the result (or status) parameters. If you do not specify
 a value for this attribute, cffile uses the prefix "cffile". |
| fixnewline | string | No | NO | * Yes: changes embedded line-ending characters in string
 variables to operating-system specific line endings
 * No: (default) do not change embedded line-ending
 characters in string variables. |
| cachedwithin | numeric | No |  | Lucee5+ Timespan, using the CreateTimeSpan function. If original
 file date falls within the time span, cached file data is
 used. CreateTimeSpan defines a period from the present, back. |

## Script Syntax - Write

File Write

```html
fileWrite(expandPath("./myFile.txt"), "Here's some content for my file.");
```

## Script Syntax - Append

File Append - There is no fileAppend() so we access the file and use fileWriteLine()

```html
myFile = fileOpen(expandPath("./myFile.txt"), "append"); 
 fileWriteLine(myFile, "Here's some new content."); 
 fileClose(myFile);
```

## Script Syntax - Read

File Read

```html
myFile = fileRead(expandPath("./myFile.txt"));
```

## Script Syntax - Read Binary

File Read Binary

```html
myImageBinary = fileReadBinary(expandPath("./myImage.jpg"));
```

## Script Syntax - Rename

File Rename - Since there is no fileRename(), fileMove() works just as well

```html
fileMove(expandPath("./myFile.txt"), expandPath("./myNewFileName.txt"));
```

## Script Syntax - Copy

File Copy

```html
fileCopy(expandPath("./myFile.txt"), expandPath("./some/other/path"));
```

## Script Syntax - Move

File Move

```html
fileMove(expandPath("./myFile.txt"), expandPath("./some/other/path"));
```

## Script Syntax - Delete

File Delete

```html
fileDelete(expandPath("./myFile.txt"));
```

## Script Syntax - Upload

File Upload

```html
fileUpload(getTempDirectory(), "form.myFile", " ", "makeunique");
```

## Script Syntax - Upload All

File Upload All

```html
fileUploadAll(getTempDirectory(), " ", "makeunique");
```

## Tag Syntax (action=write)

Write the contents of a variable to a file.

```html
<cffile action="write" file="#expandPath("./myFile.txt")#" output="Here's some content for my file.">
```

## Tag Syntax (action=append)

Append content to the end of a file.

```html
<cffile action="append" file="#expandPath("./myFile.txt")#" attributes="normal" output="Here's some new content.">
```

## Tag Syntax (action=read)

Read a file into a variable

```html
<cffile action="read" file="#expandPath("./myFile.txt")#" variable="myFile">
```

## Tag Syntax (action=readBinary)

File Read Binary

```html
<cffile action="readBinary" file="#expandPath("./myImage.jpg")#" variable="myImageBinary">
```

## Tag Syntax (action=rename)

Rename a file

```html
<cffile action="rename" source="#expandPath("./myFile.txt")#" destination="#expandPath("./myNewFileName.txt")#" attributes="normal">
```

## Tag Syntax (action=copy)

Copy a file

```html
<cffile action="copy" source="#expandPath("./myFile.txt")#" destination="#expandPath("./some/other/path")#">
```

## Tag Syntax (action=move)

Move a file

```html
<cffile action="move" source="#expandPath("./myFile.txt")#" destination="#expandPath("./some/other/path")#">
```

## Tag Syntax (action=delete)

Delete a file

```html
<cffile action="delete" file="#expandPath("./myFile.txt")#">
```

## Tag Syntax (action=upload)

Upload the file contained in the myFile field. Always upload to a directory outside of the webroot, validate the file extension, file content and then only if necessary copy it back to the web root.

```html
<cffile action="upload" destination="#getTempDirectory()#" filefield="form.myFile" nameconflict="makeunique">
```

## Tag Syntax (action=upload) with accept

CF10+ Checks file extensions against a whitelist of allowed file extensions. You must set `strict=false` when specifying a file extension list.

```html
<cffile action="upload" accept=".png,.jpg" strict="false" destination="#getTempDirectory()#" filefield="form.myFile" nameconflict="makeunique">
```

## Tag Syntax (action=uploadall)

Upload all files in the form scope.

```html
<cffile action="uploadall" destination="#getTempDirectory()#" nameconflict="makeunique">
```
