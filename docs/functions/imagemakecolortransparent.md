# imageMakeColorTransparent

 Creates an image and sets a transparent color.

```javascript
imageMakeColorTransparent(img, color__);
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| img | string | Yes |  | The ColdFusion image on which this operation is performed. |
| color | string | Yes |  | The transparent color: Hexadecimal, String value, Default is black. |

## Tag Syntax

```javascript
<cfset myImage=imageNew('',200,110)> 
 <!--- Set the drawing color to green. ---> 
 <cfset imageSetDrawingColor(myImage,'green')>  
 <!--- Turn on antialiasing to improve image quality. --->  
 <cfset imageSetAntialiasing(myImage,'on')> 
 <!--- Draw a filled green oval on the image. ---> 
 <cfset imageDrawOval(myImage,5,5,190,100,'yes')> 
 <!--- Display the image in a browser. --->  
 <cfoutput>PNG image<br></cfoutput> 
 <cfset imageWrite(myImage,'#expandPath('.')#/png.png')> 
 <cfset myImage = imageRead('#expandPath('.')#/png.png')> 
 <cfimage source='#myImage#' action='writeToBrowser' > 
 <cfset x =imageMakeColorTransparent(myImage,'green')> 
 <cfimage source='#x#' action='writeToBrowser' >
```
