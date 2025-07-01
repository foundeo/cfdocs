# imageDrawOval

 Draws an oval.

```javascript
imageDrawOval(name, x, y, width, height [, filled])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawOval(x, y, width, height [, filled])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| x | numeric | Yes |  | The x coordinate of the upper left corner of the oval to draw. |
| y | numeric | Yes |  | The y coordinate of the upper left corner of the oval to draw. |
| width | numeric | Yes |  | The width of the oval to draw. |
| height | numeric | Yes |  | The height of the oval to draw. |
| filled | boolean | No | false | Specify whether the oval is filled |

## Tag Syntax

This example shows how to draw a green filled oval.

```javascript
<!--- Use the imageNew function to create a 200x110-pixel image. ---> 
 <cfset myImage=imageNew("",200,110)> 
 <!--- Set the drawing color to green. ---> 
 <cfset imageSetDrawingColor(myImage,"green")> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Draw a filled green oval on the image. ---> 
 <cfset imageDrawOval(myImage,5,5,190,100,"yes")> 
 <!--- Display the image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using drawOval member function

CF11+ Lucee4.5+ Create a new image and with this image draw a white oval (width=50, height=70) start from (50,40)

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.drawOval(50,40,50,70,"yes");
cfimage(action="writeToBrowser", source=imgObj);
```
