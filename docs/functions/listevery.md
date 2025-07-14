# listEvery

This function calls a given callback function for every element in a given string list and returns true, if all of the calls returns true.

```javascript
listEvery(list, closure [, delimiter] [, includeEmptyFields] [, multiCharacterDelimiter] [, parallel] [, maxThreads])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
list.listEvery(closure [, delimiter] [, includeEmptyFields] [, multiCharacterDelimiter] [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | List to iterate. |
| closure | function | Yes |  | Callback function that is called for every item of the list and returns a boolean value. The arguments passed to the callback are<br /><br />value: Current list item<br />index: Index of the list item within the list<br />list: List as defined in the 'list' parameter<br />delimiter: Delimiter as defined in the 'delimiter' parameter |
| delimiter | string | No | , | Delimiter used to separate the string list. |
| includeEmptyFields | boolean | No | false | Specifies whether to include empty fields or not. |
| multiCharacterDelimiter | boolean | No | true | Specifies whether the 'delimiter' parameter specifies a multi-character delimiter. If it is set to `true`, all characters are considered as one delimiter; otherwise each character is a delimiter on its own. |
| parallel | boolean | No | false | Specifies whether to execute closures in parallel. |
| maxThreads | numeric | No | 20 | Maximum number of threads executed, ignored when argument 'parallel' is set to false. |

## Example for positive result

Checks whether all items in a list are greater than 2 and outputs true because all of them fulfill the requirement.

```javascript
list = '4,5,6,7';
writeOutput(listEvery(list, function(value) { return value gt 2; }));
```

### Expected Result: YES

## Example for negative result

Checks whether all items in a list are greater than 2 and outputs false because some of them do not fulfill the requirement.

```javascript
list = '1,2,3,4';
writeOutput(listEvery(list, function(value) { return value gt 2; }));
```

### Expected Result: NO
