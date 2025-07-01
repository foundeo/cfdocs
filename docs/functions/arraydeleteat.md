# arrayDeleteAt

Deletes the element at `index` from an array
The array will be resized, so that the deleted element doesn't leave a gap.

```javascript
arrayDeleteAt(array, index)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.deleteAt(index)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array that the element will be deleted from. |
| index | numeric | Yes |  | The numeric index of the element. Remember that ColdFusion arrays start at 1 not 0. |

## Simple example for arrayDeleteAt function

Uses the arrayDeleteAt function to delete the value in specific position

```javascript
someArray = ["Red", "White", "Green", "Blue", "Pink"];
arrayDeleteAt(someArray, 3);
writeOutput(serializeJSON(someArray));
```

### Expected Result: ["Red", "White", "Blue", "Pink"]

## Simple example with member function

CF11+ Lucee4.5+ Uses the member function is the same as running arrayDeleteAt.

```javascript
someArray = ["Red", "White", "Green", "Blue", "Pink"];
someArray.DeleteAt(2);
writeOutput(serializeJSON(someArray));
```

### Expected Result: ["Red", "Green", "Blue", "Pink"]
