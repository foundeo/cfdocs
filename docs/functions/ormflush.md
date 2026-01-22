# ormFlush

Flushes the current ORM session of all the pending CRUD operations in that request. Any changes made in the objects, in the current ORM session, are saved to the database.

```javascript
ormFlush([datasource])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datasource | string | No |  | Name of the data source used for the session. If not defined, the default datasource defined in Application.cfc/cfapplication is used. |

## Flush all pending CRUD operations for datasource defined in the Application.cfc

```javascript
ormFlush();
```
