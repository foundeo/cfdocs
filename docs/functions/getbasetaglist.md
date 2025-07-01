# getBaseTagList

Gets a comma-delimited list of uppercase ancestor tag names, as a string. The first list element is the current tag. If the current tag is nested, the next element is the parent tag. If the function is called for a top-level tag, it returns an empty string.

```javascript
getBaseTagList()
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| caller | any | No |  | Adobe only. Not aliased in Lucee |
