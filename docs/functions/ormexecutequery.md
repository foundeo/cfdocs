# ormExecuteQuery

Runs the HQL on the default data source specified for the application.

```javascript
ormExecuteQuery(hql, params [,unique]);
ormExecuteQuery(hql, [,unique] [, queryoptions]);
ormExecuteQuery(hql, params [,unique] [,queryOptions])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| hql | string | Yes |  | A HQL query statement |
| params | any | No |  | A struct or array of query params. |
| unique | boolean | No |  | If true returns a single entity instead of an array. |
| queryoptions | string | No |  | A struct with possible keys: ignorecase, maxResults, offset, cacheable, timeout, datasource |
