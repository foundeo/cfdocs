# chr

Converts a numeric value to a UCS-2 character.

```javascript
chr(number)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  | The UCS-2 code value (a number in the range 0 - 65535) |

## Character and value of Korean currency symbol ( unicode number 8361 )

```javascript
x = chr( 8361 ); 
 writeOutput( 'character: #x#' ); 
 x = asc( x ); 
 writeOutput( '<br>Unicode value: #x#');
```
