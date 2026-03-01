# cacheRegionNew

Creates a new custom cache region (if no cache region exists).

```javascript
cacheRegionNew(region [, properties] [, throwOnError])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| region | string | Yes |  | Name of the new cache region to be created. |
| properties | struct | No |  | Struct that contains the cache region properties. |
| throwOnError | boolean | No | true | A Boolean value specifying if to throw an exception if the cache region name you specify already exists. |
| password | string | No |  | Lucee5+ The password for the web administrator is required to interact with Cache Connections. |

## Tag Syntax

Defining properties for the struct

```javascript
<cfset defaultCacheProps = structNew()> 
 <cfset defaultCacheProps.CLEARONFLUSH = 'true'> 
 <cfset defaultCacheProps.DISKEXPIRYTHREADINTERVALSECONDS = '3600'> 
 <cfset defaultCacheProps.DISKPERSISTENT = 'false'> 
 <cfset defaultCacheProps.DISKSPOOLBUFFERSIZEMB = '30'> 
 <cfset defaultCacheProps.ETERNAL = 'false'> 
 <cfset defaultCacheProps.MAXELEMENTSINMEMORY = '5'> 
 <cfset defaultCacheProps.MAXELEMENTSONDISK = '10'> 
 <cfset defaultCacheProps.MEMORYEVICTIONPOLICY = 'LRU'> 
 <cfset defaultCacheProps.OBJECTTYPE = 'OBJECT'> 
 <cfset defaultCacheProps.OVERFLOWTODISK = 'true'> 
 <cfset defaultCacheProps.TIMETOLIVESECONDS = '5'> 
 <cfset defaultCacheProps.TIMETOIDLESECONDS = '30'> 
 <cfset cacheRegionNew('testregion',#defaultCacheProps#,false)> 
 <!--- Defining a struct object ---> 
 <cfset obj1 = structNew()> 
 <cfset obj1.name = 'xyz'> 
 <cfset timeToLive = createTimespan(0,0,5,0)> 
 <cfset timeToIdle = createTimespan(0,0,10,0)> 
 <!--- Putting Cache in the USD specific cache ---> 
 <cfoutput>Starting to write to cache.</cfoutput> 
 <cfset cachePut('obj1',obj1,timetoLive,timeToIdle,'testregion')> 
 <cfoutput>Trying to fetch cached item...</cfoutput> 
 <cfset obj = cacheGet('obj1','testregion')> 
 <br/> 
 <cfoutput>Done!!<br></cfoutput> 
 <cfoutput>#obj.name#</cfoutput>
```
