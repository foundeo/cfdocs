# imageGetIPTCtag

 Retrieves the value of the IPTC tag for a ColdFusion image.

```javascript
imageGetIPTCtag(name, tagName)
```

```javascript
returns string
```

## Member Function Syntax

```javascript
someImage.getIPTCtag(tagName)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| tagName | string | Yes |  | The IPTC tag name whose value is returned. |

## Tag Syntax

This example shows how to retrieve the caption for a JPEG file.

```javascript
<!--- Create a ColdFusion image from a JPEG file. ---> 
 <cfimage source="../cfdocs/images/artgallery/paul05.jpg" name="myImage" action="read"> 
 <!--- Retrieve the camera make used to take the original picture. ---> 
 <cfset cameraMake=imageGetIPTCtag(myImage,"make")> 
 <cfdump var="#cameraMake#">
```

## Using getIPTCtag member function

CF11+ Lucee4.5+ Extract the copyright notice for image (https://code.google.com/p/metadata-extractor/wiki/SampleOutput)

```javascript
imgObj = imageRead("http://sample-images.metadata-extractor.googlecode.com/git/FujiFilm%20FinePixS1Pro%20(1).jpg");
copyright = imgObj.getIPTCtag('Copyright Notice');
writeOutput(copyright);
```
