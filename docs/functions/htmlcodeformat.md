# htmlCodeFormat

Replaces special characters in a string with their HTML-escaped equivalents and inserts &lt;pre&gt; and &lt;/pre&gt; tags at the beginning and end of the string.
The only difference between this function and `HTMLEditFormat` is that `HTMLEditFormat` doesn't surround the text in HTML `pre` tags.

```javascript
htmlCodeFormat(string [, version])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| string | string | Yes |  | A String or variable that contains one. |  |
| version | numeric | No | 2.0 | HTML version to use. Currently ignored.
 -1: The latest implementation of HTML
 2.0: HTML 2.0 (Default)
 3.2: HTML 3.2 | /Users/garethedwards/development/github/cfdocs/docs/functions/htmlcodeformat.md|3.2 |

## Tag Syntax

```javascript
<cfset testString="This is a test & this is another <This text is in angle brackets> Previous line was blank!!!">   <cfoutput>#htmlCodeFormat(testString)#</cfoutput>
```
