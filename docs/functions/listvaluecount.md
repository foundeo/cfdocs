# listValueCount

Counts instances of a specified value in a list.
The search is case-sensitive. For case-insensitive search use listValueCountNoCase.

```javascript
listValueCount(list, value [, delimiters])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| value | string | Yes |  |  |
| delimiters | string | No | , |  |

## Simple Example

Counts instances of 'foo' in the list

```javascript
listValueCount("foo,bar,lorem,foo,ipsum", "foo")
```

### Expected Result: 2

## Example with Custom Delimiter

Counts instances of 'foo' in the list with a custom delimiter

```javascript
listValueCount("bar|foo|lorem,ipsum|me|foo,something|foo|FOO", "foo", "|")
```

### Expected Result: 2
