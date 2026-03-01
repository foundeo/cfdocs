# getLocaleInfo

Returns a structure containing info to a specific locale. This function combines the locale functions `getLocaleCountry`, `getLocaleDisplayName`, and `getLocaleLanguage` to a single function.

```javascript
getLocaleInfo()
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| locale | string | No | getLocale() | Geographic/language locale value, where the format is a combination of an ISO 639-1 code and an optional ISO 3166-1 code separated by a dash or an underscore. | /Users/garethedwards/development/github/cfdocs/docs/functions/getlocaleinfo.md|... |
| dspLocale | string | No | getLocaleDisplayName() | Locale's display name/output language | /Users/garethedwards/development/github/cfdocs/docs/functions/getlocaleinfo.md|... |

## Get information about the page's locale

```javascript
getLocaleInfo()
```

## Output page's locale in a divergent language

Outputs the language locale of the page in German.

```javascript
getLocaleInfo(dspLocale='German').display.language
```

### Expected Result: Englisch

## Output German locale in a page's language

Outputs the German locale in the language defined for the page.

```javascript
getLocaleInfo(locale='de-DE', dspLocale=getLocaleDisplayName()).display.country
```

### Expected Result: Germany
