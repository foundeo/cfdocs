# imageAddBorder

 Adds a rectangular border around the outside edge of a ColdFusion image.

```javascript
imageAddBorder(name, thickness [, color] [, bordertype])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.addBorder(thickness [, color] [, bordertype])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |  |
| thickness | string | Yes |  | Thickness of the border in pixels. The default value is 1. The border is added to the outside edge of the image; the image area is increased accordingly. |  |
| color | string | No | black | Only valid if the borderType is not specified or if borderType = 'constant'. |  |
| bordertype | string | No | constant | The type of border. | /Users/garethedwards/development/github/cfdocs/docs/functions/imageaddborder.md|wrap |

## Tag Syntax

Draw a green border around the outside edge of the red border.

```javascript
<cfset imageAddBorder(myImage,5,"green")>
```

## Tag Syntax

Add a 50-pixel-wide border to the outside edge of the image that is a tiled version of the image itself.

```javascript
<cfset imageAddBorder(myImage,50,"","wrap")>
```

## Tag Syntax

Create the border.

```javascript
<cfset imageAddBorder(myImage,100,"","reflect")>
```

## Tag Syntax

Create a ColdFusion image from an existing JPEG file.

```javascript
<cfset imageAddBorder(myImage,100,"","copy")>
```

## Using addBorder member function

CF11+ Lucee4.5+ Add border with optional color parameter

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.addBorder(5,"005100");
cfimage(action="writeToBrowser", source=imgObj);
```
