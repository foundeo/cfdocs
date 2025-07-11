# cffileupload

Ajax File upload

### Syntax

```html
<cffileupload url="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cffileupload(url="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| url | string | Yes |  | The URL to the server where the files are uploaded. |
| width | string | No |  | Width of the file upload control, in pixels. |
| title | string | No |  | Title for the upload dialog. |
| extensionfilter | string | No |  | Use this attribute to specify the type of file that you will allow to be uploaded. <br />For example, to let only image files to be uploaded, you can specify file extensions like .jpg, .jpeg, or .png |
| uploadbuttonlabel | string | No |  | Label of the Upload button. |
| progressbar | boolean | No |  | Whether to display Progress Bar or not. Default true |
| height | string | No |  | Height of the file upload control, in pixels. |
| maxUploadSize | numeric | No |  | The maximum file size, in megabytes, allowed for the upload. Default 10MB. |
| maxFileSelect | string | No |  | The maximum number of files allowed for the upload. |
| style | string | No |  | A CSS style specification that defines layout styles |
| bgcolor | string | No |  | The background color for the file upload control. A hexadecimal value without &quot;#&quot; prefixed. |
| addButtonLabel | string | No |  | Label of the Add button |
| name | string | No |  | Name of the file upload component. |
| oncomplete | string | No |  | The JavaScript function to run after the file upload completes |
| onerror | string | No |  | The JavaScript function to run on an error condition. The error can be a network error or server-side error |
| clearButtonLabel | string | No |  | Label of the Clear button |
| deleteButtonLabel | string | No |  | Label of the Delete button |
| align | string | No |  | Specifies the default alignment |
| wmode | string | No |  | Specifies the absolute positioning and layering capabilities in your browser: |
| stopOnError | boolean | No |  | Specifies whether or not to ignore the exceptions for this operation. When the value is<br />true, it stops uploading, displays an appropriate error |
| hideUploadButton | boolean | No |  | A Boolean value that specifies if the Upload button should appear in the media player |
| onUploadComplete | string | No |  | The JavaScript function to run after the all uploads have completed |
