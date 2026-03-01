# arrayDeleteNoCase

Deletes the first element in an array that matches the value of `value`. The search is case insensitive. Returns `true` if the element was found and removed. The array will be resized, so that the deleted element doesn't leave a gap.

```javascript
arrayDeleteNoCase(array, value)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.deleteNoCase(value)
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| array | array | Yes |  |  |  |
| value | any | Yes |  | A value for which to search. Case insensitive. |  |
| scope | string | No | one | Lucee5.1+ Remove one (default) or all occurrences of the value. | /Users/garethedwards/development/github/cfdocs/docs/functions/arraydeletenocase.md|all |

## Delete an element from an array

Deletes the first `apple` element from the array `arr`.

```javascript
arr = ['apple', 'orange', 'pear', 'Apple'];
arrayDeleteNoCase(arr, 'Apple');

writeDump(arr);
```

### Expected Result: ['orange','pear','Apple']
