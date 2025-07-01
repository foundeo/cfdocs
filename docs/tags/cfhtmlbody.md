# cfhtmlbody

Writes the text specified in the text attribute to the 'body' section of a generated HTML page. The cfhtmlbody tag can be useful for embedding JavaScript code, or placing other HTML tags that should go at the bottom of the page just before the closing body tag.

### Syntax

```html
<cfhtmlbody>
```

### Script Syntax

```javascript
cfhtmlbody() {}
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | No | append | possible actions are: <br /> append (default): append text to the HTML body <br /> read: return the text already set to HTML body <br /> reset: reset/remove text already set to HTML body <br /> write: write text to HTML body, overwrite already existing text in HTML head <br /> flush: writes the buffer in the HTML head to the response stream |
| variable | string | No |  | Name of variable to contain the text for HTML body. |
| id | string | No |  | ID of the snippet that is added, used to ensure that the same snippet will not be added more than once. |
| text | string | No |  | The text to add to the 'body' area of an HTML page. Alternatively if a closing tag is used then the body between the tags is used. |
| force | boolean | No |  | if set to true, it works even within a silent block |

## Tag wrap

Lucee tag wrap

```html
<cfhtmlbody><h1>Hello World</h1></cfhtmlbody>
```

## Attribute version

```html
<cfhtmlbody text='<h1>Hello World</h1>' />'>
```

## Using cfhtmlbody in cfscript

```html
cfhtmlbody( text='<h1>Hello World</h1>');
```

## Other actions

Overwriting, reading, flushing

```html
<cfhtmlbody action="write"><h1>Overwrite Body Buffer</h1></cfhtmlbody>
<cfhtmlbody action="read" variable="body"></cfhtmlbody>
<cfoutput><b>#body#</b></cfoutput>
<cfhtmlbody action="reset" />
<cfhtmlbody><h1>New Body</h1></cfhtmlbody>
<cfhtmlbody action="flush" />
```
