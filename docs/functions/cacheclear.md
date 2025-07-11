# cacheClear

Flushes the cache

```javascript
cacheClear([filter] [, cacheName])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filterOrTags | any | No |  | A String containing a key filter for the elements in the cache to flush, the filter follow the same rules as for cfdirectory-filter OR an Array containing tags defined when put into the cache |
| cacheName | string | No |  | Definition of the cache used by name, when not set the "default Object Cache" defined in Lucee Administrator is used instead |
