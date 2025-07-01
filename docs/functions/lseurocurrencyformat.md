# lsEuroCurrencyFormat

Formats a number in a locale-specific currency format.
 [type - quicky]
 local: the currency format used in the locale. (Default.)
 international: the international standard currency format
 none: the currency format used; no currency symbol

```javascript
lsEuroCurrencyFormat(currency [, type, locale])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| currency | string | Yes |  |  |  |
| type | string | No | local |  | /Users/garethedwards/development/github/cfdocs/docs/functions/lseurocurrencyformat.md|none |
| locale | string | No |  | Geographic/language locale value, where the format is a combination of an ISO 639-1 code and an optional ISO 3166-1 code separated by a dash or an underscore. | /Users/garethedwards/development/github/cfdocs/docs/functions/lseurocurrencyformat.md|... |

## Tag Example

returns a currency value using the locale convention. Default value is local.

```javascript
<!--- Loop through list of locales, show currency values for 100,000 units --->
<cfloop list = "#Server.Coldfusion.SupportedLocales#"
index = "locale" delimiters = ",">
<cfset oldlocale = setLocale(locale)>
<cfoutput><p><B><I>#locale#</I></B>
Local: #lsEuroCurrencyFormat(100000, "local")#
International: #lsEuroCurrencyFormat(100000, "international")#
None: #lsEuroCurrencyFormat(100000, "none")#
<hr noshade>
</cfoutput>
</cfloop>
```

## Script Example using specific locale

lsEuroCurrencyFormat returns a currency value using the specified locale.

```javascript
writeDump(lsEuroCurrencyFormat(5, 'local', 'de_DE'));
```
