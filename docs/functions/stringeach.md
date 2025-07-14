# stringEach

Iterates over a string and runs the closure function for each element in the string.

```javascript
stringEach(string,callback)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
string.each(callback)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The input string. |
| callback | any | Yes |  | The closure function that is executed for each element in the string. The syntax is `callback(element,index,string)`. |

## Full function

```javascript
letters="ahqwz";
callback=function(inp){ writeoutput(inp == "q");}
StringEach(letters,callback);
```

### Expected Result: NONOYESNONO

## Member function

```javascript
letters="ahqwz";
letters.each(function(inp){writeoutput(inp == "q");});
```

### Expected Result: NONOYESNONO
