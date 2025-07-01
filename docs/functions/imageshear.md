# imageShear

 Shears an image either horizontally or vertically.

```javascript
imageShear(name, shear [, direction] [, interpolation])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.shear(shear [, direction] [, interpolation])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |  |
| shear | numeric | Yes |  | Shear value. Coordinates can be integers or real numbers. |  |
| direction | string | No | horizontal | Shear direction | /Users/garethedwards/development/github/cfdocs/docs/functions/imageshear.md|vertical |
| interpolation | string | No | nearest | Type of interpolation | /Users/garethedwards/development/github/cfdocs/docs/functions/imageshear.md|bicubic: Applies the bicubic method of interpolation. Generally, the quality of image is highest with this method and processing is slowest. |

## Using shear member function

CF11+ Shear the image by a factor of 1 on a horizontal axis

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.shear(1);
cfimage(action="writeToBrowser", source=imgObj);
```
