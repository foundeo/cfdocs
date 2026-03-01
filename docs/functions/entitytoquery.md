# entityToQuery

Converts the input entity object or the input array of entity objects to a query object.
The following conditions apply for this function:
In the case of array input, all objects in the array must be of the same type.
The result query will not contain any relation data.

```javascript
entityToQuery(entity [, name])
```

```javascript
returns query
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| entity | variableName | Yes |  | Entity object or array of objects that needs to be converted to a query object. |
| name | string | No |  | Name of the entity. Use this optional parameter to return the query of the given entity in the case of inheritance mapping. |
