# imageRotate

Rotates a ColdFusion image at a specified point by a specified angle.

```javascript
imageRotate(name [, x] [, y] , angle [, interpolation])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.rotate([, x] [, y] , angle [, interpolation])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |  |
| angle | numeric | Yes |  | The rotation angle in degrees. |  |
| x | numeric | No | 2 | The x coordinate for the point of rotation |  |
| y | numeric | No | 2 | The y coordinate for the point of rotation |  |
| interpolation | string | No | nearest | Type of interpolation<br /><br />nearest: Applies the nearest neighbor method of interpolation. Image quality is lower than the other interpolation methods, but processing is fastest.<br />bilinear: Applies the bilinear method of interpolation. The quality of the image is less pixelated than the default, but processing is slower.<br />bicubic: Applies the bicubic method of interpolation. Generally, the quality of image is highest with this method and processing is slowest. | /Users/garethedwards/development/github/cfdocs/docs/functions/imagerotate.md|bicubic |

## Tag Syntax

This example shows how to rotate an image by 10 degrees.

```javascript
<cfset myImage=imageRead("http://cfdocs.org/apple-touch-icon.png")><!--- Rotate the image by 10 degrees. ---> 
 <cfset imageRotate(myImage,10)> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using rotate member function

CF11+ Rotate an image

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.rotate(90);
cfimage(action="writeToBrowser", source=imgObj);
```
