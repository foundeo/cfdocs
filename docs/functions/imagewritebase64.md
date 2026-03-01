# imageWriteBase64

 Writes Base64 images to the specified filename and destination.

```javascript
imageWriteBase64(name, destination, format [, inHTMLFormat] [, overwrite])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.writeBase64(destination, format [, inHTMLFormat] [, overwrite])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |  |
| destination | string | Yes |  | The path for the destination file. |  |
| format | string | Yes |  | the image format |  |
| inHTMLFormat | boolean | No | NO | Specify whether Base64 output includes the headers used by the Base64 images in the HTML 'img' tag ('data:image/{format};base64,...') | /Users/garethedwards/development/github/cfdocs/docs/functions/imagewritebase64.md|YES |
| overwrite | boolean | No | YES | If set to true, overwrites the destination file. | /Users/garethedwards/development/github/cfdocs/docs/functions/imagewritebase64.md|YES |

## Using translateDrawingAxis member function

CF11+ Write a base64 representation of an image

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.writeBase64('base64.txt','jpg');
```
