# isSimpleValue

Returns true only if the value is a string, boolean, numeric, or date.

```javascript
isSimpleValue(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  |  |

## A number is a simple value

```javascript
isSimpleValue(42)
```

### Expected Result: YES

## A string is a simple value as well

```javascript
isSimpleValue("Hello world")
```

### Expected Result: YES

## A structure is a complex value

So it can't a be simple value

```javascript
isSimpleValue(structNew())
```

### Expected Result: NO

## An array is a complex value

```javascript
isSimpleValue(arrayNew(1))
```

### Expected Result: NO
