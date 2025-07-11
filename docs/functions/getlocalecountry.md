# getLocaleCountry

Gets the country where the locale belongs to.

```javascript
getLocaleCountry()
```

```javascript
returns string
```

## Output current Locale's display name than set it to swiss locale

```javascript
writeOutput(getLocaleCountry());
writeOutput(' → ');
setLocale('de_ch');
writeOutput(getLocaleCountry());
```
