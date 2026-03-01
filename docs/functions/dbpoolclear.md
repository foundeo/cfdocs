# dbpoolclear

clears all existing datasource connection

```javascript
dbPoolClear([, string])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datasource | string | No |  | specific datasource to clear, if not set all datasources get removed. |

## dbPoolClear Example

Clear all existing datasource connections

```javascript
dbPoolClear();
```

## dbPoolClear Example

Clear a named datasource connection

```javascript
dbPoolClear(mydatasource);
```
