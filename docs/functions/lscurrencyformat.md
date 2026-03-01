# lsCurrencyFormat

Formats a number in a locale-specific currency format. For countries that use the euro, the result depends on the JVM.
 [type - quicky]
 local: the currency format and currency symbol used locally.
 - With JDK 1.3, the default for Euro Zone: local currency.
 - With JDK 1.4, the default for Euro Zone: euro.
 international: the international standard currency format
 none: the local currency format; no currency symbol

```javascript
lsCurrencyFormat(number [, type, locale])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| number | numeric | Yes |  |  |  |
| type | string | No | local |  | /Users/garethedwards/development/github/cfdocs/docs/functions/lscurrencyformat.md|none |
| locale | string | No |  | Geographic/language locale value, where the format is a combination of an ISO 639-1 code and an optional ISO 3166-1 code separated by a dash or an underscore. | /Users/garethedwards/development/github/cfdocs/docs/functions/lscurrencyformat.md|... |

## Tag Example

lsCurrencyFormat returns a currency value using the locale convention. Default value is local.

```javascript
<!--- loop through list of locales; show currency values for 100,000 units --->
<cfloop LIST = "#Server.Coldfusion.SupportedLocales#"
index = "locale" delimiters = ",">
<cfset oldlocale = setLocale(locale)>
<cfoutput><p><b><I>#locale#</I></b>
Local: #lsCurrencyFormat(100000, "local")#
International: #lsCurrencyFormat(100000, "international")#
None: #lsCurrencyFormat(100000, "none")#
<hr noshade>
</cfoutput>
</cfloop>
```

## Script Example using specific locale

lsCurrencyFormat returns a currency value using the specified locale.

```javascript
writeDump(lsCurrencyFormat(5, 'local', 'en_US'));
```
