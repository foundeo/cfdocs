# imageCaptcha

Provides information about the time when the current application scope was created.

```javascript
imageCaptcha()
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| text | string | Yes |  | Text in the image captcha. |
| height | numeric | Yes |  | Height of the image in pixels. |
| width | numeric | Yes |  | Width of the image in pixels. |
| difficulty | string | No | low | Complexity of the image. |
| fonts | any | No | arial | One or more fonts for the CAPTCHA text, as an array or as string list (separated by commas). Lucee supports the system fonts recognized by JDK only. |
| fontsize | numeric | No | 24 | Font size for text of the image. |
| fontcolor | string | No | black | Font color for text of the image. |

## Script Syntax

A 300px by 100px image captcha at medium difficulty.

```javascript
imagewritetobrowser(imagecaptcha( 'abcxyz', 100, 300, 'medium'));
```

### Expected Result: An 300px by 100px image captcha with the letters 'abcxyz'
