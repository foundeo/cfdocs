# fileUploadAll

Uploads all files sent to the page in an HTTP request to a directory on the server.

```javascript
fileUploadAll(destination [,mimeType] [,onConflict] [,strict] [,continueOnError] [,errorVariable] [,allowedExtensions])
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| destination | string | Yes |  | Path of directory in which to upload the file. If not an absolute path (starting with a drive letter and a colon, or a forward or backward slash), it is relative to the ColdFusion temporary directory returned by the function getTempDirectory. If the destination you specify does not exist, ColdFusion creates a file with the specified destination name. |
| mimeType | string | No |  | Limits the MIME types to accept. Comma-delimited list. For example, the following code permits JPEG and Microsoft Word file uploads:'image/jpg,application/msword' .The browser uses the filename extension to determine file type. |
| onConflict | string | No | error | Action to take if file has the same name of a file in the directory. |
| strict | boolean | No | true | Defines which method is used to determine the file type to check against the value of the `mimeType` parameter.<br />`true`: The first few bytes of the uploaded file are used to determine the MIME type.<br />`false`: The MIME type provided by the browser in the request payload is used. |
| continueOnError | boolean | No | false | CF11+ Whether to continue uploading the remaining files when uploading one of the files fails. |
| errorVariable | variableName | No | cffile.uploadAllErrors | CF11+ The name of the variable in which the array of structs of file upload errors will be stored. <br /><br />The upload failure information error structure contains the following fields:<br />`REASON` - The reason for the failure<br />`DETAIL` - File upload failure detail<br />MESSAGE - A detailed message depicting the failure<br />CLIENTFILE - Name of the file uploaded from the client's system<br />`CLIENTFILEEXT` - Extension of the uploaded file on the client system (without a period)<br />`CLIENTFILENAME` - Name of the uploaded file on the client system (without an extension)<br />`INVALID_FILE_TYPE` - If the file mime type or extension is not in the specified accept attribute. If the reason is INVALID_FILE_TYPE, two additional keys will be available in the structure.<br /> --`ACCEPT`: list of mime types or file extensions given in the tag<br />--`MIMETYPE`: mime type of the uploaded file<br />`EMPTY_FILE` - If the uploaded file is an empty file<br />`FILE_EXISTS` - If any file with the given name already exists in the destination and the overwritepolicy is error<br />`DEST` - The destination where file is copied<br />`FORM_FILE_NOT_FOUND` - If the uploaded file is not found on the server |
| allowedExtensions | string | No |  | CF2018+ A comma-separated list of file extensions, which will be allowed for upload. <br /><br />For example, .png, .jpg, or, .jpeg. <br /><br />You can use `*` (star) to allow all files, except where you specify the MIME type in the accept attribute. <br /><br />Values specified in the attribute allowedExtensions override the list of blocked extensions in the server or application settings. |
