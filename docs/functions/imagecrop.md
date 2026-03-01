# imageCrop

Crops a ColdFusion image to a specified rectangular area.

```javascript
imageCrop(name, x, y, width, height)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.crop(x, y, width, height)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| x | numeric | Yes |  | The X origin of the crop area. |
| y | numeric | Yes |  | The Y origin of the crop area. |
| width | numeric | Yes |  | The width of the crop area. |
| height | numeric | Yes |  | The height of the crop area. |

## Tag Syntax

This example shows how to crop an image.

```javascript
<!--- Create a ColdFusion image from an existing JPEG file. ---> 
 <cfimage source="../cfdocs/images/artgallery/lori05.jpg" name="myImage"> 
 <!--- Crop myImage to 100x100 pixels starting at the coordinates (10,10). ---> 
 <cfset imageCrop(myImage,10,10,100,100)> 
 <!--- Write the result to a file. ---> 
 <cfimage source="#myImage#" action="write" destination="test_myImage.jpg" overwrite="yes"> 
 <!--- Display the source image and the new image. ---> 
 <img src="../cfdocs/images/artgallery/lori05.jpg"/> 
 <img src="test_myImage.jpg"/>
```

## Using crop member function

CF11+ Lucee4.5+ Crop the image from starting point (x=25, y=25), with width=100 and height=100

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.crop(25,25,100,100);
cfimage(action="writeToBrowser", source=imgObj);
```
