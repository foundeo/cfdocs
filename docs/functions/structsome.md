# structSome

This function calls a given closure/function with every element in a given struct and returns true, if one of the closure calls returns true

```javascript
structSome(struct, function(key, value [,struct]){} [, parallel] [, maxThreads])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
struct.some(function(key, value [,struct]){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| struct | struct | Yes |  |  |
| callback | boolean | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| parallel | boolean | No | false | Lucee4.5+ true if the items can be executed in parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ the maximum number of threads to use when parallel = true |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| key | string | No | The key for the current iteration
| value | any | No | The value for the current iteration
| struct | struct | No | A reference of the original struct

## The simple StructSome example

Here we have simple example about structsome function.

```javascript
<cfscript>
struct={"Name":"Raja","age":20,"mark":80};
result = structSome(struct,function(key,value){
	return key IS "Name"
});
writeOutput((result ? '' : 'No')& " Key Exists.")
</cfscript>
```

### Expected Result: Key Exists.

## The structSome member function example

Here we have simple example about structsome as member function.

```javascript
<cfscript>
struct={"Name":"Raja","age":20,"mark":80};
result = struct.some(function(key,value){
	return key IS "average"
});
writeOutput((result ? '' : 'No')&" Key Exists.")
</cfscript>
```

### Expected Result: No Key Exists.
