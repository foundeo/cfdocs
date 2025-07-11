# listContainsNoCase

 Determines the index of the first list element that contains a
 specified substring.

```javascript
listContainsNoCase(list, substring [, delimiters])
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

Return the first instance position of 'foo', irrespective of case

```javascript
listContainsNoCase("sheep,goat,Foo,bar,foo", "foo")
```

### Expected Result: 3
