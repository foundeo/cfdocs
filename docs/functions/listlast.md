# listLast

Gets the last element of a list.

```javascript
listLast(list [, delimiters, includeEmptyValues ])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| list | string | Yes |  | A list or a variable that contains a list. |  |
| delimiters | string | No | , | A string or a variable that contains one. Characters that separate list elements. The default value is comma. If this parameter contains more than one character, ColdFusion processes each occurrence of each character as a delimiter; you cannot specify a multicharacter delimiter. |  |
| includeEmptyValues | boolean | No |  | Set to true to include empty values. | /Users/garethedwards/development/github/cfdocs/docs/functions/listlast.md|false |

## Simple listLast Example

A very basic listLast example

```javascript
listLast("one,two,three,four");
```

### Expected Result: four

## listLast Example with multiple delimiters

A more advanced listLast example

```javascript
listLast("one/two\three/four", "\/");
```

### Expected Result: four
