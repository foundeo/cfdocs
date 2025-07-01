# isImageFile

Verifies whether an image file is valid.

```javascript
isImageFile(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | string | Yes |  | Pathname to an image file. |

## Check local file path (Tag)

If the local file path is for an image, write the image to the browser

```javascript
<cfset myImage = expandPath("./sample.png")>
<cfif isImageFile(myImage)>
	<cfimage action="writeToBrowser" source="#myImage#">
</cfif>
```

## Check URL (Script)

Output whether the online file is an image

```javascript
isImageFile("https://cfdocs.org/apple-touch-icon.png");
```

### Expected Result: YES
