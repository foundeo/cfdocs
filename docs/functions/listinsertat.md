# listInsertAt

Inserts an element in a list.

```javascript
listInsertAt(list, position, value [, delimiters])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| position | numeric | Yes |  |  |
| value | string | Yes |  |  |
| delimiters | string | No | , |  |

## Simple Example

Inserts 'foo' into the list at position 2

```javascript
listInsertAt("bar,lorem,ipsum", 2, "foo")
```

### Expected Result: bar,foo,lorem,ipsum

## Example with Custom Delimiter

Inserts 'foo' into the list with a custom delimiter

```javascript
listInsertAt("bar|lorem,ipsum|me|something", 2, "foo", "|")
```

### Expected Result: bar|foo|lorem,ipsum|me|something
