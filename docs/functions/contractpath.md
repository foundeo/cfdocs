# contractPath

Opposite of expandpath.

Tries to match a given absolute path to mappings in the environment and will return a path that is contracted by the shortest matched mapping. If there are no matches, Lucee returns the absolute path it was given.

```javascript
contractPath(path [, placeholder])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path_absolute | string | Yes |  | The absolute path |
| placeholder | boolean | No | false | A boolean indicating whether Lucee placeholder names should be prefixed to the path. |
