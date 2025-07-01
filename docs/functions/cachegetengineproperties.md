# cacheGetEngineProperties

Returns some properties of the cache engine

```javascript
cacheGetEngineProperties()
```

```javascript
returns struct
```

## Get the name of the cache engine

Pick the 'name' property from the cache engine property structure

```javascript
writeOutput(cacheGetEngineProperties().name);
```

### Expected Result: Ehcache
