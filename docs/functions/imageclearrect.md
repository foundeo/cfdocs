# imageClearRect

 Clears the specified rectangle by filling it with the background color of the current drawing surface.

```javascript
imageClearRect(name, x, y, width, height)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.clearRect(x, y, width, height)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed |
| x | numeric | Yes |  | The X coordinate of the rectangle to clear. |
| y | numeric | Yes |  | The Y coordinate of the rectangle to clear. |
| width | numeric | Yes |  | The width of the rectangle to clear. |
| height | numeric | Yes |  | The height of the rectangle to clear. |

## Tag Syntax

This example shows how to set the background color to green and draws four rectangles in that color on the image.

```javascript
<!--- Create a ColdFusion image from an existing JPEG file. ---> 
 <cfimage source="../cfdocs/images/artgallery/jeff05.jpg" name="myImage"> 
 <!--- Set the background color to green. ---> 
 <cfset imageSetBackgroundColor(myImage,"green")> 
 <!--- Draw four rectangles in the background color. ---> 
 <cfset imageClearRect(myImage,10,25,50,50)> 
 <cfset imageClearRect(myImage,100,25,50,50)> 
 <cfset imageClearRect(myImage,10,100,50,50)> 
 <cfset imageClearRect(myImage,100,100,50,50)> 
 <!--- Save the modified ColdFusion image to a file. ---> 
 <cfimage source="#myImage#" action="write" destination="test_myImage.jpeg" overwrite="yes"> 
 <!--- Display the source image and the new image. ---> 
 <img src="../cfdocs/images/artgallery/jeff05.jpg"/> 
 <img src="test_myImage.jpeg"/>
```

## Using clearRect member function

CF11+ Lucee4.5+ Clears the specified rectangle  (50x50) from the center of the image (x=50, y-50)

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.clearRect(50,50,50,50);
cfimage(action="writeToBrowser", source=imgObj);
```
