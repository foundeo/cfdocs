# cachePut

Stores an object in the cache.

```javascript
cachePut(id, value [, timespan] [, idleTime] [, region] [, throwOnError])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| id | string | Yes |  | Unique identifier for the cached value |
| value | any | Yes |  | The value to cache |
| timespan | date | No |  | The interval until the object is flushed from the cache, as a decimal number of days. One way to set the value is to use the return value from the CreateTimeSpan function. The default is to not time out the object. |
| idleTime | date | No |  | A decimal number of days after which the object is flushed from the cache if it is not accessed during that time. One way to set the value is to use the return value from the CreateTimeSpan function. |
| region | string | No |  | Lucee4.5+ CF10+ Specifies the cache region/name where you place the cache object. |
| throwOnError | boolean | No | false | CF10+ If true and region does not exist, throws an error |

## Tag Syntax

```javascript
<cfset cachedData = cacheGet("wt-6-cache")>
<!--- If the data is not cached, create it and do a cache put. --->
<cfif isNull(cachedData)>
	Cache doesn't exist, so create it.<br />
	<cfset sleep(1000)>
	<cfset cachedData = "This date/time IS cached: #now()#<br />">
	<cfoutput>#cachedData#</cfoutput> 
	<cfset cachePut("wt-6-cache", cachedData, createTimespan(0,0,0,10))>
</cfif>
```

## Script Syntax

I place data into the default cache.

```javascript
// generate some data to cache
data = { bar = 'foo', foo = 'bar' };

// add the data to a named cache
cachePut( 'cached_object_name_or_id', data, createTimeSpan( 0, 0, 30, 0 ), createTimeSpan( 0, 0, 15, 0 ) );
```

## Script Syntax - Named Cache

I place data into a named cache. CF10+ Lucee4.5+

```javascript
// generate some data to cache
data = { bar = 'foo', foo = 'bar' };

// add the data to a named cache
cachePut( 'cached_object_name_or_id', data, createTimeSpan( 0, 0, 30, 0 ), createTimeSpan( 0, 0, 15, 0 ), 'region_cacheName' );
```
