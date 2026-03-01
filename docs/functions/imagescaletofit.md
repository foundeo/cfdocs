# imageScaleTofit

Creates a resized image with the aspect ratio maintained.

```javascript
imageScaleTofit(name, fitWidth, fitHeight [, interpolation] [, blurFactor])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.scaleTofit(fitWidth, fitHeight [, interpolation] [, blurFactor])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The ColdFusion image on which this operation is performed. |  |
| fitWidth | numeric | Yes |  | The width of the bounding box in pixels. You can specify an integer, or an empty string ('') if the fitHeight is specified. |  |
| fitHeight | numeric | Yes |  | The height of the bounding box in pixels. You can specify an integer, or an empty string ('') if the fitWidth is specified. |  |
| interpolation | string | No |  | The interpolation method for resampling. You can specify a specific interpolation algorithm by name (for example, hamming), by image quality (for example, mediumQuality), or by performance (for example, highestPerformance). | /Users/garethedwards/development/github/cfdocs/docs/functions/imagescaletofit.md|quadratic |
| blurfactor | boolean | No |  | The blur factor used for resampling. The higher the blur factor, the more blurred the image (also, the longer it takes to resize the image). | /Users/garethedwards/development/github/cfdocs/docs/functions/imagescaletofit.md|1-10 |

## Tag Syntax

This example shows how to resize an image to fit a 100x100-pixel square while maintaining the aspect ratio.

```javascript
<!--- Create a ColdFusion image from an existing JPEG file. ---> 
 <cfimage source="../cfdocs/images/artgallery/jeff05.jpg" name="myImage"> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage,"on")> 
 <cfset imageScaleTofit(myImage,100,"","lanczos")> 
 <!--- Display the modified image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using scaleTofit member function

CF11+ Scale to fit an image to half its original size (71,71)

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.scaleTofit(71,71);
cfimage(action="writeToBrowser", source=imgObj);
```
