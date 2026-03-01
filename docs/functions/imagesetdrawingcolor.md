# imageSetDrawingColor

 Sets the current drawing color for ColdFusion images. All subsequent graphics operations use the specified color.

```javascript
imageSetDrawingColor(name, color)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.setDrawingColor(color)
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The ColdFusion image on which this operation is performed. |  |
| color | string | Yes | black | Color | /Users/garethedwards/development/github/cfdocs/docs/functions/imagesetdrawingcolor.md|List of three numbers for (R,G,B) values. Each value must be in the range 0–255. |

## Tag Syntax

This example shows how to set the drawing color and draw several objects in that color.

```javascript
<!--- Use the imageNew function to create a ColdFusion image. ---> 
 <cfset myImage=imageNew("",200,300)> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage)> 
 <!--- Set the drawing color to pink. ---> 
 <cfset imageSetDrawingColor(myImage,"pink")> 
 <!--- Draw a pink line. ---> 
 <cfset imageDrawLine(myImage,1,1,200,300)> 
 <!--- Draw a pink oval. ---> 
 <cfset imageDrawOval(myImage,40,50,80,40)> 
 <!--- Draw another pink oval. ---> 
 <cfset imageDrawOval(myImage,15,180,80,40)> 
 <!--- Draw a pink rectangle. ---> 
 <cfset imageDrawRect(myImage,100,100,45,65)> 
 <!--- Display the image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowse">
```

## Using setDrawingColor member function

CF11+ Create a new image and with this image draw a 'W' in blue (#116185)

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.setDrawingColor('116185');
imgObj.drawLines([0,38,76,114,152],[0,152,0,152,0],"no","no");
cfimage(action="writeToBrowser", source=imgObj);
```
