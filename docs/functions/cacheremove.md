# cacheRemove

Removes an object from the cache.

```javascript
cacheRemove(id [, throwOnError [, region[, exact]]])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| id | any | Yes |  | Comma delimited list of cache IDs. A list of all available IDs can be retrieved using cacheGetAllIds. CF11+ Can take an array instead of a list. |
| throwOnError | boolean | No | NO | When `true` throws an error when cache ID does not exist. |
| region | string | No |  | CF10+ Specify which cache region to search |
| exact | boolean | No | YES | CF10+ When `true`, matches values in `id` exactly |

## Remove one ID using exact match

```javascript
cacheRemove( 'myCachedQuery' );
```

## Example using exact=false

Remove using partially matching IDs

```javascript
cachePut( 'cache_1', 'test data', 1000, 1000, 'test' );
cachePut( 'cache_2', 'test data', 1000, 1000, 'test' );

// this removes both cached objects:
cacheRemove( 'cache', false, 'test', false );
```

## Example using exact=true

With exact set to true, no IDs match, so none will be deleted

```javascript
cachePut( 'cache_1', 'test data', 1000, 1000, 'test' );
cachePut( 'cache_2', 'test data', 1000, 1000, 'test' );

// this removes no object:
cacheRemove( 'cache', false, 'test', true );
```

## Remove all cached data using default settings

(ColdFusion 10 added cacheRemoveAll.)

```javascript
<cfset allCacheIDs = cacheGetAllIds( ) />
<cfif not arrayIsEmpty( allCacheIDs )>
  <cfset cacheRemove( allCacheIDs ) />
</cfif>
```
