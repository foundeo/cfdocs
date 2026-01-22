# expandPath

Creates an absolute, platform-appropriate path that is equivalent to the value of 'path', appended to the base path. This function (despite its name) can accept an absolute or relative path in the 'path' attribute.

```javascript
expandPath(path)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  | Relative or absolute directory reference or filename, within the current directory, (.\ and ..\) to convert to an absolute path. Can include forward or backward slashes. |

## Expand the current path

```javascript
expandPath("./")
```

## Expand the parent folder path

```javascript
expandPath("../")
```

## Expand the path to a subfolder

```javascript
expandPath("path/to/subfolder")
```
