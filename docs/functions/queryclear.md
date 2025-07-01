# queryClear

This function takes a query, removes all the rows, then returns a query object with no records

```javascript
queryClear(query)
```

```javascript
returns query
```

## Member Function Syntax

```javascript
query.clear()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |

## queryClear member function

Description of the code example

```javascript
heroes = queryNew("id,Name",
            "integer,varchar",
            [
                {"id":1,"Name":"Bruce Banner"},
                {"id":2,"Name":"Tony Stark"},
                {"id":3,"Name":"Bobby Drake"},
                {"id":4,"Name":"Jean Grey"}
            ]
            );
writeOutput("Query with records<br />");
writeDump(heroes);
writeOutput("The same query, but cleared<br />");
writeDump(heroes.clear());
```

### Expected Result: A query with 4 heroes, then a query with none
