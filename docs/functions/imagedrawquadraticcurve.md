# imageDrawQuadraticCurve

 Draws a curved line. The curve is controlled by a single point.

```javascript
imageDrawQuadraticCurve(name, ctrlx1, ctrly1, x1, y1, x2, y2)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawQuadraticCurve(ctrlx1, ctrly1, x1, y1, x2, y2)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| x1 | numeric | Yes |  | The x coordinate of the start point of the quadratic curve segment. |
| y1 | numeric | Yes |  | The y coordinate of the start point of the quadratic curve segment. |
| ctrlx1 | string | Yes |  | The x coordinate of the first control point of the quadratic curve segment. |
| ctrly1 | numeric | Yes |  | The y coordinate of the first control point of the quadratic curve segment. |
| x2 | numeric | Yes |  | The x coordinate of the end point of the quadratic curve segment. |
| y2 | numeric | Yes |  | The y coordinate of the end point of the quadratic curve segment. |

## Tag Syntax

This example shows how to draw a curved line.OK

```javascript
<!--- Use the imageNew function to create a 400x400-pixel image. ---> 
 <cfset myImage=imageNew("",400,400)> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Set the drawing color to green. ---> 
 <cfset imageSetDrawingColor(myImage,"green")> 
 <!--- Draw a curved line on the image. ---> 
 <cfset imageDrawQuadraticCurve(myImage,120,320,5,15,380,280)> 
 <!--- Display the image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using drawQuadraticCurve member function

CF11+ Lucee4.5+ Create a new image. With the new image draw a cubic curve, starting at top left (0,0) ending at bottom right (152,152) with 1 control point at the bottom left (0,152)

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.drawQuadraticCurve(0,0,0,152,152,152);
cfimage (action="writeToBrowser", source=imgObj);
```
