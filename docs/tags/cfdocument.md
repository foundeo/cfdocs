# cfdocument

Creates PDF or FlashPaper output from a text block containing CFML and HTML.

### Syntax

```html
<cfdocument format="PDF">html</cfdocument>
```

### Script Syntax

```javascript
cfDocument(format="PDF") { writeOutput(html); };
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| format | string | Yes |  | Specifies the report format. |
| filename | string | No |  | Specifies the fully qualified path name of a file to<br /> contain the PDF or FlashPaper output. If you omit the<br /> filename attribute, ColdFusion MX streams output to<br /> the browser. |
| localurl | boolean | No | NO | Specifies whether to retrieve image files directly <br /> from the local drive:<br /> * yes: ColdFusion retrieves image files directly from <br /> the local drive rather than by using HTTP, HTTPS, or proxy.<br /> * no: ColdFusion uses HTTP, HTTPS, or proxy to retrieve <br /> image files even if the files are stored locally. |
| overwrite | boolean | No | NO | Specifies whether ColdFusion MX overwrites an<br /> existing file. Used in conjunction with filename.<br /> Default is: false |
| name | string | No |  | Specifies the name of an existing variable into which<br /> the tag stores the PDF or FlashPaper output. |
| pagetype | string | No | A4 | Specifies the page size into which ColdFusion<br /> generates the report.<br /> - legal: 8.5 inches x 14 inches<br /> - letter: 8.5 inches x 11 inches<br /> - A4: 8.27 inches x 11.69 inches<br /> - A5: 5.81 inches x 8.25 inches<br /> - B5: 9.81 inches x 13.88 inches<br /> - Custom: Custom height and width.<br /> If you specify custom, you must also specify the pageheight<br /> and pagewidth attributes, can optionally specify margin<br /> attributes, and can optionally specify whether the units<br /> are inches or centimeters. |
| pageheight | numeric | No |  | Specifies the page height in inches (default) or<br /> centimeters. This attribute is only valid if<br /> pagetype=custom. To specify page height in<br /> centimeters, include the unit=cm attribute. |
| pagewidth | numeric | No |  | Specifies the page width in inches (default) or<br /> centimeters. This attribute is only valid if<br /> pagetype=custom. To specify page width in<br /> centimeters, include the unit=cm attribute. |
| orientation | string | No | portrait | Specifies the page orientation. Specify either of the<br /> following:<br /> - portrait (default)<br /> - landscape |
| margintop | numeric | No |  | Specifies the top margin in inches (default) or<br /> centimeters. To specify top margin in centimeters,<br /> include the unit=cm attribute. |
| marginbottom | string | No |  | Specifies the bottom margin in inches (default) or<br /> centimeters. To specify bottom margin in<br /> centimeters, include the unit=cm attribute. |
| marginleft | string | No |  | Specifies the left margin in inches (default) or<br /> centimeters. To specify left margin in centimeters,<br /> include the unit=cm attribute. |
| marginright | string | No |  | Specifies the right margin in inches (default) or<br /> centimeters. To specify right margin in centimeters,<br /> include the unit=cm attribute. |
| unit | string | No | in | Specifies the default unit (inches or centimeters) for<br /> pageheight, pagewidth, and margin attributes. |
| encryption | string | No | none | Specifies whether the output is encrypted (format="PDF" only).<br /> Default is: none |
| ownerpassword | string | No |  | Specifies an owner password (format="PDF" only). |
| userpassword | string | No |  | Specifies a user password (format="PDF" only). |
| permissions | string | No |  | Specifies one or more permissions (format="PDF" only).<br /> Separate multiple permissions with a comma. |
| fontembed | boolean | No | YES | Specifies whether ColdFusion embeds fonts in the output.<br /> Specify one of the following:<br /> - true: Embed fonts<br /> - false: Do not embed fonts.<br /> Selective: Embed all fonts except Java fonts and core fonts. |
| backgroundvisible | boolean | No | NO | Specifies whether the background prints when the<br /> user prints the document:<br /> - yes: include the background when printing.<br /> - no: do not include the background when printing. |
| scale | numeric | No |  | Specifies a scale factor as a percentage. Use this<br /> option to reduce the size of the HTML output so that<br /> it fits on that paper. Specify a number less than 100. |
| authpassword | string | No |  | Password sent to the target URL for Basic Authentication. <br />Combined with username to form a base64 encoded string that is passed in the Authenticate header. <br />Does not provide support for Integrated Windows, NTLM, or Kerebos authentication. |
| authuser | string | No |  | User name sent to the target URL for Basic Authentication. <br />Combined with password to form a base64 encoded string that is passed in the Authenticate header. <br />Does not provide support for Integrated Windows, NTLM, or Kerebos authentication. |
| bookmark | boolean | No | NO | Specifies whether bookmarks are created in the document:<br /> * yes: creates bookmarks.<br /> * no: does not create bookmarks. |
| mimetype | string | No | text/html | MIME type of the source document |
| proxypassword | string | No |  | Password required by the proxy server. |
| proxyuser | string | No |  | User name to provide to the proxy server. |
| saveasname | string | No |  | (format="PDF" only) The filename that appears in the SaveAs dialog when a user saves a PDF file written to the browser. |
| src | string | No |  | URL or the relative path to the web root. You cannot specify both the src and srcfile attributes. <br />The file must be in a browser-writable format such as, HTML, HTM, BMP, PNG, and so on. |
| srcfile | string | No |  | Absolute path of a file that is on the server. You cannot specify both the src and srcfile attributes. <br />The file must be in a browser-writable format such as, HTML, HTM, BMP, PNG, and so on. |
| useragent | string | No |  | Text to put in the HTTP User-Agent request header field. Used to identify the request client software. |
| proxyhost | string | No |  | IP address or server name for proxy host. |
| proxyport | string | No |  | port of the proxy host. |
| tagged | boolean | No | NO | Determines if PDF are created by using special tags also known as Tagged PDF |
| pdfa | boolean | No | NO | Creates a PDF of type PDF/A-1 (ISO 19005-1:2005) |
| formFields | boolean | No | YES | Specifies whether form fields are exported as widgets or only their fixed print representation is exported. |
| formsType | string | No | FDF | Specifies the submitted format of a PDF form. |
| permissionsPassword | string | No |  | This is the password that allows the user to access some permissions restricted if some permissions need to be restricted. The permissions are defined in "permissions" attribute |
| openPassword | string | No |  | If the source document is protected specify using this attribute. |

## Generate and Save a PDF to a file

Use the cfdocument tag to generate a file on the server either to save to a folder or to attach to an email

```html
<cfdocument format="pdf" filename="#getTempDirectory()#mydoc.pdf">
    <h1>Hello ColdFusion</h1>
    <p>This is <strong>PDF</strong> example document.</p>
    <p>Generated at: <cfoutput>#TimeFormat(Now())# on #DateFormat(Now())#</cfoutput></p>
