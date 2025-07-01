# getLocaleLanguage

Gets the language from where the locale belongs to.

```javascript
getLocaleLanguage()
```

```javascript
returns string
```

## Output current Locale's display name than set it to swiss locale

```javascript
writeOutput(getLocaleLanguage());
writeOutput(' → ');
setLocale('de_ch');
writeOutput(getLocaleLanguage());
```
