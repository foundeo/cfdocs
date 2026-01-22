# listValueCountNoCase

Counts instances of a specified value in a list.
The search is case-insensitive. For case-sensitive search use listValueCount.

```javascript
listValueCountNoCase(list, value [, delimiters])
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

Counts instances of 'foo' in the list, ignoring case

```javascript
listValueCountNoCase("foo,bar,lorem,Foo,ipsum", "foo")
```

### Expected Result: 2

## Example with Custom Delimiter

Counts instances of 'foo' in the list with a custom delimiter, ignoring case

```javascript
listValueCountNoCase("bar|Foo|lorem,ipsum|me|foo,something|foo|FOO", "foo", "|")
```

### Expected Result: 3
