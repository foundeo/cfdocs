# cfdocumentsection

Divides a PDF or FlashPaper document into sections.
 By using this tag in conjunction with a cfdocumentitem
 tag, each section can have unique headers, footers,
 and page numbers.

### Syntax

```html
<cfdocumentsection>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfdocumentsection();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| margintop | numeric | No |  | Specifies the top margin in inches (default) or
 centimeters. To specify the top margin in centimeters,
 include the unit="cm" attribute in the parent cfdocument
 tag. |
| marginbottom | numeric | No |  | Specifies the bottom margin in inches (default) or
 centimeters. To specify the bottom margin in
 centimeters, include the unit="cm" attribute in the
 parent cfdocument tag. |
| marginleft | numeric | No |  | Specifies the left margin in inches (default) or
 centimeters. To specify the left margin in centimeters,
 include the unit="cm" attribute in the parent cfdocument
 tag. |
| marginright | numeric | No |  | Specifies the right margin in inches (default) or
 centimeters. To specify the right margin in centimeters,
 include the unit="cm" attribute in the parent cfdocument
 tag. |
| authpassword | string | No |  | Password sent to the target URL for Basic Authentication. 
Combined with username to form a base64 encoded string that is passed in the Authenticate header. 
Does not provide support for Integrated Windows, NTLM, or Kerebos authentication. |
| authuser | string | No |  | User name sent to the target URL for Basic Authentication. 
Combined with password to form a base64 encoded string that is passed in the Authenticate header. 
Does not provide support for Integrated Windows, NTLM, or Kerebos authentication. |
| mimetype | string | No | text/html | MIME type of the source document |
| name | string | No |  | Bookmark name for the section. |
| src | string | No |  | URL or the relative path to the web root. You cannot specify both the src and srcfile attributes. |
| srcfile | string | No |  | Absolute path of a file that is on the server. 
You cannot specify both the src and srcfile attributes. |
| useragent | string | No |  | Text to put in the HTTP User-Agent request header field. Used to identify the request client software. |

## A simple cfdocumentsection tag based example

We've example to create pdf with documentsection in tag syntax

```html
<cfdocument format="pdf" bookmark="yes">
<cfdocumentsection mimetype="text/html">
<table>
<tr>
<td>Coldfusuion</td>
<td>java</td>
</tr>
</table>
</cfdocumentsection>
</cfdocument>
```

## A simple cfdocumentsection in script based example

We've example to create pdf with documentsection in script syntax and Used documentsection mime type as text/html.

```html
<cfscript>
cfdocument (format="pdf",bookmark="yes"){
cfdocumentsection(mimetype="text/html"){
writeOutput("<table><tr><td>Coldfusuion</td><td>java</td></tr></table>");
}
}
</cfscript>
```
