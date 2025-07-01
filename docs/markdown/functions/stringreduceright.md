# stringReduceRight

This function iterates over every element of the string and calls the closure to work on that element. This function will reduce the string to a single value, from the right to the left, and will return the value.
NOTE: This function is not available in Lucee 5.x or lower. Potentially use `reverse()` instead.

```javascript
stringReduceRight(string, callback, initialValue)
```

```javascript
returns any
```
### Member Function Syntax

```javascript
string.reduceRight(callback, initialValue)
```
