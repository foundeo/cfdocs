# imageGetWidth

 Retrieves the width of the specified ColdFusion image.

```javascript
imageGetWidth(name)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someImage.getWidth()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |

## Using getWidth member function

CF11+ Lucee4.5+ Extract the width of an image

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
width = imgObj.getWidth();
writeOutput(width);
```
