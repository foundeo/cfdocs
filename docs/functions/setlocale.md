# setLocale

 Sets the country/language locale for CFML processing
 and the page returned to the client. The locale value
 determines the default format of date, time, number, and
 currency values, according to language and regional
 conventions.

```javascript
setLocale(new_locale)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| new_locale | string | Yes |  | The name of a locale; for example, "English (US)" | /Users/garethedwards/development/github/cfdocs/docs/functions/setlocale.md|Swedish |

## Set Locale Script Example

Outputs the current locale, Sets the locale to French (Belgian) and outputs it, then puts it back to the original and outputs it

```javascript
<cfscript>
    currentLocale = getLocale();
    writeOutput("Current: ");
    writeDump(currentLocale);
    writeOutput("<br />");
    setLocale("French (Belgian)");
    writeOutput("New: ");
    writeDump(getLocale());
    writeOutput("<br />");
    setLocale(currentLocale);
    writeOutput("Original: ");
    writeDump(getLocale());
</cfscript>
```
