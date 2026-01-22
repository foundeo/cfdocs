# arrayClear

 Removes all elements from an array.

```javascript
arrayClear(array)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.clear()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | An array name or variable name |

## Clear the value of an array

Uses the arrayClear function to clear the value of an array

```javascript
someArray = ["Red", "White", "Green", "Blue", "Pink"];
writeOutput(arrayClear(someArray));
```

### Expected Result: Yes

## Clear the value of an array

Lucee4.5+ To clear the value of an array

```javascript
someArray = ["Red", "White", "Green", "Blue", "Pink"];
writeOutput(arrayClear(someArray));
```

### Expected Result: true

## Clear value of an array using member function

CF11+ Uses the member function is the same as running arrayClear.

```javascript
numberArray = [1,2,3];
writeOutput(numberArray.Clear());
```

### Expected Result: Yes
