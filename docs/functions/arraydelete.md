# arrayDelete

Deletes the first element in an array that matches the value of `value`.
The search is case-sensitive.
Returns `true` if the element was found and removed.
The array will be resized, so that the deleted element doesn't leave a gap.

```javascript
arrayDelete(array, value)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.delete(value)
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| array | array | Yes |  |  |  |
| value | any | Yes |  | A value for which to search. Case-sensitive. |  |
| scope | string | No | one | Lucee4.5+ remove one (default) or all occurrences of the value | /Users/garethedwards/development/github/cfdocs/docs/functions/arraydelete.md|all |

## Delete an element from an array

Uses the arrayDelete function to delete an element from an array

```javascript
arr = ['apple', 'orange', 'pear', 'apple'];
arrayDelete(arr, 'apple');

writeDump(arr);
```

### Expected Result: ['orange','pear','apple']

## Delete an element from an array using the Array member function

CF11+ Lucee4.5+ Invoking the delete function on an array is the same as running arrayDelete.

```javascript
arr = ['apple', 'orange', 'pear', 'apple'];
arr.delete('apple');

writeDump(arr);
```

### Expected Result: ['orange','pear','apple']

## Use of scope parameter

Lucee4.5+ Use scope to remove one or all occurrences of the value

```javascript
arr = ['apple', 'orange', 'pear', 'apple'];
arr.delete('apple', 'all');

writeDump(arr);
```

### Expected Result: ['orange','pear']
