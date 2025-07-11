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

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| number | numeric | Yes |  |  |  |
| mask | string | No | _ |  |  |
| locale | string | No |  | Geographic/language locale value, where the format is a combination of an ISO 639-1 code and an optional ISO 3166-1 code separated by a dash or an underscore. | /Users/garethedwards/development/github/cfdocs/docs/functions/lsnumberformat.md|... |

## Tag Example

lsNumberFormat returns a number value using the locale convention.

```javascript
<!--- loop through a list of locales and show number values --->
<cfloop LIST = "#Server.Coldfusion.SupportedLocales#"
index = "locale" delimiters = ",">
<cfset oldlocale = setLocale(locale)>
<cfoutput><p><b><i>#locale#</i></b><br />
#lsNumberFormat(-1234.5678, "_________")#<br />
#lsNumberFormat(-1234.5678, "_________.___")#<br />
#lsNumberFormat(1234.5678, "_________")#<br />
#lsNumberFormat(1234.5678, "_________.___")#<br />
#lsNumberFormat(1234.5678, "$_(_________.___)")#<br />
#lsNumberFormat(-1234.5678, "$_(_________.___)")#<br />
#lsNumberFormat(1234.5678, "+_________.___")#<br />
#lsNumberFormat(1234.5678, "-_________.___")#<br />
</cfoutput>
</cfloop>
```

## Script Example using specific locale

lsNumberFormat returns a number value using the specified locale.

```javascript
writeDump(lsNumberFormat(5, '.99', 'en_US'));
```
