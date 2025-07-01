# decrementValue

Decrements the integer part of a number. Same as x=x-1 or x--

```javascript
decrementValue(number)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  |  |

## Decrement 7

```javascript
decrementValue(7)
```

### Expected Result: 6

## Decrement 7.5

There is a difference between CFML engines.  ACF will return the integer decremented removing the decimal part, returns 6.  Lucee will decrement the integer part but return both, returns 6.5.

```javascript
decrementValue(7.5)
```
