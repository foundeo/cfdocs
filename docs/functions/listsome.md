# listSome

This function calls a given closure/function with every element in a given string list and returns true, if one of the closure calls returns true.

```javascript
listSome(list, closure [, delimiter] [, includeEmptyFields] [, multiCharacterDelimiter] [, parallel] [, maxThreads])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
list.listSome(closure [, delimiter] [, includeEmptyFields] [, multiCharacterDelimiter] [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | string list to iterate

Alias: string |
| closure | function | Yes |  | function/closure that implements the following constructor [function(any value, numeric index,string list, string delimiter):boolean].

Alias: function, callback, udf |
| delimiter | string | No | , | delimiter used to separate the string list |
| includeEmptyFields | boolean | No | false | include empty fields or not |
| multiCharacterDelimiter | boolean | No | true | specifying whether the delimiters parameter specifies a multi-character delimiter. If this parameter is true, the delimiters parameter must specify a single delimiter consisting of multiple characters. This parameter enables the ListToArray function to convert a list to an array of color names |
| parallel | boolean | No | false | execute closures parallel |
| maxThreads | numeric | No | 20 | maximum number of threads executed, ignored when argument "parallel" is set to false |

### closure ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| value | any | No | current value from the list |
| index | numeric | No | position in the list |
| list | string | No | string list to iterate |
| delimiter | string | No | delimiter used to separate the string list |

## List contains some.

Take a string list and see if some elements match a given predicate.

```javascript
var fruitList = arrayToList(["apple", "mango", "orange", "pear"], ",");
writeOutput(listSome(fruitList, function(fruit) {
	return findNoCase("n", fruit);
}, ","));
```

### Expected Result: true
