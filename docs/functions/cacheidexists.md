# cacheIdExists

Used to find if a cached object exists in the cache region. The region can be the default cache region (either at server or application level) or the custom region you specify.

```javascript
cacheIdExists(id [, region])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| id | string | Yes |  | The ID of the cached object. |
| region | string | No |  | The cache region where you check for the cached object. |

## Tag Syntax

Checks if the cache object is present in the user-defined cache region

```javascript
<!--- Creating a new object ---> 
 <cfset obj1 = structNew()> 
 <cfset obj1.name = 'xyz'> 
 <!--- Defining the time to live and time to Idle parameters ---> 
 <cfset timeToLive=createTimespan(0,0,0,30)> 
 <cfset timeToIdle=createTimespan(0,0,0,30)> 
 <cfoutput>Starting to write to cache..</cfoutput> 
 <cfset cachePut('obj1',obj1,timeToLive,timeToIdle,'customcache')> 
 <br/> 
 <cfoutput>Done!!</cfoutput> 
 <cfoutput>Trying to check if the cached item is present...</cfoutput> 
 <cfoutput>#cacheIdExists('obj1','customcache')#</cfoutput>
```

## Tag Syntax

Checks if the cache object is present in the default cache region

```javascript
<cfset obj2 = structNew()> 
 <cfset obj2.name = 'xyz'> 
 <cfoutput>Starting to write to cache..</cfoutput> 
 <cfset cachePut('obj2',obj2)> 
 <br/> 
 <cfoutput>Done!!</cfoutput> 
 <cfoutput>Trying to fetch cached item...</cfoutput> 
 <cfset obj = cacheGet('obj2')> 
 <cfoutput>#cacheIdExists('obj2','OBJECT')#</cfoutput>
```
