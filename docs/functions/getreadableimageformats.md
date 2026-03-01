# getReadableImageFormats

Returns a list of image formats that ColdFusion can read on the operating system where ColdFusion is deployed.

```javascript
getReadableImageFormats()
```

```javascript
returns string
```

## Show all available image file extensions

```javascript
lCase(listChangeDelims(getReadableImageFormats(),", "))
```
