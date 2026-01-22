# ormEvictCollection

This will remove all the entries with the specified relation/collection name in the specified component.

```javascript
ormEvictCollection(entityName, collectionName [, primaryKey])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| entityName | string | Yes |  | Entity name of the persistent CFC |
| collectionName | string | Yes |  | Name of the collection in the component |
| primaryKey | string | No |  | Primary key of the collection or association data of the entity |

## Tag Example

To evict all the association or collection data of collection `arts` belonging to the component `CArtists`

```javascript
<cfset ormEvictCollection("CArtists", "arts")>
```
