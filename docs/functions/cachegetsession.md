# cacheGetSession

Lets you retrieve the underlying cache object to access additional cache functionality that is not implemented in the tag cfcache.

Note: Caution! Using the cacheGetSession function might pose security vulnerabilities. If you wish to disable the usage of this function, add it to Sandbox Security. 

```javascript
cacheGetSession(objectType)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| objectType | string | Yes |  | Any of the following values: object, template, or name of the user-defined cache |
| isKey | boolean | No | false | Set to true if objectType is user-defined cache. |

## The following example shows how to use the function cacheGetSession to operate on default caches:

```javascript
<!--- put an object into user-defined object cache --->
<cfset cachePut("cache1","hello",15,15)>

<!--- get underlying user-defined object cache --->

<cfset objectCache = cacheGetSession("object",true)>

<!--- get/print user-defined object cache properties --->

<cfdump var = "#objectCache.getCacheConfiguration()#">
```

### Expected Result: cache object
