# cfmailpart

Specifies one part of a multipart e-mail message. Can only be
 used in the cfmail tag. You can use more than one cfmailpart
 tag within a cfmail tag.

### Syntax

```html
<cfmailpart type="text/plain">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfmailpart(type="text/plain");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| type | string | Yes |  | The MIME media type of the part. Can be a valid MIME<br /> media type | /Users/garethedwards/development/github/cfdocs/docs/tags/cfmailpart.md|text/html |
| wraptext | numeric | No |  | Specifies the maximum line length, in characters of the<br /> mail text. If a line has more than the specified number of<br /> characters, replaces the last white space character, such<br /> as a tab or space, preceding the specified position with a<br /> line break. If there are no white space characters,<br /> inserts a line break at the specified position. A common<br /> value for this attribute is 72. |  |
| charset | string | No |  | The character encoding in which the part text is encoded.<br /><br /> For more information on character encodings, see:<br /> www.w3.org/International/O-charset.html. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfmailpart.md|utf-16 |

## Script syntax using function call

.

```html
cfmail( to = "recipient@example.com", from = "sender@example.com", subject = "Example email" ) {
cfmailpart(type="text/plain") {
	writeOutput("If you are seeing this, your e-mail client does not support HTML messages.");
}
cfmailpart(type="text/html") {
	writeOutput(htmlVersionOfMessage);
}
}
```
