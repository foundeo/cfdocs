# entityLoadByPK

Loads and returns an array of objects for given primary key.
Use this function to avoid specifying the required boolean parameter in `EntityLoad()`.

```javascript
entityLoadByPK(entity, id)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| entity | string | Yes |  | Name of the entity to be loaded. |
| id | string | Yes |  | ID of the entity to be loaded. |

## Load an existing User object

```javascript
user = entityLoadByPK("User", userID);
```
