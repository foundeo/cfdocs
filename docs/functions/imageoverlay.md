# imageOverlay

 Reads two source ColdFusion images and overlays the second source image on the first source image.

```javascript
imageOverlay(source1, source2 [, rule, alpha])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.overlay(source2 [, rule, alpha])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| source1 | string | Yes |  | The image that is the bottom layer in the image. |
| source2 | string | Yes |  | The image that is the top layer (overlaid on the source1 image) in the image. |
| rule | string | No |  | CF10+ Compositing Rule |
| alpha | string | No |  | CF10+ The percentage value of transparency |

## Tag Syntax

This example shows how to overlay a smaller image on a larger image.

```javascript
<!--- Create a ColdFusion image from an existing JPEG file and enlarge it by 150%. This image is displayed in the background. --->
<cfimage source="../cfdocs/images/artgallery/maxwell01.jpg" name="myImage" action="resize" width="150%" height="150%">
 <!--- Turn on antialiasing to improve image quality. --->
<cfset imageSetAntialiasing(myImage,"on")>
<!--- Create a ColdFusion image from an existing JPEG file. This image is overlaid on the background image. --->
<cfimage source="../cfdocs/images/artgallery/viata05.jpg" name="topImage">
<!--- Overlay the top image on the background image. --->
<cfset imageOverlay(myImage,topImage)>
<!--- Display the combined image in a browser. --->
<cfimage source="#myImage#" action="writeToBrowser">
```

## Using overlay member function

CF11+ Lucee4.5+ Overlay one image on the other

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
topImg = imageNew("",50,50,"rgb","ffffff");
imgObj.overlay(topImg);
cfimage(action="writeToBrowser", source=imgObj);
```
