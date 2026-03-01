# structSort

Returns a sorted array of the top level keys in a structure. Sorts using alphabetic or numeric sorting, and can sort based on the values of any structure element.

```javascript
structSort(struct [, sortType, sortOrder, path, localeSensitive])
structSort(struct, callback)
```

```javascript
returns array
```

## Member Function Syntax

```javascript
struct.sort([sortType, sortOrder, path, localeSensitive])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| struct | struct | Yes |  | A ColdFusion structure |
| sortType | string | No | text | * numeric<br />* text: case-sensitive<br />* textnocase |
| sortOrder | string | No | asc | * asc: ascending (a to z) sort order.<br />* desc: descending (z to a) sort order |
| path | string | No |  | Top-level key path; String or a variable that contains one |
| localeSensitive | boolean | No | NO | CF10+ Respect locale-specific characters (including support for umlaut characters) while sorting<br />(Applies to type"text" and "textnocase". |
| callback | function | No |  | CF2016+ A closure for sorting which takes two keys of the struct and returns whether the first value is greater than, equal to, or less than the second value. Inside compare function can be used (compare, compareNoCase, dateCompare or custom). `function(key1, key2)` |

## Numeric sorting

```javascript
someStruct = {red=93,yellow=90,green=94};
result = structSort(someStruct, "numeric", "desc");
writeOutput( lcase(serializeJSON(result)) );
```

### Expected Result: ["green", "red", "yellow"]

## Sort by subelement

```javascript
someStruct = {};
someStruct.scott = {age=26, department="General"};
someStruct.glan = {age=29, department="computer"};
someStruct.george = {age=31, department="Physical"};
result = structSort(someStruct, "textnocase", "asc", "department");
writeOutput( lcase(serializeJSON(result)) );
```

### Expected Result: ["glan","scott","george"]

## Date sorting using callback

Compare values via dateCompare

```javascript
birthdays = {
	'Jim': '1982/12/5',
	'Anne': '1968/9/13',
	'Thomas': '1975/3/28'
};

sorted = structSort(birthdays,function(e1,e2) {
	return dateCompare(e1,e2);
});

for(birthday in sorted) {
	writeOutput(birthday&' ('&dateDiff('yyyy',birthdays[birthday],now())&'), ');
}
```

### Expected Result: Anne (49), Thomas (42), Jim (35),
