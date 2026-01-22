# queryReverse

Returns a reversed version of the query

```javascript
queryReverse(query)
```

```javascript
returns query
```

## Member Function Syntax

```javascript
query.reverse()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |

## Reverses a queries results

```javascript
heroes = queryNew(
            "id,Name",
            "integer,varchar",
            [
                {"id":1,"Name":"Bruce Banner"},
                {"id":2,"Name":"Tony Stark"},
                {"id":3,"Name":"Bobby Drake"},
                {"id":4,"Name":"Jean Grey"}
            ]
        )
writeOutput("The query:<br />");
writeDump(heroes);
writeOutput("The reversed query:<br />");
writeDump(heroes.reverse());
```
