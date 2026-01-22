# cacheGet

Gets an object that is stored in the cache.

```javascript
cacheGet(id [,region])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| id | string | Yes |  | The ID value assigned to the cache object when it was created |
| region | string | No |  | CF10+ The name of the cache region where the object was stored. Applies only to ACF. |
| cacheName | string | No |  | Lucee4.5+ The name of the cache where the object was stored. Applies only to Lucee. |
| throwWhenNotExist | boolean | No | false | Lucee4.5+ Enable/Disable throwing an error if element not exists |

## Simple Example

Puts an element in the cache and then retrieves it.

```javascript
cowSays = cacheGet( "cow" );
if ( isNull( cowSays ) ) {
    cowSays = "moo";
    cachePut( "cow", cowSays, createTimeSpan( 0, 0, 30, 0 ), createTimeSpan( 0, 0, 15, 0 ) );
}
writeOutput( "The cow says " & cowSays );
```

### Expected Result: The cow says moo

## Script Syntax - Named Cache

CF10+ Puts an element in a named cache and then retrieves it.

```javascript
cacheID = "cow";
timespan = createTimeSpan(0, 0, 30, 0);
idleTime = createTimeSpan(0, 0, 15, 0);
regionName = "region_cacheName";
cowSays = cacheGet(cacheID, regionName);
if (isNull(cowSays)) {
    cowSays = "moo";
     cachePut(cacheID, cowSays, timespan, idleTime, regionName);
}
writeOutput("The cow says #cowSays#.");
```

### Expected Result: The cow says moo.
