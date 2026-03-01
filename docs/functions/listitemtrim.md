# listItemTrim

Trims every item in the list and returns a new list.

```javascript
listItemTrim(list [, delimiters] [, includeEmptyFields])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
list.listItemTrim([delimiters] [, includeEmptyFields])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | The list with the items, you want to trim. |
| delimiters | string | No | , | The delimiters which the list is using. |
| includeEmptyFields | boolean | No | false | By default empty items will be removed from the list. If it is true, empty items will be stay in the list. |

## Simple Example

Trims each item in the list.

```javascript
exampleList = "hello, world ,this, is a, ,example";
writeOutput(listItemTrim(examplelist));
```

### Expected Result: hello,world,this,is a,,example

## Using as member function

Trims each item in the list.

```javascript
exampleList = "hello, world ,this, is a, ,example";
exampleList = exampleList.listItemTrim();
writeOutput(examplelist);
```

### Expected Result: hello,world,this,is a,,example

## Keep empty items in the list

Trims each item in the list and keep empty items.

```javascript
exampleList = "hello, world ,this, is a,  ,,example";
writeOutput(listItemTrim(examplelist, ",", true));
```

### Expected Result: hello,world,this,is a,,,example
