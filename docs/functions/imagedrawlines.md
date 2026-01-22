# imageDrawLines

Draws a sequence of connected lines defined by arrays of x and y coordinates.

```javascript
imageDrawLines(name, xcords, ycords [, isPolygon] [, filled])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawLines(xcords, ycords [, isPolygon] [, filled])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| xcords | numeric | Yes |  | A array of x coordinates. |
| ycords | numeric | Yes |  | A array of y coordinates. |
| isPolygon | boolean | No | false | Specify whether the lines form a polygon |
| filled | boolean | No | false | Specify whether the polygon is filled |

## Tag Syntax

This example shows how to draw a zigzag line.

```javascript
<!--- Use the imageNew function to create a 250x250-pixel image. ---> 
 <cfset myImage=imageNew("",250,250)> 
 <!--- Set the drawing color to cyan. --->  
 <cfset imageSetDrawingColor(myImage,"cyan")> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Create arrays for the x and y coordinates. ---> 
 <cfset x = arrayNew(1)> 
 <cfset y = arrayNew(1)> 
 <!--- Set the values for the x and y coordinates for three connected line segments: the first segment begins at (100,50) and ends at (50,100). The second segment begins at (50, 100) and ends at (200,100). The third segment begins at (200,100) and ends at (100,200). ---> 
     <cfset x[1] = "100"> 
     <cfset x[2] = "50"> 
     <cfset x[3] = "200"> 
     <cfset x[4] = "100"> 
     <cfset y[1] = "50"> 
     <cfset y[2] = "100"> 
     <cfset y[3] = "100"> 
     <cfset y[4] = "200"> 
 <!--- Draw the lines on the image. ---> 
 <cfset imageDrawLines(myImage,x,y)> 
 <!--- Display the image in a browser. ---> 
 <cfimage source=#myImage# action="writeToBrowser">
```

## Using drawlines member function

CF11+ Lucee4.5+ Create a new image and with this image draw a 'W'

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.drawLines([0,38,76,114,152],[0,152,0,152,0],"no","no");
cfimage(action="writeToBrowser", source=imgObj);
```
