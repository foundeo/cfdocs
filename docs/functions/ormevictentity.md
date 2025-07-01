# ormEvictEntity

This will remove all the entries for the specified component name from the entity cache.

```javascript
ormEvictEntity(entityName [, primaryKey])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| entityName | string | Yes |  | Entity name of the persistent CFC |
| primaryKey | string | No |  | Primary key value of the component |

## Tag Example

To evict all the cache data of CArtist entity

```javascript
<cfset ormEvictEntity("CArtists")>
```

## Tag Example

To evict the cache data of CArtists entity whose primary key is 1

```javascript
<cfset ormEvictEntity("CArtists", 1)>
```
