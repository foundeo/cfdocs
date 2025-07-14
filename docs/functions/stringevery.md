# stringEvery

Determines if all elements of a string satisfy a given condition. Will return `TRUE` is all elements meet the condition, else `FALSE`.

```javascript
stringEvery(string,callback)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
string.every(callback)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | Original input string to search. |
| callback | any | Yes |  | The closure function that is executed for each element in the string. The syntax is `callback(element,index,string)`. |

## Full function

Do all letters in the string meet the callback condition?

```javascript
letters="ZZazz";
callback=function(inp){return inp=="z";}
allZs = StringEvery(letters,callback);
writeOutput(allZs)
```

### Expected Result: NO

## Member function

Do all letters in the string meet the callback condition?

```javascript
letters="zzZZz";
callback=function(inp){return inp=="z";}
allZs = letters.every(callback);
writeOutput(allZs)
```

### Expected Result: YES
