# arraySplice

Modifies an array by removing elements and adding new elements. It starts from the index, removes as many elements as specified by elementCountForRemoval, and puts the replacements starting from index position.

```javascript
arraySplice(array, index[, elementCountForRemoval, replacements])
```

```javascript
returns array
```

## Member Function Syntax

```javascript
someArray.splice(index[, elementCountForRemoval, replacements])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array to splice and modify. |
| index | numeric | Yes |  | The position at which to start modifying the array. If the position is greater than the length of the array, the replacement elements will be inserted after the last array element. If the position is less than 0, the start is set to the end of the array and the origin is set accordingly. |
| elementCountForRemoval | numeric | No |  | The number of elements to be removed starting with the start index. |
| replacements | array | No |  | Array of elements to be added to the array starting with index start. |

## arraySplice inserting replacements at position 2 while removing 0 elements

```javascript
months = ['Jan', 'March', 'April', 'June'];
item = ["Feb"];
arraySplice( months, 2, 0, item );
writedump(months);
```

### Expected Result: ["Jan","Feb","March","April","June"]

## arraySplice inserting replacements at position 3 while removing 2 elements

```javascript
months = ['Jan', 'March', 'April', 'June'];
item = ["Feb"];
arraySplice( months, 3, 2, item );
writedump(months);
```

### Expected Result: ["Jan","March","Feb"]

## arraySplice inserting replacements at position -3 while removing 0 elements

```javascript
months = ['Jan', 'March', 'April', 'June'];
item = ["Feb"];
arraySplice( months, -3, 0, item );
writedump(months);
```

### Expected Result: ["Jan","Feb","March","April","June"]

## arraySplice inserting replacements at position 5 which is greater than the length of the array

```javascript
months = ['Jan', 'March', 'April', 'June'];
item = ["Feb"];
arraySplice( months, 5, 0, item );
writedump(months);
```

### Expected Result: ["Jan","March","April","June","Feb"]

## Splice an array using member function

```javascript
months = ['Jan', 'March', 'April', 'June'];
item = ["Feb"];
months.splice(  2, 0, item );
writedump(months);
```

### Expected Result: ["Jan","Feb","March","April","June"]
