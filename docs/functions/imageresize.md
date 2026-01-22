# imageResize

 Resizes a ColdFusion image.

```javascript
imageResize(name, width, height, interpolation, blurfactor)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.resize(width, height, interpolation, blurfactor)
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |  |
| width | numeric | Yes |  | New width of the image. If this value is blank, the width is calculated proportionately to the height. |  |
| height | numeric | Yes |  | New height of the image. If this value is blank, the height is calculated proportionately to the width. |  |
| interpolation | string | No |  | The interpolation method for resampling. You can specify a specific interpolation algorithm by name (for example, hamming), by image quality (for example, mediumQuality), or by performance (for example, highestPerformance). | /Users/garethedwards/development/github/cfdocs/docs/functions/imageresize.md|quadratic |
| blurfactor | boolean | No |  | The blur factor used for resampling. The higher the blur factor, the more blurred the image (also, the longer it takes to resize the image). | /Users/garethedwards/development/github/cfdocs/docs/functions/imageresize.md|1-10 |

## Tag Syntax

This example shows how to resize an image to 50% of original size and resize it proportionately to the new width. Notice that the height is blank.

```javascript
<cfset myImage=imageNew("http://www.google.com/images/logo_sm.gif")> 
 <cfset imageResize(myImage,"50%","","blackman",2)> 
 <!--- Save the modified image to a file called "test_myImage.jpeg" and display the image in a browser. ---> 
 <cfimage source="#myImage#" action="write" destination="test_myImage.jpeg" overwrite="yes"> 
 <!--- Display the source image and the thumbnail image. ---> 
 <img src="http://www.google.com/images/logo_sm.gif"/> 
 <img src="test_myImage.jpeg"/>
```

## Using resize member function

CF11+ Resize an image

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.resize(50,50);
cfimage(action="writeToBrowser", source=imgObj);
```
