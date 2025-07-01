# stringMap

This functions executes the callback function for each element in the string.

```javascript
stringMap(string,callback)
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.map(callback)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | Original input string. |
| callback | any | No |  | The closure function that is executed for each element in the string. |

## Full function

Map each element of the string to a new value.

```javascript
letters="abcdefg";
closure=function(inp){return chr(asc(inp)+7);}
writeOutput(StringMap(letters,closure));
```

### Expected Result: hijklmn

## Member function

Map each element of the string to a new value.

```javascript
letters="abcdefg";
closure=function(inp){return chr(asc(inp)+7);}
writeOutput(letters.map(closure));
```

### Expected Result: hijklmn
