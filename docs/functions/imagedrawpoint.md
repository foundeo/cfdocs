# imageDrawPoint

 Draws a point at the specified (x,y) coordinate.

```javascript
imageDrawPoint(name, x, y)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawPoint(x, y)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| x | numeric | Yes |  | The x coordinate of the point. |
| y | numeric | Yes |  | The y coordinate of the point. |

## Tag Syntax

This example shows how to draw a large square in the middle of an image.

```javascript
<!--- Use the imageNew function to create a 200x200-pixel image. ---> 
 <cfset myImage=imageNew("",200,200)> 
 <!---Set the drawing color to orange. ---> 
 <cfset imageSetDrawingColor(myImage,"orange")> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Set the drawing area to 10 pixels. ---> 
 <cfset attr = structNew()>  
 <cfset attr.width = 10> 
 <cfset imageSetDrawingStroke(myImage,attr)> 
 <!--- Draw the point at (100,100). ---> 
 <cfset imageDrawPoint(myImage,100,100)> 
 <!--- Display the image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using drawPoints member function

CF11+ Lucee4.5+ Create a new image and with this image draw 100 random points

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
for (i=1;i LTE 100;i=i+1) {
    x = randRange(0,152);
    y = randRange(0,152);
    imgObj.drawPoint(x,y);	
}
cfimage(action="writeToBrowser", source=imgObj);
```
