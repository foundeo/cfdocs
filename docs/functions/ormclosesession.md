# ormCloseSession

Closes the current ORM session for the given datasource. When the datasource argument is not passed then it uses the default datasource defined in Application.cfc.

```javascript
ormCloseSession([datasource])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datasource | string | No |  | Name of the datasource for the ORM session |

## Closes the Hibernate session associated with the datasource from the application.

```javascript
ormCloseSession();
```
