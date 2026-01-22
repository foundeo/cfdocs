# cacheRemoveAll

Removes all stored objects in a cache region. If no cache region is specified, objects in the default region are removed.

```javascript
cacheRemoveAll( region )
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| region | string | No |  | Indicates the cache region from which to remove the stored objects. If no value is specified, default cache region is considered by default. |

## Demonstrates the behavior using test data

```javascript
// generate some data to cache
for ( i = 1; i <= 10; i++ ) {
  cachePut( 'cache_#i#', "Test data #i#" );
}

function cacheObjCount() {
    return arrayLen(cacheGetAllIds());
}

_numCacheObj = "Number of objects in the cache: ";

writeOutput('Before cacheRemove() :: #_numCacheObj# #cacheObjCount()#<br />');

// clear all objects from the cache
cacheRemoveAll();

writeOutput('After cacheRemove() :: #_numCacheObj# #cacheObjCount()#<br /><br />');
```
