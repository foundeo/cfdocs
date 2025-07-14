# imageGetBufferedImage

 Returns the java.awt.BufferedImage object underlying the current ColdFusion image.

```javascript
imageGetBufferedImage(name)
```

```javascript
returns any
```

## Member Function Syntax

```javascript
someImage.getBufferedImage()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |

## Using getBufferedImage member function

CF11+ Lucee4.5+ Call getWidth() on the underlying java.awt.BufferedImage object of the image

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
x = imgObj.getBufferedImage();
writeOutput(x.getWidth());
```
