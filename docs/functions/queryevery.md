# queryEvery

Executes a callback/closure against every row in a query and returns true if the callback/closure returned true for every row.

```javascript
queryEvery(query, closure [, parallel] [, maxThreads])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
query.every(closure [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |
| closure | function | Yes |  |  |
| parallel | boolean | No |  |  |
| maxThreads | numeric | No | 20 |  |

## All values greater than 50

Find out if every value in the query is greater than 50

```javascript
<cfscript>
data = query(foo: [51,52,535]);
allGT50 = queryEvery(function(row){ return row.foo > 50; });
</cfscript>
```

### Expected Result: true
