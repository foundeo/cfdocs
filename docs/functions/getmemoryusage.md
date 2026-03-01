# getMemoryUsage

Return detailed information to the memory usage of the container.

```javascript
getMemoryUsage([type])
```

```javascript
returns query
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| type | string | No |  | Specify the type of memory information to return. If not specified, both types are returned. | /Users/garethedwards/development/github/cfdocs/docs/functions/getmemoryusage.md|non_heap |

## Dump memory usage query

```javascript
writeDump(getMemoryUsage());
```
