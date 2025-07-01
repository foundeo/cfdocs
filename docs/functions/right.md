# right

 Gets a specified number of characters from a string,
 beginning at the right.

```javascript
right(String, count)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  |  |
| count | numeric | Yes |  | An integer or a variable that contains one.
 Number of characters to return. |

## Using right() on a string

In this example we'll use right() to return part of a string.

```javascript
writeOutput( right( 'The quick brown fox jumped over the lazy dog', 8 ) );
```

### Expected Result: lazy dog

## Using right() with a negative count on a string

In this example we'll use a negative count right() to return part of a string. CF2018+

```javascript
writeOutput( right( 'The quick brown fox jumped over the lazy dog', -32 ) );
```

### Expected Result: the lazy dog

## Using right() in a function

In this example we'll use right() in a function to help us to capitalize the last letter in a string.

```javascript
public string function capitalizeLast( required string text ) {
	return  left( arguments.text, len( arguments.text ) - 1 ) & uCase( right( arguments.text, 1 ) );
}
```

## Using right() to test values

In this example we'll use right() to test the last five characters of a request context variable.

```javascript
if( listFindNoCase( 'super,great,coder,rulez', right( rc.answer, 5 ) ) ) {
	writeOutput( 'You are an awesome developer!' );
}
```

## Using right() as a member function

CF11+ Lucee4.5+ In this example we'll use right() as a member function inside a function to help us to capitalize the last letter in a string.

```javascript
public string function capitalizeLast( required string text ) {
	return arguments.text.left( arguments.text.len() - 1 ) & arguments.text.right( 1 ).ucase();
}
```
