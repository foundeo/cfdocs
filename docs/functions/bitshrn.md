# bitShrn

Performs a bitwise shift-right, no-rotation operation.

```javascript
bitShrn(number, count)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  | Integer |
| count | numeric | Yes |  | Number of bits to shift to the right (Integer in the range 0-31, inclusive) |

## Shift right by 1 bit

Uses the function bitShrn to perform a bitwise shift-right operation (no-rotation)

```javascript
bitShrn(5,1)
```

### Expected Result: 2
