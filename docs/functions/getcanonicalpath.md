# getCanonicalPath

Returns the canonical path of the input path. If a directory a trailing slash is used on Lucee, but not on ACF.

```javascript
getCanonicalPath(path)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  |  |

## getCanonicalPath Example

Returns the canonical path of the input path.

```javascript
writeOutput( getCanonicalPath(getBaseTemplatePath()) );
```
