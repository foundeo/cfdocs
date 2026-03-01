# imageDrawArc

 Draws a circular or elliptical arc.

```javascript
imageDrawArc(name, x, y, width, height, startAngle, archAngle [, filled])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawArc(x, y, width, height, startAngle, archAngle [, filled])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |  |
| x | numeric | Yes |  | The x coordinate of the upper-left corner of the arc. |  |
| y | numeric | Yes |  | The y coordinate of the upper-left corner of the arc. |  |
| width | numeric | Yes |  | The width of the arc. |  |
| height | numeric | Yes |  | The height of the arc. |  |
| startAngle | numeric | Yes |  | The beginning angle in degrees. |  |
| archAngle | numeric | Yes |  | The angular extent of the arc, relative to the start angle. |  |
| filled | boolean | No | false | Specify whether the arc is filled | /Users/garethedwards/development/github/cfdocs/docs/functions/imagedrawarc.md|false |

## Tag Syntax

This example shows how to use the imageNew function to create a blank ColdFusion image that is 250 pixels wide and 180 pixels high.

```javascript
<cfset myImage=imageNew("",250,320)> 
 <!--- Set the drawing color for the arc to orange. --->  
 <cfset imageSetDrawingColor(myImage,"orange")> 
 <!--- Turn on antialiasing to improve image quality. --->  
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Draw an enclosed orange arc starting at the coordinate (5,5). --->  
 <cfset imageDrawArc(myImage,5,5,200,300,100,100,"yes")> 
 <!--- Display the image in a browser. --->  
 <cfimage action="writeToBrowser" source="#myImage#">
```

## Using drawArc member function

CF11+ Lucee4.5+ Draw a circle in the center of the image and fill with color

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.setDrawingColor("005100");
imgObj.drawArc(50,50,50,50,90,360,"yes");
cfimage(action="writeToBrowser", source=imgObj);
```
