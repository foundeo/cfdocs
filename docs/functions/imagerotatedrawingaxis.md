# imageRotateDrawingAxis

 Rotates all subsequent drawing on a ColdFusion image at a specified point by a specified angle.

```javascript
imageRotateDrawingAxis(name, angle [, x] [, y])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.rotateDrawingAxis(angle [, x] [, y])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The ColdFusion image on which this operation is performed. |
| angle | numeric | Yes |  | The rotation angle in degrees. |
| x | numeric | No | 0 | The x coordinate for the point of rotation. |
| y | numeric | No | 0 | The y coordinate for the point of rotation. |

## Tag Syntax

This example shows how to create an image with three shapes drawn on the same axis.

```javascript
<!--- Use imageNew to create a 300x300-pixel image. ---> 
 <cfset myImage=imageNew("",300,300)> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Set the drawing axis to 30 degrees and the point of rotation at (10,10). ---> 
 <cfset imageRotateDrawingAxis(myImage,30,10,10)> 
 <!--- Set the drawing color to blue. ---> 
 <cfset imageSetDrawingColor(myImage,"blue")> 
 <!--- Draw three shapes with the same color and drawing axis. ---> 
 <cfset imageDrawRect(myImage,150,10,10,150,"yes")> 
 <cfset imageDrawOval(myImage,200,40,45,65,"yes")> 
 <cfset imageDrawRect(myImage,275,10,10,150,"yes")> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using rotateDrawingAxis member function

CF11+ Create a new image, rotate the drawing axis by 45° about the center (71,71) and draw a 'W'

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.rotateDrawingAxis(45,71,71);
imgObj.drawLines([0,38,76,114,152],[0,152,0,152,0],"no","no");
cfimage(action="writeToBrowser", source=imgObj);
```
