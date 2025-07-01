# imageSetBackgroundColor

 Sets the background color for the ColdFusion image. The background color is used for clearing a region. Setting the background color only affects the subsequent imageClearRect calls

```javascript
imageSetBackgroundColor(name, color)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.setBackgroundColor(color)
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The ColdFusion image on which this operation is performed. |  |
| color | string | Yes | black | Background color | /Users/garethedwards/development/github/cfdocs/docs/functions/imagesetbackgroundcolor.md|List of three numbers for (R,G,B) values. Each value must be in the range 0–255. |

## Tag Syntax

This example shows how to set the background color, and then draw a rectangle on an image filled with that color.

```javascript
<!--- Create a ColdFusion image from an existing JPEG file. ---> 
 <cfimage name="myImage" source="../cfdocs/images/artgallery/maxwell01.jpg"> 
 <!--- Turn on antialiasing to improve image quality. ---> 
 <cfset imageSetAntialiasing(myImage)> 
 <!--- Set the background color to magenta. ---> 
 <cfset imageSetBackgroundColor(myImage,"magenta")> 
 <!--- Clear the rectangle specified on myImage with the background color specified for the image. ---> 
 <cfset imageClearRect(myImage,36,45,100,100)> 
 <!--- Display the modified image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using setBackgroundColor member function

CF11+ Clears the specified rectangle  (50x50) from the center of the image (x=50, y-50) using a new background color (#116185)

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.setBackgroundColor('116185');
imgObj.clearRect(50,50,50,50);
cfimage(action="writeToBrowser", source=imgObj);
```
