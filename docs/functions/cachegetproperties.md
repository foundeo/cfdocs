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
| region | string | No |  | Lucee4.5+ CF10+ Properties to get information for

"" or not set - information to all default caches
object - information to "Default Object" Cache
template - information to "Default Template" Cache
query - information to "Default Query" Cache
resource - information to "Default Resource" Cache
{cache name} - information to a specific cache | /Users/garethedwards/development/github/cfdocs/docs/functions/cachegetproperties.md|query |
