# listAppend

Concatenates a list or element to a list and returns the concatenated list.

```javascript
listAppend(list, value [, delimiters, includeEmptyFields])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
str.listAppend(value [, delimiters, includeEmptyFields])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| list | string | Yes |  | A list or variable with the list. |  |
| value | string | Yes |  | An element or a list of elements. |  |
| delimiters | string | No | , | A string or variable with a character that separates list elements. |  |
| includeEmptyFields | boolean | No | false | CF2018+ Set to true to append blank values to the list. | /Users/garethedwards/development/github/cfdocs/docs/functions/listappend.md|false |

## Simple listAppend Example

Add 'foo' to the end of this list

```javascript
oldList = "bar,bar2";
newList = listAppend(oldList, "foo");
writeOutput(oldList & "-->" & newList);
```

### Expected Result: bar,bar2,foo

## Simple listAppend Example with Delimiter

Add 'foo' to the end of this list using a custom delimiter

```javascript
oldList = "bar,bar2";
newList = listAppend(oldList, "foo", "|");
writeOutput(oldList & "-->" & newList);
```

### Expected Result: bar,bar2|foo

## Simple listAppend Example with Empty Fields On

CF2018+ Add 'foo,,' to the end of this list using includeEmptyFields as true

```javascript
oldList = "bar,bar2";
newList = listAppend(oldList, "foo,,", ",", true);
writeOutput(oldList & "-->" & newList);
```

### Expected Result: bar,bar2,foo,,

## Simple listAppend Example with Empty Fields Off

CF2018+ Add 'foo' to the end of this list using includeEmptyFields as false

```javascript
oldList = "bar,bar2";
newList = listAppend(oldList, "foo,,", ",", false);
writeOutput(oldList & "-->" & newList);
```

### Expected Result: bar,bar2,foo
