# imageBlur

 Smooths (blurs) the ColdFusion image.

```javascript
imageBlur(name [, blurradius])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.blur(blurradius)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| blurradius | numeric | No | 3 | The size of the blur radius. Value must be greater than or equal to 3 and less than or equal to 10. |

## Tag Syntax

This example shows how to blur an image by a radius of 10.

```javascript
<cfset imageBlur(myImage,10)>
```

## Using imageBlur member function

CF11+ Lucee4.5+ Smooth or blur an image

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.blur(5);
cfimage(action="writeToBrowser", source=imgObj);
```
