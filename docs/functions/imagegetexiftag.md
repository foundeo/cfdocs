# imageGetEXIFTag

 Retrieves the specified EXIF tag in an image.

```javascript
imageGetEXIFTag(name, tagName)
```

```javascript
returns string
```

## Member Function Syntax

```javascript
someImage.getEXIFTag(tagName)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| tagName | string | Yes |  | The EXIF tag name to be returned. |

## Tag Syntax

This example shows how to retrieve one element from the EXIF information associated with an image.

```javascript
<!--- Create a ColdFusion image from an existing JPEG file. ---> 
 <cfimage source="../cfdocs/images/artgallery/paul05.jpg" name="myImage"> 
 <!--- Retrieve the name of the software application used to create the original image. ---> 
 <cfset data = imageGetEXIFTag(myImage,"software")> 
 <!--- Display the name of the software. ---> 
 <cfdump var="#data#">
```

## Using getEXIFTag member function

CF11+ Lucee4.5+ Extract model of camera used for image on exiv sample page (http://www.exiv2.org/sample.html)

```javascript
imgObj = imageRead("http://www.exiv2.org/include/img_1771.jpg");
model = imgObj.getEXIFTag('Model');
writeOutput(model);
```

### Expected Result: Canon PowerShot S40
