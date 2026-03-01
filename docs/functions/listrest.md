# listRest

Gets a list, without its first element.

```javascript
listRest(list [, delimiters])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| delimiters | string | No | , |  |

## Simple listRest Example

A very basic listRest example

```javascript
listRest("one,two,three,four");
```

### Expected Result: two,three,four

## Combining listRest to Shorten the List

Nesting listRest shortens the list by one each time with the first element removed.

```javascript
listRest(listRest("one,two,three,four"));
```

### Expected Result: three,four

## Traversing a List with listRest and listFirst

Nesting list functions lets you move through the list in pieces.

```javascript
listFirst(listRest(listRest("one,two,three,four")));
```

### Expected Result: three
