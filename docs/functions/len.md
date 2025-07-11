# len

 Determines the length of a string or binary object

```javascript
len(Object)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| Object | any | Yes |  | A string or variable name |

## Simple example for Len function

To get the total length of the string or binary object

```javascript
someString = 'ColdFusion';
writeOutput(len(someString));
```

### Expected Result: 10

## Simple example for Len function as member function

For CF11+ Lucee4.5+

```javascript
colorArray = ['Green','red','blue'];
writeOutput(colorArray.len());
```

### Expected Result: 3
