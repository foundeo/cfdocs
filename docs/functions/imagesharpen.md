# imageSharpen

 Sharpens a ColdFusion image by using the unsharp mask filter.

```javascript
imageSharpen(name [, gain])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.sharpen(gain)
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |  |
| gain | numeric | No | 1.0 | Gain values can be integers or real numbers. | /Users/garethedwards/development/github/cfdocs/docs/functions/imagesharpen.md|< 0: the image is blurred. |

## Using sharpen member function

CF11+ Lucee4.5+ Sharpen an image

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.sharpen(2);
cfimage(action="writeToBrowser", source=imgObj);
```
