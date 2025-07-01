# queryGetResult

 Returns the metadata of a query.

```javascript
queryGetResult(query)
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | The query whose metadata is to be returned. |

## Retrieves query metadata using queryGetResult

```javascript
fruit = queryNew("id,name",  "integer,varchar", [ {"id":1,"name":"apple"}, {"id":2,"name":"banana"}, {"id":3,"name":"orange"}, {"id":4,"name":"peach"} ]);
myQuery = queryExecute( "select * from fruit where id < 4",{},{dbtype="query"});
myResult = queryGetResult(myQuery);
writeDump(myResult);
```

## Retrieves query metadata using getResult member function

```javascript
fruit = queryNew("id,name",  "integer,varchar", [ {"id":1,"name":"apple"}, {"id":2,"name":"banana"}, {"id":3,"name":"orange"}, {"id":4,"name":"peach"} ]);
myQuery = queryExecute( "select * from fruit where id < 4",{},{dbtype="query"});
myResult = myQuery.getResult();
writeDump(myResult);
```
