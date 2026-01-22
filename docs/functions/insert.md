# insert

 Inserts a substring in a string after a specified character
 position. If position = 0, prefixes the substring to the
 string.

```javascript
insert(substring, String, position)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| substring | string | Yes |  | A string to insert |
| String | string | Yes |  | A string, which to insert substring |
| position | numeric | Yes |  | Substring add after this position value in given string |

## Simple insert function example

To add substring on prefix of the given string

```javascript
someString = ' chrome browser';
result = insert('Google', someString, 0);
writeOutput(result);
```

### Expected Result: Google chrome browser

## Simple insert function example with position

To add substring on suffix of the given string

```javascript
someString = 'New private mozilla fire';
length = len(someString);
writeOutput(insert('fox', someString, length));
```

### Expected Result: New private mozilla firefox
