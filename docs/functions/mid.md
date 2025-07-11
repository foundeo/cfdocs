# mid

 Extracts a substring from a string.

```javascript
mid(String, start, count)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  | The string from which the substring will be extracted. |
| start | numeric | Yes |  | The position of the first character to retrieve. |
| count | numeric | Yes |  | The number of characters to retrieve. |

## Extract month from date

Grabs the month out of a raw date yyyymmdd value.

```javascript
mid("20001122", "5", "2")
```

### Expected Result: 11
