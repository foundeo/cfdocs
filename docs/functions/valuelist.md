# valueList

Returns each value from a column of an executed query.
 CFML does not evaluate the arguments.
 A delimited list of the values of each record returned from an executed query column

```javascript
valueList(column [, delimiter])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| column | query | Yes |  | Name of an executed query and column. Separate query name and column name with a period. |
| delimiter | string | No | , | A delimiter character to separate column data items.
 Default: comma (,). |

## Simple Example

Retrieve column results

```javascript
news = queryNew("id,title",
    "integer,varchar",
    [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
writeOutput( valueList(news.id) );
```

### Expected Result: 1,2
