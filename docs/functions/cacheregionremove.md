# cacheRegionRemove

Removes a specified cache region.

```javascript
cacheRegionRemove(region)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| region | string | Yes |  | Name of the cache region that has to be removed. |
| password | string | No |  | Lucee5+ The password for the web administrator is required to interact with Cache Connections. |

## Example Syntax

```javascript
<cfset cacheRegionRemove('testregion')>
```
