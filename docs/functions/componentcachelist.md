# componentCacheList

This function Lists elements in the component path cache.

```javascript
componentCacheList()
```

```javascript
returns struct
```

## Simple Tag Example

Dumps a struct of components in the cache

```javascript
<cfset c = componentCacheList() />
<cfdump var="#c#" />
```

### Expected Result: struct

## Simple Script Example

Dumps a struct of components in the cache

```javascript
c = componentCacheList();
dump(c);
```

### Expected Result: struct
