# pi

Gets the mathematical constant p, accurate to 15 digits
, but only shows 11 when simply outputted.

```javascript
pi()
```

```javascript
returns numeric
```

## pi to 11 digits

```javascript
pi()
```

### Expected Result: 3.14159265359

## Display all 15 digits with numberFormat

```javascript
numberFormat(pi(),"0.000000000000000")
```

### Expected Result: 3.141592653589793

## ColdFusion only shows up to 15 digits of pi

After 15th digit CF outputs 0's

```javascript
numberFormat(pi(),"0.0000000000000000000")
```

### Expected Result: 3.1415926535897930000
