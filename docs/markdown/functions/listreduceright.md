# listReduceRight

This function iterates over every element of the list and calls the closure to work on that element. This function will reduce the list to a single value, from the right to the left, and will return the value.
NOTE: Use caution if using the member function. `list.reduceRight` and `list.listReduceRight` may behave differently.
NOTE:This function is not available in Lucee 5.x or lower. Potentially use `reverse()` instead.

```javascript
listReduceRight(list, callback, initialValue[, delimiter][, includeEmptyFields])
```

```javascript
returns any
```
### Member Function Syntax

```javascript
list.listReduceRight(callback, initialValue[, delimiter][, includeEmptyFields])
```
