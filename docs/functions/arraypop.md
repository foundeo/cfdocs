# arrayPop

Removes the last element from an array and returns the removed element. This will cause an exception on an empty array.

```javascript
arrayPop(array)
```

```javascript
returns any
```

## Member Function Syntax

```javascript
array.pop()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array whose last element is removed. |

## Remove the last value from an array

This is the full function version of arrayPop to remove the last value of an array.

```javascript
arr=[1,2,42];
p=arrayPop(array=arr);
writeOutput(p);
```

### Expected Result: 42

## Member function version.

Using the member function. This version also works in ACF2018.

```javascript
arr=[1,2,42];
p=arr.pop();
writeOutput(p);
```

### Expected Result: 42
