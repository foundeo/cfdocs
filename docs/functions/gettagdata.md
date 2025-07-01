# getTagData

Return information to a Tag as Struct

```javascript
getTagData(nameSpaceWithSeperator, tagName)
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| nameSpaceWithSeperator | string | Yes |  |  |  |
| tagName | string | Yes |  |  |  |
| dialect | string | No | current template's dialect | Define the dialect you want details for | /Users/garethedwards/development/github/cfdocs/docs/functions/gettagdata.md|Lucee |

## Output information about a tag

Returns a structure storing information about &lt;cfmail&gt;

```javascript
getTagData('cf','mail')
```
