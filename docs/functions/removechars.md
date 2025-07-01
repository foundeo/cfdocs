# removeChars

 Removes characters from a string.

```javascript
removeChars(String, start, count)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  | The string or variable containing a string to process. |
| start | numeric | Yes |  | The starting position in the string to process. |
| count | numeric | Yes |  | Number of characters to remove. |

## Remove a string

```javascript
removeChars('Hello CFML World',6,5)
```

### Expected Result: Hello World
