# isImage

Determines whether a variable returns a ColdFusion image.

```javascript
isImage(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  | The value that is checked. |

## Check local file image (Tag)

If the local file is an image, write it to the browser

```javascript
<cfset myImage = imageNew("./sample.png")>
<cfif isImage(myImage)>
	<cfimage action="writeToBrowser" source="#myImage#">
</cfif>
```

## Check online image (Script)

Output whether the online file is an image

```javascript
isImage(imageRead("https://cfdocs.org/apple-touch-icon.png");
```

### Expected Result: YES
