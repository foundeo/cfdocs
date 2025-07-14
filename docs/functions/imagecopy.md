# imageCopy

 Copies a rectangular area of an image.

```javascript
imageCopy(name, x, y, width, height [, dx] [, dy])
```

```javascript
returns any
```

## Member Function Syntax

```javascript
someImage.copy(x, y, width, height [, dx] [, dy])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The ColdFusion image on which this operation is performed. |
| x | numeric | Yes |  | The x coordinate of the source rectangle. |
| y | numeric | Yes |  | The y coordinate of the source rectangle. |
| width | numeric | Yes |  | The width of the source rectangle. |
| height | numeric | Yes |  | The height of the source rectangle. |
| dx | numeric | No |  | The x coordinate of the destination rectangle. |
| dy | numeric | No |  | The y coordinate of the destination rectangle. |

## Using copy member function

CF11+ Lucee4.5+ Copy the center of the image, rotate it 180 degrees about its center and paste it back into the original image

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
copiedImgObj = imgObj.copy(50,50,50,50);
copiedImgObj.rotate(25,25,180,"bicubic");
imgObj.paste(copiedImgObj,50,50);
cfimage(action="writeToBrowser", source=imgObj);
```
