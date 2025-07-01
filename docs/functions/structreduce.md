# structReduce

Iterates over every entry of the struct and calls the closure to work on the key value pair of the struct. This function will reduce the struct to a single value and will return the value.

```javascript
structReduce(struct, function(result, key, value [,struct]){} [, initialVal])
```

```javascript
returns any
```

## Member Function Syntax

```javascript
someStruct.reduce(function(result, key, value [,struct]){} [, initialVal])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| struct | struct | Yes |  | The input struct. |
| callback | any | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| initialVal | any | No |  | Initial value which will be used for the reduce operation. |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| result | any | No | The result of the reduce operation after the previous iteration |
| key | string | No | The key for the current iteration |
| value | any | No | The value for the current iteration |
| struct | struct | No | A reference of the original struct |

## Script Syntax

```javascript
rainbow = { "Red"="Whero",  "Orange"="Karaka", "Yellow"="Kowhai",  "Green"="Kakariki" }; 
  ui = structReduce(  rainbow, function(previousValue, key, value) 
   { 
 return previousValue & "<dt>#key#</dt><dd>#value#</dd>"; 
  }, 
 "<dl>" 
 ) & "</dl>"; 
 writeDump(rainbow); 
 writeOutput(ui);
```

## Using Member Function

CF11+ Lucee4.5+

```javascript
rainbow = { "Red"="Whero",  "Orange"="Karaka", "Yellow"="Kowhai",  "Green"="Kakariki" }; 
  ui = rainbow.reduce( function(previousValue, key, value) 
   { 
 return previousValue & "<dt>#key#</dt><dd>#value#</dd>"; 
  }, 
 "<dl>" 
 ) & "</dl>"; 
 writeDump(rainbow); 
 writeOutput(ui);
```
