# listPrepend

 Inserts an element at the beginning of a list.

```javascript
listPrepend(someList, value [, delimiters, includeEmptyFields])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
someList.listPrepend( value [, delimiters, includeEmptyFields])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| list | string | Yes |  | A string list. |  |
| value | string | Yes |  | An element or list of elements. |  |
| delimiters | string | No | , | Characters that separate list elements. |  |
| includeEmptyFields | boolean | No | false | CF2018+ Set to true to insert blank values to the beginning of the list. | /Users/garethedwards/development/github/cfdocs/docs/functions/listprepend.md|false |

## Prepend to a List using the List member function

CF11+ Lucee4.5+

```javascript
seinfeldList = "Close Talker,Soup Nazi";
seinfeldList = seinfeldList.listPrepend("Puffy Shirt");
writeOutput(seinfeldList);
```

### Expected Result: "Puffy Shirt,Close Talker,Soup Nazi"

## Prepend to a List using a dash delimiter

```javascript
someList = "1-2-3-4";
someList = listPrepend(someList,"0","-");
writeOutput(someList);
```

### Expected Result: "0-1-2-3-4"

## Prepend to a List with Empty Fields On

CF2018+

```javascript
someList = "Feb,Mar,Apr";
someList = listPrepend(someList, ",,Jan", ",", true);
writeOutput(someList);
```

### Expected Result: ",,Jan,Feb,Mar,Apr"

## Prepend to a List with Empty Fields Off

CF2018+

```javascript
someList = "Feb,Mar,Apr";
someList = listPrepend(someList, ",,Jan,,", ",", false);
writeOutput(someList);
```

### Expected Result: "Jan,Feb,Mar,Apr"
