# fileUpload

Uploads file to a directory on the server.

```javascript
fileUpload(destination [, fileField] [, mimeType] [, onConflict] [, strict])
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| destination | string | Yes |  | Path of directory in which to upload the file. If not an absolute path (starting with a drive letter and a colon, or a forward or backward slash), it is relative to the ColdFusion temporary directory returned by the function getTempDirectory. If the destination you specify does not exist, ColdFusion creates a file with the specified destination name. |
| fileField | string | No |  | Name of form field used to select the file. Do not use number signs (#) to specify the field name. |
| mimeType | string | No |  | Specify a comma-delimited list of MIME types and/or file extensions to test the uploaded file against. If the file is not of any of the types in this list, an error of type `coldfusion.tagext.io.FileUtils$InvalidUploadTypeException`is thrown.
If you specify file extensions, use this format: `.txt,.jpg`, not `txt`, `*.txt`, or `*.*`. You can use `*` as a wildcard to accept all files. |
| onConflict | string | No | error | Action to take if file has the same name of a file in the directory. |
| strict | boolean | No | true | CF10+ Defines which method is used to determine the file type to check against the value of the `mimeType` parameter.
`true`: The first few bytes of the uploaded file are used to determine the MIME type.
`false`: The MIME type provided by the browser in the request payload is used. |

## Upload form with strict check on MIME type

```javascript
<form method="post" enctype="multipart/form-data">
  <input type="file" name="fileInput">
  <button type="submit">Upload</button>
</form>

<cfscript>
  if( structKeyExists( form, "fileInput" )) {
    try {
      uploadedFile = fileUpload( getTempDirectory(), "fileInput", "image/jpeg,image/pjpeg", "MakeUnique" );
      // check the file extension of the uploaded file; mime types can be spoofed
      if (not listFindNoCase("jpg,jpeg", uploadedFile.serverFileExt)) {
      throw("The uploaded file is not of type JPG.");
      }
      // do stuff with uploadedFile...
    } catch ( coldfusion.tagext.io.FileUtils$InvalidUploadTypeException e ) {
      writeOutput( "This upload form only accepts JPEG files." );
    }
    catch (any e) {
    writeOutput( "An error occurred while uploading your file: #e.message#" );
    }
  }
</cfscript>
```
