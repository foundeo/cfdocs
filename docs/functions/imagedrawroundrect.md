# imageDrawRoundRect

 Draws a rectangle with rounded corners.

```javascript
imageDrawRoundRect(name, x, y, width, height, arcwidth, archeight [, filled])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawRoundRect(x, y, width, height, arcwidth, archeight [, filled])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| x | numeric | Yes |  | The x coordinate of the rectangle. |
| y | numeric | Yes |  | The y coordinate of the rectangle. |
| width | numeric | Yes |  | The width of the rectangle. |
| height | numeric | Yes |  | The height of the rectangle. |
| arcwidth | numeric | Yes |  | The horizontal diameter of the arc at the four corners. |
| archeight | numeric | Yes |  | The vertical diameter of the arc at the four corners. |
| filled | boolean | No | false | Specify whether the rectangle is filled |

## Tag Syntax

This example shows how to draw a square with rounded corners.

```javascript
<!--- Create a 200x200-pixel image. ---> 
 <cfset myImage=imageNew("",200,200)> 
 <!--- Set the drawing color for the image to blue. ---> 
 <cfset imageSetDrawingColor(myImage,"blue")> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Draw a blue filled square with round corners of arcWidth=10 and arcHeight=2. ---> 
 <cfset imageDrawRoundRect(myImage,5,5,190,190,"yes",10,2)> 
 <!--- Display the image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using drawRoundRect member function

CF11+ Lucee4.5+ Create a new image. With the new image draw filled rounded rectangle (width=70, height=50) starting at point (x=40,y=50)

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.drawRoundRect(40,50,70,50,35,35,"yes");
cfimage (action="writeToBrowser", source=imgObj);
```
