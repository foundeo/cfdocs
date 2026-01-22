# arrayToList

Converts a one-dimensional array to a list.

```javascript
arrayToList(array [, delimiter])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
someArray.toList([delimiter])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  |  |
| delimiter | string | No | , |  |

## Retrieve an array as a list

Uses the arrayToList function with a pipe delimiter to retrieve an array as a list

```javascript
someArray = [1,2,3,4];
someList = arrayToList(someArray,"|");
writeOutput(someList);
```

### Expected Result: "1|2|3|4"

## Retrieve an array as a list using the Array member function

CF11+ Lucee4.5+ Uses the Array member function to retrieve an array as a list

```javascript
seinfeldArray = ["Jerry","Elaine","Kramer","George"];
seinfeldList = seinfeldArray.toList();
writeOutput(seinfeldList);
```

### Expected Result: "Jerry,Elaine,Kramer,George"
