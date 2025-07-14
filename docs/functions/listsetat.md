# listSetAt

 Replaces the contents of a list element.

```javascript
listSetAt(list, position, value [, delimiters])
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

Replaces the 2nd list element with 'foo'

```javascript
listSetAt("bar,lorem,ipsum", 2, "foo")
```

### Expected Result: bar,foo,ipsum

## Example with Custom Delimiter

Inserts 'foo' into the list with a custom delimiter

```javascript
listSetAt("bar|lorem,ipsum|me|something", 2, "foo", "|")
```

### Expected Result: bar|foo|me|something