</cfdocument>
```

### Expected Result: A saved Hello ColdFusion PDF to a temporary directory

## Dynamic PDF Served to Browser

PDF is sent back to the browser instead of saving to a file. The cfheader tag is used to suggest a file name to the browser. The cfcontent tag is used to set the Content-Type response header (that could also be done using cfheader) which tells the browser that it is a PDF file.

```html
<cfcontent type="application/pdf">
<cfheader name="Content-Disposition" value="attachment;filename=example.pdf">
<cfdocument format="pdf">
    <h1>Hello ColdFusion</h1>
    <p>This is <strong>PDF</strong> example document.</p>
    <p>Generated at: <cfoutput>#TimeFormat(Now())# on #DateFormat(Now())#</cfoutput></p>
</cfdocument>
```

## Script Syntax (CF11+)

This is a script representation of the the same code above. 

Note that the writeoutput is indeed necessary for any body content in a script-based cfdocument--even if no CFML variables or expressions exist in the string. (This is true also for other script-based tags that may have bodies, including cfdocumentitem and cfdocumentsection, as well as cfhtmltopdf, cfsavecontent, etc.)

```html
<cfscript>
cfcontent( type="application/pdf" );
cfheader( name="Content-Disposition", value="attachment;filename=example.pdf" );
cfdocument (format="pdf"){
writeoutput("
    <h1>Hello ColdFusion</h1>
    <p>This is <strong>PDF</strong> example document.</p>
    <p>Generated at: <cfoutput>#TimeFormat(Now())# on #DateFormat(Now())#</cfoutput></p>
    ");
}
</cfscript>
```

## Print header and footer items with page numbering

must use  evalatprint="true" in order to get current page numbering on the header/footer sections

```html
<cfdocument format="pdf"> 
<cfdocumentitem type="header" evalatprint="true" > 
<cfif (cfdocument.currentpagenumber mod 2) is 0> 
<cfoutput>#cfdocument.totalpagecount#</cfoutput> 
<cfelse> 
<cfoutput>#cfdocument.currentpagenumber#</cfoutput> 
</cfif> 
<cfoutput>cfdocument.currentpagenumber :#cfdocument.currentpagenumber#</cfoutput> 
<cfoutput>cfdocument.totalpagecount :#cfdocument.totalpagecount#</cfoutput> 
<cfoutput>cfdocument.totalsectionpagecount :#cfdocument.totalsectionpagecount#</cfoutput> 
<cfoutput>cfdocument.currentsectionpagenumber :#cfdocument.currentsectionpagenumber#</cfoutput> 
</cfdocumentitem> 
<cfdocumentitem type="footer" evalatprint="true" > 
<cfif ! (cfdocument.currentpagenumber mod 2) is 0> 
<cfoutput>if#cfdocument.totalpagecount#</cfoutput> 
<cfelse> 
<cfoutput>else#cfdocument.currentpagenumber#</cfoutput>
</cfif> 
</cfdocumentitem> 
<cfdocumentsection >Example Text 
</cfdocumentsection> 
</cfdocument>
```

### Expected Result: A PDF with Header & Footer elements
