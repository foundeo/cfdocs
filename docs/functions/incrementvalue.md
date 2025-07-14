# incrementValue

Increment the integer part of a number.
Same as x=x+1 or x++

```javascript
incrementValue(number)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  |  |

## Increment 7

```javascript
incrementValue(7)
```

### Expected Result: 8

## Increment 7.5

There is a difference between CFML engines. ACF will return the integer incremented removing the decimal part. Lucee will increment the integer part but return both.

```javascript
incrementValue(7.5)
```
