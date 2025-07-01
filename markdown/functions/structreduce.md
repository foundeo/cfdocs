# structReduce

Iterates over every entry of the struct and calls the closure to work on the key value pair of the struct. This function will reduce the struct to a single value and will return the value.

```javascript
structReduce(struct, function(result, key, value [,struct]){} [, initialVal])
```

```javascript
returns any
```
### Member Function Syntax

```javascript
someStruct.reduce(function(result, key, value [,struct]){} [, initialVal])
```
