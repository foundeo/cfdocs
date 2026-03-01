# imageTranslateDrawingAxis

 Translates the origin of the image context to the point (x,y) in the current coordinate system. Modifies the image context so that its new origin corresponds to the point (x,y) in the image's original coordinate system.

```javascript
imageTranslateDrawingAxis(name, x, y)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.translateDrawingAxis(x, y)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| x | numeric | Yes |  | x coordinate |
| y | numeric | Yes |  | y coordinate |

## Using translateDrawingAxis member function

CF11+ Draw a rectangle after the drawing axis has been moved

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.translateDrawingAxis(50,50);
imgObj.drawRect(40,50,70,50,"yes");
cfimage(action="writeToBrowser", source=imgObj);
```
