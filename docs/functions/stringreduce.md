# stringReduce

This function iterates over every character in the string and executes the callback function to reduce the string to a single value.

```javascript
stringReduce(string,callback,initialValue)
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.reduce(callback, initialValue)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | Original input string. |
| callback | any | Yes |  | Closure or a function reference. |
| initialVal | any | No |  | Initial value for the reduce operation. |

## Full function

Reduce the string to a single value.

```javascript
letters="abcdef";
closure=function(inp1,inp2){return inp1 & inp2;}
writeOutput( StringReduce(letters,closure,"z") );
```

### Expected Result: zabcdef

## Member function

Reduce the string to a single value.

```javascript
letters="abcdef";
closure=function(inp1,inp2){return inp1 & inp2;}
writeOutput( letters.reduce(closure,"z") );
```

### Expected Result: zabcdef
