# imageMakeTranslucent

 Create a new translucent image with given percentage of translucence.

```javascript
imageMakeTranslucent (img, percent__);
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| img | string | Yes |  | The ColdFusion image on which this operation is performed. |
| percentage | numeric | Yes |  | The percent of translucence: 0 = opaque, 100=transparent. Decimal values are supported |

## Tag Syntax

The following example illustrates three images with the second one translucent than first and the third one translucent than the second.

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
 <cfset x =imageMakeTranslucent(myImage,50)> 
 <cfimage source='#x#' action='writeToBrowser' > 
 <cfset x =imageMakeTranslucent(myImage,75)> 
 <cfimage source='#x#' action='writeToBrowser' > 
 <cfset x =imageMakeTranslucent(myImage,100)> 
 <cfimage source='#x#' action='writeToBrowser' >
```
