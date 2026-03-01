# val

 Converts numeric characters that occur at the beginning of a
 string to a number. If conversion fails, returns zero.

```javascript
val(String)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  | A string or a variable that contains one |

## Numeric characters at beginning and middle of a string

```javascript
val("120test12sstring");
```

### Expected Result: 120

## Numeric characters only at the end of a string

```javascript
val("string98");
```

### Expected Result: 0
