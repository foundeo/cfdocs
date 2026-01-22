# imageSetAntialiasing

Switches antialiasing on or off in rendered graphics.

```javascript
imageSetAntialiasing(image [, antialias])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.setAntialiasing(antialias)
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| image | string | Yes |  | The ColdFusion image on which this operation is performed. |  |
| antialias | string | No | on | Antialiasing switch | /Users/garethedwards/development/github/cfdocs/docs/functions/imagesetantialiasing.md|false |

## Tag Syntax

This example shows how to turn off antialiasing for a ColdFusion image.

```javascript
<!--- Create a ColdFusion image from an existing JPEG file. --->
<cfset myImage = imageNew("../cfdocs/images/artgallery/elecia02.jpg")>
<!--- Turn off antialiasing. --->
<cfset imageSetAntialiasing(myImage,"off")>
<!--- Display the modified image in a browser. --->
<cfimage source="#myImage#" action="writeToBrowser">
```

## Using setAntialiasing member function

CF11+ Switch the antialiasing off

```javascript
imgObj = imageRead("https://cfdocs.org/apple-touch-icon.png");
imgObj.setAntialiasing('off');
cfimage(action="writeToBrowser", source=imgObj);
```
