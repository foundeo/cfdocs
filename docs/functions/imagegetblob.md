# imageGetBlob

Retrieves the bytes of the underlying image. The bytes are in the same image format as the source image.

```javascript
imageGetBlob(source)
```

```javascript
returns binary
```

## Member Function Syntax

```javascript
someImage.getBlob()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| source | string | Yes |  | The ColdFusion image on which this operation is performed. |

## Using getBlob() member function

CF11+ Lucee4.5+ Retrieve the bytes of the underlying image

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
blob = imgObj.getBlob();
writeDump(blob);
```
