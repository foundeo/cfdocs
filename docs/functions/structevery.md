# structEvery

This function calls a given closure/function with every element in a given struct and returns true, if all of the closure calls returns true

```javascript
structEvery(struct, closure [, parallel] [, maxThreads])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
struct.every(closure [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| struct | struct | Yes |  |  |
| closure | function | Yes |  |  |
| parallel | boolean | No |  |  |
| maxThreads | numeric | No | 20 |  |

## Simple structEvery example

Here we have simple example about structevery function. It is supported only in Lucee.

```javascript
var struct = {"Name":"Dhar","Age":"20","Country":"US"};
structevery(struct,function(key,value){
	writeOutput(key & ":" & value & " ");
	return true;
});
```

### Expected Result: Country:US Name:Dhar Age:20

## Simple structEvery member function example

Here we have simple example about structevery member function. It is supported only in Lucee.

```javascript
var struct = {"Name":"Dhar","Age":"20","Country":"US"};
struct.every(function(key,value){
	writeOutput(key & ":" & value & " ");
	return false;
});
```

### Expected Result: Country:US
