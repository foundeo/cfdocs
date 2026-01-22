# imageWrite

 Writes a ColdFusion image to the specified filename or destination.

```javascript
imageWrite(name [, destination] [, quality] [, overwrite])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.write([destination] [, quality] [, overwrite])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |  |
| destination | string | No |  | The path to write the file.<br /><br />If you create the image with the ImageNew function or another operation where you do not specify the filename, specify the destination parameter. The file format is derived from the extension of the filename. The default value for this parameter is the filename of the original image source. |  |
| quality | string | No |  | Defines the JPEG quality used to encode the image. This parameter applies only to destination files with an extension of JPG or JPEG. Valid values are fractions that range from 0 through 1 (the lower the number, the lower the quality). The default value is 0.75. |  |
| overwrite | boolean | No | YES | If set to true, overwrites the destination file | /Users/garethedwards/development/github/cfdocs/docs/functions/imagewrite.md|YES |

## Using write member function

CF11+ save an image with a new name

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.write('newName.png');
```
