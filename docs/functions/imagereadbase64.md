# imageReadBase64

 Creates a ColdFusion image from a Base64 string.

```javascript
imageReadBase64(string)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | a variable or Base64 string |

## Using script syntax

convert base64 representation of a small red dot to an image

```javascript
imgObj = imageReadBase64('iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==');
cfimage(action="writeToBrowser", source=imgObj);
```
