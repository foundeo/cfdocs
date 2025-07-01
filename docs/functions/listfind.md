# listFind

Determines the index of the first list element in which a specified value occurs. Returns 0 if not found. Case-sensitive

```javascript
listFind(list, value [, delimiters, includeEmptyValues])
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
list.listFind(value [, delimiters, includeEmptyValues])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| list | string | Yes |  |  |  |
| value | string | Yes |  |  |  |
| delimiters | string | No | , |  |  |
| includeEmptyValues | string | No | false |  | /Users/garethedwards/development/github/cfdocs/docs/functions/listfind.md|false |

## Basic Example

Find item in a list and return the index.

```javascript
listFind("apple,orange,banana", "orange")
```

### Expected Result: 2

## Different Delimiters

Find item in a pipe delimited list and return the index.

```javascript
listFind("apple|orange|banana", "orange", "|")
```

### Expected Result: 2

## Member Syntax

listFind as a member function

```javascript
fruits = "apple|orange|banana";
writeOutput(fruits.listFind("orange", "|"));
```

### Expected Result: 2
