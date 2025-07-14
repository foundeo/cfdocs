# datasourceFlushMetacache

Flush the meta data stored for a certain datasource used for stored procedures.
 NOTE: This is only supported for Oracle datasources.

```javascript
datasourceFlushMetacache([datasourceName])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datasourceName | string | No |  | Name of the datasource to flush. When not defined all caches are flushed. |
