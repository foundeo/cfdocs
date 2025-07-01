# findOneOf

Finds the first occurrence of any one of a set of characters in a string, from a specified start position. The search is case-sensitive.

 Returns the position of the first member of set found in string; or 0, if no member of set is found in string.

```javascript
findOneOf(set, string [, start])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| set | string | Yes |  | String which contains one or more characters to search for. |
| string | string | Yes |  | String in which to search. |
| start | numeric | No | 1 | Start position of search. Can be 1 through the length of the string to search. Choosing a start index greater than the length of the string to search will return a 0. |

## Find first instance starting from beginning of string.

We're not passing a start index in this example.

```javascript
string_to_search = 'The rain in Spain falls mainly in the plains.';
writeOutput( findOneOf('in', string_to_search) );
```

### Expected Result: 7

## Find first instance starting from the twelfth character.

Let's pass in a starting index of 12. The search will start at the twelfth character, just before the word 'Spain'.

```javascript
string_to_search = 'The rain in Spain falls mainly in the plains.';
writeOutput( findOneOf('in', string_to_search, 12) );
```

### Expected Result: 16

## Example showing this function will search all characters from the 'set' argument in the 'string' argument.

This function is case-sensitive so 't' does NOT match the first 'T'. It's the same for 'H' NOT matching the first 'h'. But 'e' matches the 'e' at the third position.
Since this is the first match, this is the index that is returned.

```javascript
string_to_search = 'The rain in Spain falls mainly in the plains.';
writeOutput( findOneOf('tHe', string_to_search, 1) );
```

### Expected Result: 3
