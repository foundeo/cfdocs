# arrayEach

Used to iterate over an array and run the function closure for each item in the array.

```javascript
arrayEach(array, function(item, [index, [array]]){} [, parallel] [, maxThreads])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someArray.each(function(item, [index, [array]]){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  |  |
| callback | function | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| parallel | boolean | No | false | Lucee4.5+ CF2021+ Specifies whether the items can be executed in parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ CF2021+ The maximum number of threads to use when parallel = true |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| value | any | No | The value for the current iteration
| index | numeric | No | The current index for the iteration
| array | array | No | A reference of the original array

## Simple Example

```javascript
letters = ["a","b","c","d"]; 
arrayEach(letters, function(element,index) {
    writeOutput("#index#:#element#;");
});
```

### Expected Result: 1:a;2:b;3:c;4:d;

## Member Function Example

```javascript
a = ["a","b","c"];
a.each(function(element,index,array){
    writeOutput("#index#:#element#;"); 
});
```

### Expected Result: 1:a;2:b;3:c;
