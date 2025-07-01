# getLocale

 Gets the current geographic/language locale value.
 To set the default display format of date, time, number, and
 currency values in a CFML application session, you use
 the SetLocale function.

```javascript
getLocale()
```

```javascript
returns string
```

## Output current Locale than set it to swiss locale

```javascript
writeOutput(getlocale());
writeOutput(' → ');
setLocale('de_ch');
writeOutput(getlocale());
```

### Expected Result: english (us) → german (swiss)
