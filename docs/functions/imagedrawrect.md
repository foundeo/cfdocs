# imageDrawRect

Draws a rectangle.

```javascript
imageDrawRect(name, x, y, width, height [, filled])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawRect(x, y, width, height [, filled])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| x | numeric | Yes |  | The x coordinate of the rectangle. |
| y | numeric | Yes |  | The y coordinate of the rectangle. |
| width | numeric | Yes |  | The width of the rectangle. |
| height | numeric | Yes |  | The height of the rectangle. |
| filled | boolean | No | false | Specify whether the rectangle is filled |

## Tag Syntax

This example shows how to draw a rectangle.

```javascript
<!--- Use the imageNew function to create a ColdFusion image that is 150 pixels wide and 200 pixels high. ---> 
 <cfset myImage=imageNew("",150,200)> 
 <!--- Set the drawing color for the image to yellow. ---> 
 <cfset imageSetDrawingColor(myImage,"yellow")> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Draw a filled yellow rectangle on the image. ---> 
 <cfset imageDrawRect(myImage,25,45,100,20,"yes")> 
 <!--- Display the image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using drawRect member function

CF11+ Lucee4.5+ Create a new image. With the new image draw filled rectangle (width=70, height=50) starting at point (x=40,y=50)

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.drawRect(40,50,70,50,"yes");
cfimage (action="writeToBrowser", source=imgObj);
```
