# listGetAt

Gets a list element at a specified position.

```javascript
listGetAt(list, position [, delimiters [, includeEmptyValues]])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| position | numeric | Yes |  |  |
| delimiter | string | No | , |  |
| includeEmptyValues | boolean | No | false |  |

## Simple Example

Returns the 2nd element in the list

```javascript
listGetAt("foo,bar,lorem,ipsum", 2)
```

### Expected Result: bar

## Example with Delimiter

Returns the 3rd element in the list using a custom delimiter

```javascript
listGetAt("foo,bar|lorem,ipsum|me|something", 3, "|")
```

### Expected Result: me

## Example with IncludeEmptyValues

Returns the 4th element in the list, treating the empty element as a value

```javascript
listGetAt("foo,bar,,lorem,ipsum", 4, ",", true)
```

### Expected Result: lorem
