# queryKeyExists

Determines whether the specified column (key) is present in a query.

```javascript
queryKeyExists(query, key)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
query.keyExists(key)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | Query Object to test. |
| key | string | Yes |  | Key to test |

## Check to see if column exists in Query

Uses the member function syntax

```javascript
news = queryNew("id,title",
    "integer,varchar",
    [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
writeOutput(news.keyExists("title"));
```

### Expected Result: YES
