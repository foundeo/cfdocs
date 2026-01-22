# listFilter

Used to filter an list to items for which the closure function returns true.

```javascript
listFilter(list, function(listElement, [list]) )
```

```javascript
returns string
```

## Member Function Syntax

```javascript
someList.listFilter(function(listElement, [list]) )
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| function | function | Yes |  | Inline closure function executed for each element in the list. Returns true if the list element should be included in the filtered list. Support for passing the original list to the closure function added in CF11 Update 5. |

## Example using a simple numeric comparison

Take list and use List Filter to return items that are 3 and higher.

```javascript
numberList = '1,2,3,4,5,6';

threeOrMore = listFilter(numberList, function(item){
     return item >= 3;
});
writedump(threeOrMore);
```

### Expected Result: A List with the values '3,4,5,6'

## Example using a member function

This is the same example as above, but using a member function on the list instead of a standalone function.

```javascript
numberList = '1,2,3,4,5,6';

threeOrMore = numberList.listFilter(function(item){
     return item >= 3;
});
writedump(threeOrMore);
```

### Expected Result: A List with the values '3,4,5,6'
