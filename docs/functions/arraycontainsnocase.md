# arrayContainsNoCase

Used to determine if a value is in the given array, case insensitive.

```javascript
arrayContainsNoCase(array, value)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.containsNoCase(value)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  |  |
| value | any | Yes |  |  |

## Basic example

CF2016+

```javascript
writeOutput(arrayContainsNoCase(["first", "SECOND"], "First"));
```

## Member function syntax

Lucee4+ CF2021+

```javascript
arrayWithStrings = ["first", "SECOND"];
writeOutput(arrayWithStrings.containsNoCase("FIrst"));
```
