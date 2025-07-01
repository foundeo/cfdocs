# listChangeDelims

 Changes a list delimiter.
 Returns a copy of the list, with each delimiter character
 replaced by new_delimiter.

```javascript
listChangeDelims(list, new_delimiter [, delimiters, [includeEmptyValues]])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
list.listChangeDelims(new_delimiter [, delimiters, [includeEmptyValues]])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | A list or a variable that contains one. |
| new_delimiter | string | Yes |  | Delimiter string or a variable that contains one. Can be an empty string. ColdFusion processes the string as one delimiter. |
| delimiters | string | No | , | A string or a variable that contains one. Characters that separate list elements. The default value is comma. If this parameter contains more than one character, ColdFusion processes each occurrence of each character as a delimiter. |
| includeEmptyValues | string | No | NO | CF10+ Set to yes to include empty values. |

## Simple Example

Changes the delimiters in the list

```javascript
listChangeDelims("foo,bar,lorem,ipsum", "|")
```

### Expected Result: foo|bar|lorem|ipsum

## Example with Custom Delimiter

Changes the delimiters in the list using a custom delimiter

```javascript
listChangeDelims("foo,bar|lorem,ipsum|me|something", "~", "|")
```

### Expected Result: foo,bar~lorem,ipsum~me~something
