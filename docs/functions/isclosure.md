# isClosure

Checks if a given object is a closure.

```javascript
isClosure(object)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| object | any | Yes |  | The object to check if it is a closure. |

## Returns true if the object is a closure

```javascript
square = function(x) {
    return x * x;
};

writeDump(isClosure(square));
```

### Expected Result: TRUE

## Returns false if the object is not a closure

```javascript
square = function(x) {
    return x * x;
};

squared = square(5);

writeDump(isClosure(squared));
```

### Expected Result: FALSE
