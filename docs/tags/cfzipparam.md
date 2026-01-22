# cfzipparam

Provides additional information to the cfzip tag.
 The cfzipparam tag is always a child tag of the cfzip tag.

### Syntax

```html
<cfzipparam>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfzipparam();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| charset | string | No | encoding of the host machine | Converts string content into binary data before putting<br /> it into a ZIP or JAR file.<br /><br />Used only when cfzip<br /> action="zip" and the cfzipparam content is a string |
| content | string | No |  | Content written to the ZIP or JAR entry.<br /><br />Used only when cfzip action="zip".<br /> Valid content data types are binary and string. If you specify the content<br /> attribute, you must specify the entrypath attribute. |
| entrypath | string | No |  | Pathname used:<br /> For cfzip action="zip", it is the entrypath used. This is valid only<br /> when the source is a file. The entrypath creates a subdirectory within<br /> the ZIP or JAR file.<br /> For cfzip action="unzip", it is the pathname to unzip.<br /> For cfzip action="delete", it is the pathname to delete from the<br /> ZIP or JAR file. |
| filter | string | No |  | File filter applied to the action. For example, for the zip action,<br /> all the files in the source directory matching the filter are zipped. |
| prefix | string | No |  | String added as a prefix to the ZIP or JAR entry.<br /><br />Used only<br /> when cfzip action="zip". |
| recurse | boolean | No | true | Recurse the directory to be zipped, unzipped, or deleted,<br /> as specified by the cfzip parent tag. |
| source | string | No |  | Source directory or file.<br /><br />Used only when cfzip action="zip".<br /> Specified file(s) are added to the ZIP or JAR file:<br /> If you specify source attribute for the cfzip tag, the<br /> cfzipparam source is relative to it.<br /> If you do not specify a source attribute for the cfzip<br /> tag, the cfzipparam source must be an absolute path. |

## Add a series of files to a zip file

Adding the contents of a folder to a zip

```html
var fileList = directoryList(expandPath('/'), false, 'path', '*.jpg');

cfzip( file = 'allJPGs.zip' ) {
  fileList.each((zipFile)=>{
    cfzipparam( source = zipFile );
  })
}
```
