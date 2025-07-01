# imageNew

 Creates a ColdFusion image.

```javascript
imageNew([source] [, width] [, height] [, imagetype] [, canvascolor])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| source | string | No |  | The source image path, URL, a variable that is read into the new image, or a Java buffered image. |
| width | numeric | No |  | The width of the new image. Valid when the height is specified and the source is not. |
| height | numeric | No |  | The height of the new image. Valid when the width is specified and the source is not. |
| imagetype | string | No |  | The type of the image to create (Valid only when width and height are specified), |
| canvascolor | string | No | black | Color of the image canvas. Possible values are:

Hexadecimal value of RGB color. For example, specify the color white as ##FFFFFF or FFFFFF.
String value of color (for example, 'black', 'red', 'green').
List of three numbers for (R,G,B) values. Each value must be in the range 0-255. |

## Tag Syntax

Use the imageNew function to create a 200x200-pixel image in ARGB format.

```javascript
<cfset myImage = imageNew("",200,200,"argb")> 
<cfimage action="writeTobrowser" source="#myImage#">
```

## Script Syntax

This example shows how to create a ColdFusion image from a URL.

```javascript
<cfset myImage = imageNew("http://www.google.com/images/logo_sm.gif")> 
<cfset imageWrite(myImage,"google_via_imagenew.png")> 
<img src="google_via_imagenew.png">
```
