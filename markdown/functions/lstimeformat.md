# lsTimeFormat

Formats the time part of a date/time string into a string in a locale-specific format.
 [mask - quicky]
 h,hh,H,HH: Hours; m,mm: Minutes; s,ss: Seconds;
 l: Milliseconds; t: A or P; tt: AM or PM
 "short" = h:mm tt; "medium" = h:mm:ss tt

```javascript
lsTimeFormat(time [, mask, locale])
```

```javascript
returns string
```
### Member Function Syntax

```javascript
time.lsTimeFormat([mask])
```
