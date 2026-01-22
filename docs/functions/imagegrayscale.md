# imageGrayScale

 Converts a ColdFusion image to grayscale.

```javascript
imageGrayScale(name)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.grayScale()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |

## Using grayScale member function

CF11+ Lucee4.5+ Convert image to grayScale

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
imgObj.grayScale();
cfimage(action="writeToBrowser", source=imgObj);
```
