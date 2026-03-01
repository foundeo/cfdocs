# getLocaleDisplayName

Gets a locale value and displays the name in a manner that is appropriate to a specific locale. By default, gets the current locale in the current locale's language.

```javascript
getLocaleDisplayName([locale, inLocale])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| locale | string | No |  | The locale whose name you want. The default is the current ColdFusion locale, or if no ColdFusion locale has been set, the JVM locale. |
| inLocale | string | No |  | The locale in which to return the name. The default is the current ColdFusion locale, or if no ColdFusion locale has been set, the JVM locale. |

## Output current Locale's display name than set it to swiss locale

```javascript
writeOutput(getLocaleDisplayName());
writeOutput(' → ');
setLocale('de_ch');
writeOutput(getLocaleDisplayName());
```

### Expected Result: English (United States) → Deutsch (Schweiz)
