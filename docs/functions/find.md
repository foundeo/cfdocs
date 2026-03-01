# find

Finds the first occurrence of a substring in a string, from a specified start position. If substring is not in string, returns zero. The search is case-sensitive.

```javascript
find(substring, string [, start])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| substring | string | Yes |  | The string you are looking for. |
| string | string | Yes |  | The string to search in. |
| start | numeric | No | 1 | The position from which to start searching in the string |

## Find apple in the string

Returns the index of apple in the string.

```javascript
find("apple", "An apple a day keeps the doctor away.")
```

### Expected Result: 4
