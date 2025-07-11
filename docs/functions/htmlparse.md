# htmlParse

Parse the given HTML/XHTML and converts it to an XML object. Similar to xmlParse, but this function is very forgiving

```javascript
htmlParse(html [, caseSensitive])
```

```javascript
returns xml
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| html | string | Yes |  |  |
| caseSensitive | boolean | No |  |  |

## htmlParse Example

Convert the HTML to Xml object.It supported in Lucee

```javascript
HtmlContent = "Hello <body><p>world</p></body>";
writeDump(htmlParse(HtmlContent));
writeoutput(htmlParse('<html><body><p>This is example text</p></body></html>'));
```
