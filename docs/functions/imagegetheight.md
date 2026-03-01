# imageGetHeight

Retrieves the height of the ColdFusion image in pixels.

```javascript
imageGetHeight(name)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someImage.getHeight()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |

## Using getHeight member function

CF11+ Lucee4.5+ Extract the height of an image

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
height = imgObj.getHeight();
writeOutput(height);
```
