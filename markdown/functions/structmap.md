# structMap

Iterates over every entry of the Struct and calls the closure function to work on the key value pair of the struct. The returned value will be set for the same key in a new struct and the new struct will be returned.

```javascript
structMap(struct, function(key, value [,struct]){} [, parallel] [, maxThreads])
```

```javascript
returns struct
```
### Member Function Syntax

```javascript
someStruct.map(function(key, value [,struct]){} [, parallel] [, maxThreads])
```
