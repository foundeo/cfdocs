# imageRead

 Reads the source pathname or URL and creates a ColdFusion image.

```javascript
imageRead(path)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  | On-disk or in-memory pathname or URL of the source image. |

## Using script syntax

Read an image from URL and output

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
cfimage(action="writeToBrowser", source=imgObj);
```
