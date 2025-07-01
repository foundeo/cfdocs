# imageDrawText

 Draws a text string on a ColdFusion image with the baseline of the first character positioned at (x,y) in the image.

```javascript
imageDrawText(name, str, x, y, attributecollection)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.drawText(str, x, y, attributecollection)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| str | string | Yes |  | The text to draw. |
| x | numeric | Yes |  | The x coordinate for the start point of the string. |
| y | numeric | Yes |  | The y coordinate for the start point of the string. |
| attributecollection | struct | No |  | A structure used to specify the text characteristics. the following keys are supported: <br />font: The name of the font used to draw the text string. If you do not specify the font attribute, the text is drawn in the default system font. <br />size: The font size for the text string. The default value is 10 points. <br />style: The style to apply to the font ( bold,italic,boldItalic,plain (default) ). <br />strikethrough: a boolean that specify whether strikethrough is applied to the text image, default is false. <br />underline: a boolean that specify whether underline is applied to the text image, default is false. |

## Tag Syntax

This example shows how to create a text string image.

```javascript
<!--- Use the imageNew function to create a 200x100-pixel image. ---> 
 <cfset myImage=imageNew("",200,100)> 
 <!--- Set the drawing color to green. ---> 
 <cfset imageSetDrawingColor(myImage,"green")> 
 <!--- Specify the text string and the start point for the text. ---> 
 <cfset imageDrawText(myImage,"It's not easy being green.",10,50)> 
 <!--- Display the image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using drawText member function

CF11+ Lucee4.5+ Create a new image. With the new image write "CFDocs" with the text characteristics specified

```javascript
TextCharacteristics = { size="20", style="bold", strikethrough="false", underline="false"};
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.drawText("CFDocs",20,50,TextCharacteristics);
cfimage (action="writeToBrowser", source=imgObj);
```
