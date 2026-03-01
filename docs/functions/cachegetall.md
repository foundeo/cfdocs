# cacheGetAll

Returns a structure containing all elements inside the cache.

```javascript
cacheGetAll([filter] [, cacheName])
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filter | string | No |  | Key filter for the elements, the filter follows the same rules as the cfdirectory-filter |
| cacheName | string | No |  | Definition of the cache used by name, when not set the "default Object Cache" defined in Lucee Administrator is used instead |
