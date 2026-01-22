# imageDrawLine

Draws a single line defined by two sets of x and y coordinates on a ColdFusion image.

```javascript
imageDrawLine(name, x1, y1, x2, y2)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawLine(x1, y1, x2, y2)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| x1 | numeric | Yes |  | The x coordinate for the start point of the line. |
| y1 | numeric | Yes |  | The y coordinate for the start point of the line. |
| x2 | numeric | Yes |  | The x coordinate for the end point of the line. |
| y2 | numeric | Yes |  | The y coordinate for the end point of the line. |

## Tag Syntax

This example shows how to draw a square bisected by a diagonal line.

```javascript
<!--- Use the imageNew function to create a 100x100-pixel image. ---> 
 <cfset myImage=imageNew("",100,100)> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Draw a diagonal line that bisects the square. ---> 
 <cfset imageDrawLine(myImage,0,0,100,100)> 
 <!--- Display the image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using drawline member function

CF11+ Lucee4.5+ Create a new image and with this image draw a diagonal line from the top left (0,0) to the bottom right (152,152)

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.drawLine(0,0,152,152);
cfimage (action="writeToBrowser", source=imgObj);
```
