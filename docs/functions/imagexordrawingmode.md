# imageXORDrawingMode

Sets the paint mode of the image to alternate between the image's current color and the new specified color.

```javascript
imageXORDrawingMode(image, color)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.xorDrawingMode(color)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| image | string | Yes |  | The image on which this operation is performed. |
| color | string | Yes | black | XOR alternation color. The values can be:<br />- Hexadecimal value of the RGB color. For example, specify the color white as `##FFFFFF` or `FFFFFF`.<br />- String value of color (for example, `black`, `red`, `green`).<br />- List of three numbers for (R,G,B) values. Each value must be in the range 0-255. |

## Using xorDrawingMode member function

CF11+ Create a new image, set the xorDrawingMode to be the background color, draw a white rectangle, set drawing color to white, draw some points on the image. Where point pixels are the same as background color use XOR color

```javascript
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.xorDrawingMode("149c82");
imgObj.setDrawingColor("white");
imgObj.drawRect(50,50,50,50,"yes");
for (i=1;i LTE 100;i=i+1) {
	x = randRange(0,152);
	y = randRange(0,152);
	imgObj.drawPoint(x,y);
}
cfimage(action="writeToBrowser", source=imgObj);
```
