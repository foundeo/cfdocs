# imageInfo

 Returns a structure that contains information about the image, such as height, width, color model, size, and filename.

```javascript
imageInfo(name)
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
someImage.info()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |

## Get Image Info

Uses the imageRead function to read an image from a url.

```javascript
<cfset img = imageRead("http://lorempixel.com/10/20/")>
<cfset imgInfo = imageInfo(img)>
<cfoutput>Image is #imgInfo.height#px high and #imgInfo.width#px wide.</cfoutput>
```

### Expected Result: Image is 20px high and 10px wide.

## Using info member function

CF11+ Lucee4.5+ Extract the image info

```javascript
imgObj = imageRead("https://cfdocs.org/apple-touch-icon.png");
info = imgObj.info();
writeDump(info);
```
