# entityDelete

Deletes the record from the database for the specified entity. Depending on the cascade attribute specified in the mapping, it deletes the associated objects also.

```javascript
entityDelete(entity)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| entity | variableName | Yes |  | Name of the entity being deleted. |

## Delete an existing entity

Loads an ORM entity from the database, then deletes it

```javascript
user = entityLoadByPK("User", userID);
entityDelete(user);
```
