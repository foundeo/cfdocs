# cfimage

Creates a ColdFusion image that can be manipulated by using image functions.
You can use the cfimage tag to perform common image manipulation operations as a shortcut to Image functions.
You can use the cfimage tag independently or in conjunction with image functions.

### Syntax

```html
<cfimage>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfimage();
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| action | string | No | read | The action to take. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfimage.md|writeToBrowser |
| angle | numeric | No |  | Angle in degrees to rotate the image. |  |
| color | string | No |  | (border) Border color.
Hexadecimal value or supported named color.
For a hexadecimal value, use the form "##xxxxxx" or "xxxxxx". (required) |  |
| destination | string | No |  | Absolute or relative pathname where the image output is written.
The image format is determined by the file extension.
The convert and write actions require a destination.
The border, captcha, resize, and rotate actions require either a name attribute or a destination attribute.
You can specify both.
Scorpio supports only CAPTCHA images in PNG format.
If you do not enter a destination, the CAPTCHA image is placed inline in the HTML output and displayed in the web browser. |  |
| difficulty | string | No | low | Level of complexity of the CAPTCHA text. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfimage.md|low |
| fontSize | numeric | No |  | Font size of the text in the CAPTCHA image.
The value must be an integer. |  |
| format | string | No |  | Format of the image displayed in the browser.
If you do not specify a format, the image is displayed in PNG format.
You cannot display a GIF image in a browser.
GIF images are displayed in PNG format. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfimage.md|jpeg |
| height | numeric | No |  | Height in pixels of the image.
For the resize attribute, you also can specify the height as a percentage (an integer followed by the "%" symbol).
The value must be an integer. |  |
| isBase64 | boolean | No | false | Specifies whether the source is a Base64 string or not. |  |
| name | string | No |  | Name of the ColdFusion image variable to create.
The read action requires name attribute.
The border, resize, and rotate options require a name attribute or a destination attribute.
You can specify both. |  |
| overwrite | boolean | No | false | Valid only if the destination attribute is specified.
If the destination file already exists, ColdFusion generates an error if the overwrite option is not set to yes. |  |
| quality | numeric | No | 0.75 | Quality of the JPEG destination file.
Applies only to files with an extension of JPG or JPEG.
Valid values are fractions that range from 0 through 1
(the lower the number, the lower the quality). |  |
| source | any | No |  | URL of the source image; for example, "http://www.google.com/ images/logo.gif"
Absolute or relative pathname of the source image; for example, "c:\wwwroot\images\logo.jpg"
ColdFusion image variable containing another image, BLOB, or byte array; for example, "#myImage#" 
Base64 string; for example, "data:image/jpg;base64,/9j/ 4AAQSkZJRgABAQA.............." |  |
| structName | string | No |  | Name of the ColdFusion structure to be created. |  |
| text | string | No |  | Text string displayed in the CAPTCHA image.
Use capital letters for better readability. |  |
| thickness | numeric | No | 1 | Border thickness in pixels.
The border is added to the outside edge of the source image,
increasing the image area accordingly.
The value must be an integer. |  |
| width | string | No |  | Width in pixels of the image.
For resize, you also can specify the width as a percentage
(an integer followed by the "%" symbol).
The value must be an integer. |  |
| fonts | string | No |  | One or more valid fonts to use for the CAPTCHA text. Separate multiple fonts with commas. ColdFusion supports only the system fonts that the JDK can recognize. |  |
| interpolation | string | No | highestQuality | CF10+ Used when action=resize determines the interpolation algorithm to use. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfimage.md|quadratic |

## Border action

Add a red border of 5 pixels to an image, write the output to a variable.

```html
<cfimage action="border" source="#sourceImage#" size=5 color="red" name="withborder">
```

## Captcha action

Generate a CAPTCHA style image using medium difficulty.

```html
<cfimage action="captcha" width="200" height="50" text="Captcha!" difficulty="medium" fontSize="18" fonts="Comic Sans MS,Times New Roman">
```

## Convert action

Convert an image to a different format (in this case PNG).

```html
<cfimage action="convert" source="#sourceImage#" destination="#expandPath( 'destination.png' )#" overwrite="true">
```

## Info action

Retrieve meta data from an image and stores that as a structure in a variable.

```html
<cfimage action="info" source="http://lorempixel.com/60/50/" structname="imageInfo">
<cfdump var="#imageInfo#">
```

## Read action

Tag syntax for reading an image from a URL.

```html
<cfimage action="read" name="sourceImage" source="http://lorempixel.com/60/50/">
```

## Resize action

Example of resizing an image stored in a variable and storing the result in a variable.

```html
<cfimage action="resize" source="#sourceImage#" height="200" width="200" name="resized">
```

## Rotate action

Rotate an image 30 degrees clockwise.

```html
<cfimage action="rotate" source="#sourceImage#" destination="#expandPath( 'rotated.jpg' )#" overwrite="true" angle="30" quality="1">
```

## Write action

Example of writing an image as an 80% compressed jpg image.

```html
<cfimage action="write" source="#sourceImage#" destination="#expandPath( 'newImage.jpg' )#" overwrite="true" quality=".2">
```

## WriteToBrowser action

Generates HTML to output the image in place.

```html
<cfimage action="writeToBrowser" source="#sourceImage#">
```
