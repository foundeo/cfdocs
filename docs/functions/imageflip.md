# imageFlip

Flips an image across an axis.

```javascript
imageFlip(name, transpose)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.flip(transpose)
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |  |
| transpose | string | Yes | vertical | Transpose the image.<br /><br />vertical: Flip an image across an imaginary horizontal line that runs through the center of the image.<br />horizontal: Flip an image across an imaginary vertical line that runs through the center of the image.<br />diagonal: Flip an image across its main diagonal that runs from the upper-left to the lower-right corner.<br />antidiagonal: Flip an image across its main diagonal that runs from the upper-right to the lower-left corner.<br />Or rotate an image clockwise by 90, 180, or 270 degrees. | /Users/garethedwards/development/github/cfdocs/docs/functions/imageflip.md|270 |

## Tag Syntax

This example shows how to rotate an image by 270 degrees.

```javascript
<!--- Create a ColdFusion image from an existing JPEG file. ---> 
 <cfimage source="../cfdocs/images/artgallery/paul03.jpg" name="myImage"> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <!--- Rotate the image by 270 degrees. ---> 
 <cfset imageFlip(myImage,"270")> 
 <!--- Display the modified image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using flip member function

CF11+ Lucee4.5+ Flip the image vertically

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.flip("vertical");
cfimage (action="writeToBrowser", source=imgObj);
```
