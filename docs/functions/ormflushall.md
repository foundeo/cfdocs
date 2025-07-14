# ormFlushAll

Flushes all the current Hibernate sessions in the request.

```javascript
ormFlushAll();
```

```javascript
returns void
```

## Flush all pending CRUD operations for ALL Hibernate sessions for the default datasource.

Please note this will flush all operations for all users, use with care.

```javascript
ormFlushAll();
```
