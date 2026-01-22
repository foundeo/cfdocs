# ormClearSession

ORMClearSession removes all the entities that are loaded or created in the session. This clears the first level cache and removes the objects that are not yet saved to the database.

```javascript
ormClearSession([datasource])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datasource | string | No |  | Name of the data source used for the session. If not defined, the default datasource defined in Application.cfc/cfapplication is used. |

## Clears the Hibernate session associated with the datasource from the application.

```javascript
ormClearSession();
```
