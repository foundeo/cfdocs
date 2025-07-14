# imageGetMetadata

A structure containing information about the image.

```javascript
imageGetMetadata(image)
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
someImage.getMetadata()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |

## Tag Usage

CF11+ Extract the meta data from an image

```javascript
<cfimage action="read" name="myImage" source="http://www.exiv2.org/include/img_1771.jpg">
<cfset metaData = imageGetMetadata(myImage)>
<cfdump var="#metaData#">
```

## Using getMetadata() member function

CF11+ Extract the meta data from an image

```javascript
imgObj = imageRead("http://www.exiv2.org/include/img_1771.jpg");
metaData = imgObj.getMetadata();
writeDump(metaData);
```
