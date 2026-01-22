# arrayRange

Build an array out of a range of numbers or using our range syntax: {start}..{end} or using the from and to arguments

```javascript
arrayRange(from, to)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript

```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| from | numeric | Yes | 1 | The initial index, defaults to 1 or you can use the {start}..{end} notation. |
| to | numeric | Yes |  | The last index item, or defaults to the from value. |

## Create an array of sequential numbers using the string syntax.

```javascript
arr = arrayRange( "2..5" );
writeOutput('This array has ' & arrayLen(arr) & ' elements.');
```

### Expected Result: This array has 4 elements.

## Create an array of sequential numbers using the string syntax.

```javascript
arr = arrayRange( 5, 10 );
writeOutput('This array has ' & arrayLen(arr) & ' elements.');
```

### Expected Result: This array has 6 elements.
