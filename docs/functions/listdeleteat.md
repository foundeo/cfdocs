# listDeleteAt

Deletes an element from a list.
 Returns a copy of the list, without the specified element.

```javascript
listDeleteAt(list, position [, delimiters])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| position | numeric | Yes |  |  |
| delimiters | string | No | , |  |

## Simple Example

Deletes 2nd item from the list

```javascript
listDeleteAt("foo,bar,lorem,ipsum", 2)
```

### Expected Result: foo,lorem,ipsum

## Example with Custom Delimiter

Deletes 2nd item from the list using a custom delimiter

```javascript
listDeleteAt("foo,bar|lorem,ipsum|me|something", 2, "|")
```

### Expected Result: foo,bar|me|something
