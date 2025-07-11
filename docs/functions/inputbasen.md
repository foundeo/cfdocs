# inputBaseN

Converts string, using the base specified by radix, to an integer.

```javascript
inputBaseN(String, radix)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  |  |
| radix | string | Yes |  |  |

## Binary string to decimal

```javascript
inputBaseN("1010",2)
```

### Expected Result: 10

## Hexadecimal string to decimal

```javascript
inputBaseN("3FF",16)
```

### Expected Result: 1023

## Decimal string to decimal

```javascript
inputBaseN("125",10)
```

### Expected Result: 125

## Binary number to decimal

```javascript
inputBaseN(1010,2)
```

### Expected Result: 10
