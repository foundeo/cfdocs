# cacheRegionExists

Checks if the cache region exists.

```javascript
cacheRegionExists(region)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| region | string | Yes |  | Name of the cache region. |
| password | string | No |  | Lucee5+ The password for the web administrator is required to interact with Cache Connections. |

## Tag Syntax

Checking to see if the region is present in the cache

```javascript
<cfif NOT cacheRegionExists('testregion')>
    <cfset cacheRegionNew('testregion')>
</cfif>
```
