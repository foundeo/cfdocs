# imageDrawBeveledRect

Draws a rectangle with beveled edges.

```javascript
imageDrawBeveledRect(name, x, y, width, height, raised [, filled])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawBeveledRect(x, y, width, height, raised [, filled])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| x | numeric | Yes |  | The x coordinate of the rectangle. |
| y | numeric | Yes |  | The y coordinate of the rectangle. |
| width | numeric | Yes |  | The width of the rectangle. |
| height | numeric | Yes |  | The height of the rectangle. |
| raised | boolean | Yes | false | Specify whether the rectangle appears raised above the surface or sunk into the surface |
| filled | boolean | No | false | Specify whether the rectangle is filled. |

## Tag Syntax

This example shows how to create a bevel-edged rectangle.

```javascript
<!--- Use the imageNew function to create a 200x200-pixel image. ---> 
 <cfset myImage=imageNew("",200,200)> 
 <!--- Turn on antialiasing to improve image quality. --->  
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Set the drawing color for the image to light gray. ---> 
 <cfset imageSetDrawingColor(myImage,"lightgray")> 
 <!--- Draw a 3D gray, filled, raised rectangle. --->  
 <cfset imageDrawBeveledRect(myImage,50,50,100,75,"yes","yes")> 
 <!--- Display the image in a browser. --->  
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using drawBeveledRect member function

CF11+ Lucee4.5+ Create a new image and place a raised beveled rectangle at its center

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.drawBeveledRect(50,50,50,50,"yes","yes");
cfimage(action="writeToBrowser", source=imgObj);
```
