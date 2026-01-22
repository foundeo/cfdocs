# listReduce

Iterates over each item of the list and calls the closure to work on the item. This function will reduce the list to a single value and will return the value.

```javascript
 listReduce(list, function(result, item [,index, list]) [,initialValue, delimiter, includeEmptyFields])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | Input list |
| function | any | Yes |  | Closure or a function reference that will be called for each of the iteration. The arguments passed to the callback are<br /><br />item: value<br />index : current index for the iteration<br />list : reference of the original list |
| intialValue | any | No |  | Initial value which will be used for the reduce operation. The type is any. |
| delimiter | string | No | comma | The list delimiter. |
| includeEmptyFields | boolean | No | false | Include empty values. |

## Script Syntax

```javascript
numbers = "1,2,3,4,5,6,7,8,9,10"; 
 sum = listReduce(numbers, function(previousValue, value) 
 { 
 return previousValue + value; 
 },  0); 
 writeOutput("The sum of the digits #numbers# is #sum#<br>");
```
