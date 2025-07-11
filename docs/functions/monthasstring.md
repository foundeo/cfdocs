# monthAsString

```javascript
monthAsString(month_number [, locale])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| month_number | numeric | Yes |  |  |
| locale | string | No |  |  |

## Script Syntax

```javascript
getVal = monthAsString(11); 
 writeDump(getVal);
```

### Expected Result: result is: November

## Script Syntax

With locale

```javascript
getVal = monthAsString(6,"DE"); 
 writeDump(getVal);
```

### Expected Result: result is: Juni
