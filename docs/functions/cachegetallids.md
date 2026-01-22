# cacheGetAllIds

This function return an array containing all keys inside the cache.

```javascript
cacheGetAllIds()
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filter | string | No |  | Lucee4.5+ Key filter for the elements, the filter follow the same rules as for cfdirectory-filter. |
| cacheName | string | No | ObjectCache | CF10+ The cache region to use or the default object cache |
| isAccurate | boolean | No | true | CF11+ When set to false, function will return the result faster. However, the result may not be accurate. If you need only the IDs of valid (unexpired) objects from the cache, set accurate to true. If you set accurate to false, the IDs of all the objects in the cache will be returned. |
