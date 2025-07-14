# listQualify

Inserts a string at the beginning and end of list elements.

```javascript
listQualify(list, qualifier [, delimiters] [, elements] [, includeEmptyValues])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | A list or variable name |
| qualifier | string | Yes |  | A string or character in which to insert before and after the list elements |
| delimiters | string | No | , | Characters that separate list elements. The default value is comma. If this parameter contains more than one character, ColdFusion uses the first character as the delimiter and ignores the remaining characters. |
| elements | string | No | all | all -all elements; char -elements that are composed of alphabetic characters |
| includeEmptyFields | boolean | No |  | If includeEmptyFields is true, empty value add in list elements |

## Simple example for listQualify function with delimiter

To insert a string or character before and after the list elements.

```javascript
list = "coldfusion:railo:144:lucee:46";
writeOutput(listQualify(list, "|", ":"));
```

### Expected Result: |coldfusion|:|railo|:|144|:|lucee|:|46|

## Example for listQualify function with elements

To insert a string or character before and after the alphabet list elements only.

```javascript
list = "coldfusion:railo:144:lucee:46";
writeOutput(listQualify(list, "|", ":","CHAR"));
```

### Expected Result: |coldfusion|:|railo|:144:|lucee|:46

## Example for listQualify function with includeEmptyFields

If includeEmptyFields is true, empty value add in list elements.

```javascript
list = "coldfusion:railo:144::lucee::46";
writeOutput(listQualify(list, "|", ":","CHAR",true));
```

### Expected Result: |coldfusion|:|railo|:144:||:|lucee|:||:46
