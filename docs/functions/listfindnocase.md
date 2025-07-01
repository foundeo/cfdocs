# listFindNoCase

Determines the index of the first list element in which a specified value occurs. Returns 0 if not found. Case-insensitive.

```javascript
listFindNoCase(list, value [, delimiters, includeEmptyValues])
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
list.listFindNoCase(value [, delimiters, includeEmptyValues])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| list | string | Yes |  |  |  |
| value | string | Yes |  |  |  |
| delimiters | string | No | , |  |  |
| includeEmptyValues | string | No | false |  | /Users/garethedwards/development/github/cfdocs/docs/functions/listfindnocase.md|false |

## Basic Example

Find item in a list and return the index.

```javascript
listFindNoCase("apple,orange,banana", "orange")
```

### Expected Result: 2

## Different Delimiters

Find item in a pipe delimited list and return the index.

```javascript
listFindNoCase("apple|orange|banana", "orange", "|")
```

### Expected Result: 2

## Member Syntax

listFindNoCase as a member function

```javascript
fruits = "apple|orange|banana";
writeOutput(fruits.listFindNoCase("ORANGE", "|"));
```

### Expected Result: 2
