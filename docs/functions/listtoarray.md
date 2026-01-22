# listToArray

 Copies the elements of a list to an array.

```javascript
listToArray(list [, delimiters] [, includeEmptyFields] [, multiCharacterDelimiter])
```

```javascript
returns array
```

## Member Function Syntax

```javascript
str.listToArray([delimiters] [, includeEmptyFields] [, multiCharacterDelimiter])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | A list or variable name |
| delimiters | string | No | , |  |
| includeEmptyFields | boolean | No | false | A Boolean value specifying whether to create empty array entries if there are two delimiters in a row. |
| multiCharacterDelimiter | boolean | No | false | A Boolean value specifying whether the delimiters parameter specifies a multi-character delimiter. |

## Simple example for listToArray function

Uses the listToArray() function to retrieve a list as an array

```javascript
list = "red,green,orange";
getArray = listToArray(list);
someJSON = serializeJSON(getArray);
writeOutput(someJSON);
```

### Expected Result: ["red", "green", "orange"]

## Example for listToArray function with delimiter

Uses the listToArray() function with a semicolon delimiter to retrieve a list as an array

```javascript
list = "coldfusion;php;java;sql";
getArray = listToArray(list,";");
someJSON = serializeJSON(getArray);
writeOutput(someJSON);
```

### Expected Result: ["coldfusion", "php", "java", "sql"]

## Example for listToArray function with includeEmptyFields

If includeEmptyFields is true, empty value add in array elements

```javascript
list = "coldfusion;php;;java;sql";
getArray = listToArray(list,";",true);
someJSON = serializeJSON(getArray);
writeOutput(someJSON);
```

### Expected Result: ["coldfusion", "php", " " , "java", "sql"]

## Example for listToArray function with multiCharacterDelimiter

Uses the listToArray() function to retrieve a list as an array with multiCharacterDelimiter

```javascript
list = "coldfusion,php,|test,java,|sql";
getArray = listToArray(list,",|",false,true);
someJSON = serializeJSON(getArray);
writeOutput(someJSON);
```

### Expected Result: ["coldfusion,php", "test,java", "sql"]
