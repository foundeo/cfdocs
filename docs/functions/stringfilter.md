# stringFilter

This function uses the callback to filter the elements in a string.

```javascript
stringFilter(string,callback)
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.filter(callback)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | Original input string to search. |
| callback | any | Yes |  | The closure function that is executed for each element in the string. |

## Full function

Return only the letters in the string that meet the callback condition.

```javascript
letters="zzQQZ";
callback=function(inp){return inp=="z";}
onlyZs = StringFilter(letters,callback);
writeOutput(onlyZs);
```

### Expected Result: zzZ

## Member function

Return only the letters in the string that meet the callback condition.

```javascript
letters="zzQQZ";
callback=function(inp){return inp=="z";}
onlyZs = letters.filter(callback);
writeOutput(onlyZs);
```

### Expected Result: zzZ
