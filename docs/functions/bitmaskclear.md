# bitMaskClear

Performs a bitwise mask clear operation.

```javascript
bitMaskClear(number, start, length)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  | Integer |
| start | numeric | Yes |  | Start bit for the mask (Integer in the range 0-31, inclusive) |
| length | numeric | Yes |  | Length of bits in the mask (Integer in the range 0-31, inclusive) |

## Bitwise Mask Clear

Uses the bitMaskClear function to clear (setting to 0) each of the corresponding bits

```javascript
bitMaskClear(3, 0, 1)
```

### Expected Result: 2

## Using non zero start parameter

```javascript
bitMaskClear(3, 1, 1)
```

### Expected Result: 1

## Using non zero mask start and length parameters

```javascript
bitMaskClear(10, 1, 2)
```

### Expected Result: 8
