# queryRecordCount

Returns the number of rows given in the query object result set

```javascript
queryRecordCount(query)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
query.recordCount()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |

## Returns the record count of the query

```javascript
heroes = queryNew("id,Name",
            "integer,varchar",
            [
                {"id":1,"Name":"Bruce Banner"},
                {"id":2,"Name":"Tony Stark"},
                {"id":3,"Name":"Bobby Drake"},
                {"id":4,"Name":"Jean Grey"}
            ]
            )
    writeDump(heroes.recordCount());
```

### Expected Result: 4
