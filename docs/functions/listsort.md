# listSort

Sorts list elements according to a sort type and sort order. Returns a sorted copy of the list.
 [sortType - description]
 numeric: sorts numbers
 text: sorts text alphabetically, taking case into account
 - aabzABZ, if sort_order = "asc"
 - ZBAzbaa, if sort_order = "desc"
 textnocase: sorts text alphabetically, without regard to case
 - aAaBbBzzZ, in an asc sort;
 - ZzzBbBaAa, in a desc sort;

```javascript
listSort(list, sortType [, sortOrder] [, delimiters] [, includeEmptyFields] [, localeSensitive])
or
listSort(list, callback)
```

```javascript
returns string
```

## Member Function Syntax

```javascript
list.listSort(sortType [, sortOrder])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | A list or variable name |
| sortType | string | Yes |  | numeric: sorts numbers<br /> text: sorts text alphabetically, taking case into account<br /> (also known as case-sensitive).<br /> - aabzABZ for ascending sort(sort_order = "asc")<br /> - ZBAzbaa for descending sort(sort_order = "desc")<br /><br /> textnocase: sorts text alphabetically, without regard to<br /> case (also known as case-insensitive).<br /> - aAaBbBzzZ for ascending sort(sort_order = "asc")<br /> - ZzzBbBaAa for descending sort(sort_order = "desc") |
| sortOrder | string | No | asc | - asc: ascending sort order<br />- desc: descending sort order |
| delimiters | string | No | , | Characters that separate the list elements. The default value is comma. If this parameter contains more than one character, ColdFusion uses the first character in the string as the delimiter in the output list. |
| includeEmptyFields | boolean | No | false | Set to true to include empty fields. |
| callback | function | No |  | CF2016+ A function that uses two elements of a list. `function(element1, element2)`. Returns whether the first is less than (-1), equal to (0) or greater than (1) the second one (like the compare functions). |
| localeSensitive | boolean | No | false | CF10+ Specify if you wish to do a locale sensitive sorting. |

## Simple example for listSort function

Uses the listSort() function to get the list which sorted by type text(case-sensitive)

```javascript
list = "COLDFUSION,coldfusion,adobe,LucEE,RAILO";
sortList = listSort(list, "Text", "desc");
writeOutput(sortList);
```

### Expected Result: coldfusion,adobe,RAILO,LucEE,COLDFUSION

## Example for listSort function with delimiters

Uses the listSort() function with delimiters to get the list which sorted by type numeric

```javascript
list = "10;20;-99;46;50";
sortList = listSort(list, "Numeric", "asc", ";");
writeOutput(sortList);
```

### Expected Result: -99;10;20;46;50

## Simple Example for listSort function using sortType(textnocase)

Uses the listSort() function with delimiters to get the list which sorted by type textnocase(case-insensitive)

```javascript
list = "10|RED|yeLLow|-246|green|ORange";
sortList = listSort(list, "TextNoCase", "asc", "|");
writeOutput(sortList);
```

### Expected Result: -246|10|green|ORange|RED|yeLLow
