# imageNegative

Inverts the pixel values of a ColdFusion image.

```javascript
imageNegative(name)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.negative()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |

## Using negative member function

CF11+ Convert image to negative

```javascript
imgObj = imageRead("https://placekitten.com/408/287");
imgObjNegative = duplicate(imgObj);
imgObjNegative.negative();
cfimage(action="writeToBrowser", source=imgObj);
cfimage(action="writeToBrowser", source=imgObjNegative);
```
