# stringSome

This function calls a given closure/function with every element in a given string and returns true as soon as the callback condition is met.

```javascript
stringSome(inputString,callback)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
inputString.some(callback)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| inputString | string | Yes |  | Original input string to search. |
| callback | function | No |  | The closure function that is executed for each element in the string. |

## Full function

Are any of the characters in the string greater than our condition?

```javascript
instring="abcdefg";
callback=function(inp){return inp > "f"}
writeoutput(StringSome(instring,callback));
```

### Expected Result: YES

## Member function

Are any of the characters in the string greater than our condition?

```javascript
instring="abcdefg";
callback=function(inp){return inp > "f"}
writeoutput(instring.some(callback));
```

### Expected Result: YES
