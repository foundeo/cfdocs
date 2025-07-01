# listContains

Determines the index of the first list element that contains a
 specified substring.
 Returns the index of the first list element that contains
 substring. If not found, returns zero. The search for the substring is case-sensitive.

```javascript
listContains(list, substring [, delimiters])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| substring | string | Yes |  |  |
| delimiters | string | No | , |  |

## Simple Example

Return the first instance of an item containing 'oo'

```javascript
listContains("sheep,goat,foo,bar,goo", "oo")
```

### Expected Result: 3
