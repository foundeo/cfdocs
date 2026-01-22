# removeCachedQuery

 Removes the query with the details you provide from query cache.

```javascript
removeCachedQuery(SQL_, datasource, params, region___);
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| SQL | string | Yes |  | The Query SQL. |
| datasource | string | Yes |  | The datasource you ran the query on. |
| params | array | No |  | Array of parameter values passed to SQL. |
| region | string | No |  | Specifies the cache region where you can place the cache object. |

## Tag Syntax

the in-memory file system memory set in cfadmin and should return that.

```javascript
<cfset sql = 'SELECT * from art where artid = ?'> 
 <cfquery name='q' datasource='cfartgallery' cachedwithin='#createTimespan(0, 6, 0, 0)#'> 
 SELECT * from art where artid = <cfqueryPARAM value = '1' CFSQLType = 'CF_SQL_INTEGER'> 
 </cfquery> 
 <cfset a = arrayNew(1)> 
 <cfset a[1] = 1> 
 <cfset removeCachedQuery(sql,'cfartgallery', a)>
```
