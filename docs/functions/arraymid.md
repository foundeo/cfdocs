# arrayMid

Extracts a sub array from an existing array.

```javascript
arrayMid(array, start [, count])
```

```javascript
returns array
```

## Member Function Syntax

```javascript
array.mid(start [, count])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | Array to extract data from |
| start | numeric | Yes |  | The position of the first element to retrieve |
| count | numeric | No |  | The number of elements to extract. If not set, all elements up to the end of the array will be returned. |

## Using only the start parameter

Lucee4.5+ Extract elements from an array starting with element 5 and ending with the last element of the array.

```javascript
vehicles = ['Mustang','Nova','Celica','Camry','Tacoma','Tundra','Ram','F-250'];
trucks = arrayMid(vehicles, 5);
writeOutput(arrayToList(trucks));
```

### Expected Result: Tacoma,Tundra,Ram,F-250

## Using the count parameter to specify the number of elements to include

Lucee4.5+ Extract 4 elements from an array starting with element 3.

```javascript
vehicles = ['Mustang','Nova','Celica','Camry','Tacoma','Tundra','Ram','F-250'];
toyotas = arrayMid(vehicles, 3, 4);
writeOutput(arrayToList(toyotas));
```

### Expected Result: Celica,Camry,Tacoma,Tundra
