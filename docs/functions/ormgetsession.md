# ormGetSession

Get the current ORM session object

```javascript
ormGetSession([datasource])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datasource | string | No |  | Name of the data source used for the session. If not defined, the default datasource defined in Application.cfc/cfapplication is used. |

## Gets the Hibernate session object associated with the datasource from the application.

Returns the object representing the current Hibernate session so you can perform functions on it.

```javascript
ormGetSession();
```
