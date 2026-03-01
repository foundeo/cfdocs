# left

 Returns the leftmost count characters in a string.

```javascript
left(String, count)
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.left(count)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  |  |
| count | numeric | Yes |  | An integer or a variable that contains one.<br /> Number of characters to return. |

## Using left() on a string

In this example we'll use left() to return part of a string.

```javascript
writeOutput( left( 'The quick brown fox jumped over the lazy dog', 19 ) );
```

### Expected Result: The quick brown fox

## Using left() with a negative count on a string

CF2018+ In this example we'll use a negative count to return part of a string. CF2018+

```javascript
writeOutput( left( 'The quick brown fox jumped over the lazy dog', -25 ) );
```

### Expected Result: The quick brown fox

## Using left() in a function

In this example we'll use left() in a function to help us to capitalize the first letter in a string.

```javascript
public string function capitalize( required string text ) {
	return uCase( left( arguments.text, 1 ) ) & right( arguments.text, len( arguments.text ) - 1 );
}
```

## Using left() to test values

In this example we'll use left() to test the first five characters of a request context variable.

```javascript
if( listFindNoCase( 'super,great,coder,rulez', left( rc.answer, 5 ) ) ) {
	writeOutput( 'You are an awesome developer!' );
}
```

## Using left() as a member function

CF11+ Lucee4.5+ In this example we'll use left() as a member function inside a function to help us to capitalize the first letter in a string.

```javascript
public string function capitalize( required string text ) {
	return arguments.text.left( 1 ).ucase() & arguments.text.right( arguments.text.len() - 1 );
}
```
