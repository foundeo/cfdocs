# stripCR

 Deletes return characters from a string.

```javascript
stripCR(String)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  | A string or a variable that contains one |

## Removing carriage returns (cr) from a string

```javascript
x = 'A' & chr(13) & 'B' & chr(13); 
 y = stripcr( x ); 
 writeoutput( 'Original: ' & x & ' Length: #len(x)#<br>' ); 
 writeoutput( 'Stripped: ' & y & ' Length: #len(y)#' );
```
