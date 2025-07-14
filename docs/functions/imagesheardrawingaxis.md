# imageShearDrawingAxis

 Shears the drawing canvas.

```javascript
imageShearDrawingAxis(name, shrx, shry)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.shearDrawingAxis(shrx, shry)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| shrx | numeric | Yes |  | The multiplier by which coordinates are shifted in the positive x axis direction as a function of the y coordinate.e |
| shry | numeric | Yes |  | The multiplier by which coordinates are shifted in the positive y axis direction as a function of the x coordinate. |

## Using shearDrawingAxis member function

CF11+ Draw a sheared rectangle

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.shearDrawingAxis(0.5,0.5);
imgObj.drawRect(40,50,70,50,"yes");
cfimage(action="writeToBrowser", source=imgObj);
```
