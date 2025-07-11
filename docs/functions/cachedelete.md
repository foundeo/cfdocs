# cacheDelete

Deletes a single element from the cache.

```javascript
cacheDelete(id [, throwOnError] [, cacheName])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| id | string | Yes |  | The id of the element to delete, can also contain a "," (not used as separator) |
| throwOnError | boolean | No |  | Define if the functions throws an exception when the element does not exist (default is false) |
| cacheName | string | No |  | Definition of the cache used by name, when not set the "default Object Cache" defined in Lucee Administrator is used instead |
