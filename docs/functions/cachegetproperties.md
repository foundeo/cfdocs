# cacheGetProperties

Gets the cache properties for the object cache, the page cache, or both. The information is application-specific.

```javascript
cacheGetProperties(region)
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| region | string | No |  | Lucee4.5+ CF10+ Properties to get information for<br /><br />"" or not set - information to all default caches<br />object - information to "Default Object" Cache<br />template - information to "Default Template" Cache<br />query - information to "Default Query" Cache<br />resource - information to "Default Resource" Cache<br />{cache name} - information to a specific cache | /Users/garethedwards/development/github/cfdocs/docs/functions/cachegetproperties.md|query |
