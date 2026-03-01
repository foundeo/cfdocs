# cfhtmltopdf

Creates PDFs from HTML using a WebKit based rendering engine.

### Syntax

```html
<cfhtmltopdf>html</cfhtmltopdf>
```

### Script Syntax

```javascript
cfhtmltopdf() { writeOutput(html); };
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| encryption | string | No | none |  |
| source | string | No |  | A URL of the source HTML document to use instead of providing content directly. |
| destination | string | No |  | Pathname of a file to contain the PDF output. If you omit the destination attribute, ColdFusion displays the output in the browser. |
| marginBottom | numeric | No |  | Bottom margin in inches or cm based on unit attribute |
| marginTop | numeric | No |  | Top margin in inches or cm based on unit attribute |
| marginLeft | numeric | No |  | Left margin in inches or cm based on unit attribute |
| marginRight | numeric | No |  | Right margin in inches or cm based on unit attribute |
| name | variableName | No |  | Name of an existing variable into which the tag stores the PDF. |
| orientation | string | No | portrait |  |
| overwrite | string | No | no | Specifies whether ColdFusion overwrites an existing file. Used in conjunction with the destination attribute. |
| ownerPassword | string | No |  | Specifies the owner password. Cannot be same as userPassword. |
| userPassword | string | No |  | Specifies a user password. Cannot be same as ownerPassword. |
| permissions | string | No |  | Separate multiple permissions with commas. |
| pageType | string | No | letter | Provide a type with standard dimensions or indicate custom to define your own |
| pageWidth | numeric | No |  | Only valid if pagetype=custom. based on unit attribute |
| pageHeight | numeric | No |  | Only valid if pagetype=custom. based on unit attribute |
| saveAsName | string | No |  | The filename that appears in the SaveAs dialog when a user saves a PDF file written to the browser. |
| unit | string | No | in | Default unit for the pageHeight, pageWidth, and margin attributes: |
| language | string | No | English | CF2016+ Document language |

## Basic Usage

Put HTML inside the tags to render it as a PDF. When the destination attribute is omitted the pdf is sent back to the browser.

```html
<cfhtmltopdf>
  <h1>Hello World</h1>
</cfhtmltopdf>
```

## External Source

Use the source attribute to specify an external url.

```html
<cfhtmltopdf
 destination="usage_example.pdf" overwrite="yes"
 source="http://www.google.com/"
 unit="in" pageheight="8" pagewidth="4"
 pagetype="custom">
</cfhtmltopdf>
```

## Set Margins

Uses the margintop, marginbottom, marginleft, marginright to set the page margins

```html
<cfhtmltopdf destination="usage_example2.pdf"
 source="http://www.google.com" overwrite="true" 
 orientation="portrait" pagetype="A4" margintop="1" marginbottom="1" 
 marginleft="1" marginright="1">
</cfhtmltopdf>
```

## Protect PDF

Uses the ownerpassword, encryption, and permissions attributes to produce a password encrypted pdf.

```html
<cfhtmltopdf 
 source="http://www.google.com"
 ownerpassword="owner" userpassword="user"
 encryption="RC4_128" permissions="AllowPrinting,AllowCopy">
</cfhtmltopdf>
```
