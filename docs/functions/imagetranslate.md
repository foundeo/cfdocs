# imageTranslate

 Copies an image to a new location on the plane.

```javascript
imageTranslate(name, xTrans, yTrans [, interpolation])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.translate(xTrans, yTrans [, interpolation])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |  |
| xTrans | numeric | Yes |  | Displacement in the x direction. |  |
| yTrans | numeric | Yes |  | Displacement in the y direction. |  |
| interpolation | string | No | nearest | Type of interpolation | /Users/garethedwards/development/github/cfdocs/docs/functions/imagetranslate.md|bicubic: Applies the bicubic method of interpolation. Generally, the quality of image is highest with this method and processing is slowest. |

## Using translate member function

CF11+ copy the original image to a new location on the plane

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.translate(35,35);
imgObj.drawRect(40,50,70,50,"yes");
cfimage(action="writeToBrowser", source=imgObj);
```
