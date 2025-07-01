# runAsync

A function that returns a Future object, which is an eventual result of an asynchronous operation

```javascript
runAsync(function() {})
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| callback | function | No |  | Closure function that returns a result to be resolved. |
| timeout | numeric | No | 1000 | Timeout for the asynchronous process in milliseconds |

## Run a function asynchronously and get the result

```javascript
future = runAsync(function(){
	return "Hello World!";
});
writeOutput(future.get());
```

### Expected Result: Hello World!

## Run a function after the asynchronous function and use a five milliseconds timeout when calling get()

```javascript
future = runAsync(function(){
	return 5;
}).then(function(input){
	return input + 2;
});
result = future.get(3); // 3 is timeout(in ms)
writeOutput(result);
```

### Expected Result: 5

## Run a function asynchronously with then() and error()

```javascript
future = runAsync(function(){
	return 5;
}).then(function(input){
	return input + 2;
}).error(function(){
	return "Error occurred.";
});
writeOutput(future.get());
```

### Expected Result: 7
