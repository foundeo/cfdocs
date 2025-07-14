# cacheKeyExists

Returns true/false whether the cache contains an element with the specified keyname.

```javascript
cacheKeyExists(key [, cacheName])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| key | string | Yes |  | Key to check |
| cacheName | string | No |  | Definition of the cache used by name, when not set the "default Object Cache" defined in Lucee Administrator is used instead. |
