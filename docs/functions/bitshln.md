# bitShln

Performs a bitwise shift-left, no-rotation operation.

```javascript
bitShln(number, count)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  | Integer |
| count | numeric | Yes |  | Number of bits to shift to the left (Integer in the range 0-31, inclusive) |

## Shift left by 1 bit

Uses the bitShln function to perform a bitwise shift-left operation (no-rotation)

```javascript
bitShln(5,1)
```

### Expected Result: 10
