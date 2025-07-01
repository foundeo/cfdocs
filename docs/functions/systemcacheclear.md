# systemCacheClear

Clears all caches or the specified cache

```javascript
systemCacheClear([cacheName])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| cacheName | string | No |  | Name of the cache you want to clear. If not specified it will clear all caches.<br /> Some cachenames are aliases:<br />page = template<br />cfc, class = component<br />ct = customtag<br />object = query | /Users/garethedwards/development/github/cfdocs/docs/functions/systemcacheclear.md|function |

## Clear all caches

Clear all caches.

```javascript
systemCacheClear();
```

## Clear the template cache

Clear the template cache.

```javascript
systemCacheClear("template");
```
