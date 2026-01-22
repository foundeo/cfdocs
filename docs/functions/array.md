# array

Creates a new array populated with any arguments that have been passed to the function.

```javascript
array()
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| values | any | No |  | One or more values that can be used in the initialization of the array. |

## Example

Creates and dump a new array.

```javascript
exampleArray = Array("example-string", 1, {structExample = "value"}, [1,2,3]);
dump(exampleArray);
```

## Inline Array Notation Example

Creates and dump a new array.

```javascript
exampleArray = ["example-string", 1, {structExample = "value"}, [1,2,3]];
dump(exampleArray);
```
