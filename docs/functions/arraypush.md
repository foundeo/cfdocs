# arrayPush

Adds an element or an object to the end of an array, then returns the size of the modified array.

```javascript
arrayPush(array, value)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
array.push(value)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | Array to which a value or object is to be added. |
| value | any | Yes |  | The value or object to be added to the array. |

## Push a value onto an array

This is the full function version of arrayPush to push a value onto the end of the array.

```javascript
arr=[1,2,3];
arrayPush(array=arr,value=42);
writeOutput('This array has ' & arrayLen(arr) & ' elements.');
```

### Expected Result: This array has 4 elements.

## Member function version.

Using the member function. This version also works in ACF2018.

```javascript
arr=[1,2,3];
al=arr.push(42);
writeOutput('This array has ' & al & ' elements.');
```

### Expected Result: This array has 4 elements.

## Push an object onto an array.

This demonstrates pushing an object onto an array.

```javascript
arr=[ [1],['two'],[{a:3}]];
al=arr.push([42]);
writeOutput('This array has ' & al & ' elements.');
```

### Expected Result: This array has 4 elements.
