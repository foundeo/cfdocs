# cfhtmltopdfitem

Header Footer PageBreak subdefinition for cfhtmltopdf.

You can access the following scope variables in <cfhtmltopdfitem> content:

_PAGENUMBER – Add current page number.
_LASTPAGENUMBER – Add last page number.

### Syntax

```html
<cfhtmltopdfitem>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfhtmltopdfitem();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | Yes |  | Specifies the action:

header: uses the text/image specified between the <cfhtmltopdfitem> and </cfhtmltopdfitem> tags as the running header.
footer: uses the text/image between the <cfhtmltopdfitem> and </cfhtmltopdfitem> tags as the running footer.
pagebreak: can be used to insert a pagebreak in the generated PDF. When <cfhtmltopdf> is used as a service, pagebreak will not work. |
| isBase64 | boolean | No |  | Use this only when the image attribute is given a base64 image string |
| image | string | No |  | The image file name or object to be used as header or footer.

The following parameters are supported:

A path to the image file
A Base-64 string
A byte array
A <cfimage> object |
| opacity | numeric | No | 10 | Opacity of the header/footer. Specify a valid number. A number between 1 and 10. |
| numberformat | string | No | Numeric | The page number format to be used. |
| showonprint | boolean | No |  | Show or hide header/footer when the document is printed. |
| align | string | No | Center | Alignment of the text. Left, Right, or Center. |
| leftmargin | numeric | No | 1.0 | Left margin in inches (default) or centimeters. To specify the left margin in centimeters, include the unit=cm attribute. |
| rightmargin | numeric | No | 1.0 | Right margin in inches (default) or centimeters. To specify the left margin in centimeters, include the unit=cm attribute. |
| topmargin | numeric | No | 0.5 | Top margin in inches (default) or centimeters. To specify the left margin in centimeters, include the unit=cm attribute. |
| bottommargin | numeric | No | 0.5 | Bottom margin in inches (default) or centimeters. To specify the bottom margin in centimeters, include the unit=cm attribute. |

## Adobe Example

```html
<cfhtmltopdf destination="myPDF.pdf" source="http://somesite.com" overwrite="true">
 <cfhtmltopdfitem type="header">
 Page: _PAGENUMBER of _LASTPAGENUMBER 
 </cfhtmltopdfitem>
 <cfhtmltopdfitem type="pagebreak" />
 <cfhtmltopdfitem type="footer" image="test.jpg">
 </cfhtmltopdfitem>
</cfhtmltopdf>
```
