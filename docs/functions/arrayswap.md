# arraySwap

Swaps array values of an array at specified positions. This function is more efficient than multiple cfset tags

```javascript
arraySwap(array, position1, position2)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.swap(position1, position2)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array for which positions will be swapped |
| position1 | numeric | Yes |  | Position of 1st element to swap. |
| position2 | numeric | Yes |  | Position of 2nd element to swap. |

## Swap the position of two values in an array

```javascript
superiorArray = ['Spider-Man','Green Goblin','Doctor Octopus','Venom'];
arraySwap(superiorArray,1,3);
writeDump(superiorArray);
```

### Expected Result: ['Doctor Octopus', 'Green Goblin', 'Spider-Man', 'Venom']

## Swap the position of two values in an array using the member function

CF11+ or Lucee4.5+

```javascript
superiorArray = ['Spider-Man','Green Goblin','Doctor Octopus','Venom'];
superiorArray.swap(1,3);
writeDump(superiorArray);
```

### Expected Result: ['Doctor Octopus', 'Green Goblin', 'Spider-Man', 'Venom']
