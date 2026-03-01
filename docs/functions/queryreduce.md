# queryReduce

Reduces query columns just like in array or collection

```javascript
queryReduce(query, function(result, row [, currentRow] [, query]){} [, initialVal])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | query to process entries from |
| callback | any | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| initialValue | any | No |  | initial value passed as part of the first closure call |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| result | any | No | The result of the reduce operation after the previous iteration
| row | struct | No | A struct with all of the columns for the current iteration
| currentRow | numeric | No | The value for the current iteration
| query | query | No | A reference of the original query

## Reduce column to total

Sum one query column

```javascript
fruits = queryNew("fruit,amount",
    	"varchar,integer", [{
    		"fruit": "apples",
    		"amount": 15
    	}, {
    		"fruit": "pineapples",
    		"amount": 3
    	}, {
    		"fruit": "strawberries",
    		"amount": 32
    	}]
    );
    total_fruits = queryReduce(fruits,function(a,b) {
        return a + b.amount;
    },0);
    
    writeOutput(total_fruits);
```

### Expected Result: 50
