# ormIndexPurge

Clears all indexed data for all entities or specified entities in the current application scope.

```javascript
ormIndexPurge(); ormIndexPurge("entityName"); ormIndexPurge("entityName_list");
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| region | string | Yes |  | Name of the cache region. |

## Tag Syntax

If you use this function without specifying entityName, all persistent entities of the application are purged.

```javascript
ormIndexPurge();
```

## Tag Syntax

```javascript
ormIndexPurge('Employee');
```
