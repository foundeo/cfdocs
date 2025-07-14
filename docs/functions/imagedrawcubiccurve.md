# imageDrawCubicCurve

 Draws a cubic curve.

```javascript
imageDrawCubicCurve(name, ctrlx1, ctrly1, ctrlx2, ctrly2, x1, y1, x2, y2)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawCubicCurve(ctrlx1, ctrly1, ctrlx2, ctrly2, x1, y1, x2, y2)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| ctrlx1 | string | Yes |  | The x coordinate of the start point of the cubic curve segment. |
| ctrly1 | numeric | Yes |  | The y coordinate of the start point of the cubic curve segment. |
| ctrlx2 | numeric | Yes |  | The x coordinate of the first control point of the cubic curve segment. |
| ctrly2 | numeric | Yes |  | The y coordinate of the first control point of the cubic curve segment. |
| x1 | numeric | Yes |  | The x coordinate of the second control point of the cubic curve segment. |
| y1 | numeric | Yes |  | The y coordinate of the second control point of the cubic curve segment. |
| x2 | numeric | Yes |  | The x coordinate of the end point of the cubic curve segment. |
| y2 | numeric | Yes |  | The y coordinate of the end point of the cubic curve segment. |

## Tag Syntax

This example shows how to draw a curved line that looks like a stylized 7.

```javascript
<!--- Use the imageNew function to create a blank ColdFusion image that is 200 pixels wide and 380 pixels high. ---> 
 <cfset myImage=imageNew("",200,380)> 
 <!--- Set the drawing color to magenta. --->  
 <cfset imageSetDrawingColor(myImage,"magenta")> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Draw a curved line that starts at (380,28) and ends at (32,56) with its first control point at (120,380) and its second control point at (5,15). ---> 
 <cfset imageDrawCubicCurve(myImage,120,380,5,15,380,28,32,56)> 
 <!--- Display the image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using drawCubicCurve member function

CF11+ Lucee4.5+ Create a new image. With the new image draw a cubic curve, starting at top left (0,0) ending at bottom right (152,152) with 2 control points, 1 half way down the left side(0,71) and other at bottom left (0,152)

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.drawCubicCurve(0,0,0,71,0,152,152,152);
cfimage (action="writeToBrowser", source=imgObj);
```
