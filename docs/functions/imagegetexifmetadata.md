# imageGetEXIFMetadata

Retrieves the Exchangeable Image File Format (EXIF) headers in an image as a CFML structure.

```javascript
imageGetEXIFMetadata(name)
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
someImage.getEXIFMetadata()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |

## Using getEXIFMetadata member function

CF11+ Lucee4.5+ Extract the EXIF meta data from exiv sample page (http://www.exiv2.org/sample.html)

```javascript
imgObj = imageRead("http://www.exiv2.org/include/img_1771.jpg");
x = imgObj.getEXIFMetadata();
writeDump(x);
```
