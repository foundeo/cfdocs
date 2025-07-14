# listFirst

 Gets the first element of a list.

```javascript
listFirst(list [, delimiters])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| delimiters | string | No | , |  |

## Simple listFirst Example

A very basic listFirst example

```javascript
listFirst("one,two,three,four");
```

### Expected Result: one

## Traversing a List with listFirst and listRest

Nesting list functions lets you move through the list in pieces.

```javascript
listFirst(listRest(listRest("one,two,three,four")));
```

### Expected Result: three
