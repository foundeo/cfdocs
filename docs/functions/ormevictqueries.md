# ormEvictQueries

This will remove all the queries from the named query cache. If name is not specified, all queries from default cache will be removed.

```javascript
ormEvictQueries([cacheName, datasource])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| cacheName | string | No |  | Name of the cache region that you want to evict. If you do not specify the cache, the default query cache is evicted. |
| datasource | string | No |  | Name of the data source whose cache you want to evict. |

## Evicts all the Hibernate cached queries for the default cache.

This will remove any cached queries from the default cache and cause the query to run again

```javascript
ormEvictQueries();
```
