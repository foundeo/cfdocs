# imageSetDrawingTransparency

 Specifies the degree of transparency of drawing functions.

```javascript
imageSetDrawingTransparency(name, percent)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.setDrawingTransparency(percent)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |
| percent | numeric | Yes |  | Percent of transparency, a floating point number in range 0-100 |

## Using setDrawingTransparency member function

CF11+ Create a new image. With the new image write transparent text

```javascript
TextCharacteristics = { size="20", style="bold", strikethrough="false", underline="false"};
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.setDrawingTransparency(50);
imgObj.drawText("CFDocs",20,50,TextCharacteristics);
cfimage(action="writeToBrowser", source=imgObj);
```
