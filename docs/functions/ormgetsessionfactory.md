# ormGetSessionFactory

Returns ORM session factory instance

```javascript
ormGetSessionFactory([datasource])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datasource | string | No |  | Name of the data source used for the session. If not defined, the default datasource defined in Application.cfc/cfapplication is used. |

## Gets the Hibernate session factory object associated with the datasource from the application.

Returns the Factory object for the Hibernate session so you can perform operations on it.

```javascript
ormGetSessionFactory();
```
