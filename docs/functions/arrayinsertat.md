# arrayInsertAt

Inserts a value at the specified position in the array. If the element is inserted before the end of the array, ColdFusion shifts the positions of all elements with a higher index to make room.

```javascript
arrayInsertAt(array, position, value)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.insertAt(position, value)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array which will have the new element inserted. |
| position | numeric | Yes |  | The numerical index in the array where the new element will be inserted.
 Must be less than or equal to the length of the array.
 Remember ColdFusion arrays start at 1 not 0. |
| value | any | Yes |  | The new element to insert. |

## Insert an Item in an Array at Position 2

Inserts the number 4 at position 2

```javascript
someArray = [1,2,3];
arrayInsertAt(someArray, 2, 4);
writeOutput(serializeJSON(someArray));
```

### Expected Result: [1,4,2,3]
