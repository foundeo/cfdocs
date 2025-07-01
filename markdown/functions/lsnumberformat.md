# lsNumberFormat

Formats a number in a locale-specific format.
[mask - quicky]
 _,9 Digit placeholder; . decimal point; 0 Pads with zeros;
 ( ) less than zero, puts parentheses around the mask
+ plus sign before positive number minus before negative
- a space before positive minus sign before negative
, Separates every third decimal place with a comma.
L,C Left-justifies or center-justifies number
$ dollar sign before formatted number.
^ Separates left and right formatting.

```javascript
lsNumberFormat(number [, mask, locale])
```

```javascript
returns string
```
