# cfmailparam

Attaches a file or adds a header to an e-mail message. Can only
 be used in the cfmail tag. You can use more than one
 cfmailparam tag within a cfmail tag.

### Syntax

```html
<cfmailparam>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfmailparam();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| file | string | No |  | Attaches file to a message. Mutually exclusive with name
 attribute. The file is MIME encoded before sending. |
| type | string | No |  | The MIME media type of the part. Can be a can be valid MIME
 media type |
| name | string | No |  | Name of header. Case-insensitive. Mutually exclusive with
 file attribute.
 The values listed are from rfc2822 |
| value | string | No |  | Value of the header. |
| contentID | string | No |  | The Identifier for the attached file. This ID should
 be globally unique and is used to identify the file in
 an IMG or other tag in the mail body that references
 the file content. |
| disposition | string | No | attachment | How the attached file is to be handled. Can be one
 of the following:
 - attachment: present the file as an attachment
 - inline: display the file contents in the message |
| content | string | No |  | Lets you send the contents of a
ColdFusion variable as an attachment |
| remove | boolean | No |  | Tells ColdFusion to remove any attachments after successful mail delivery. |
| filename | string | No |  | CF2016+ Lucee5.1.0.17+ The file name of the attachment as seen by the recipient. |

## Send basic email message with attachment

The SMTP server details are provided through the Administrator. This example attaches a file. Use the full path of the file.

```html
<cfmail to="recipient@example.com" from="sender@example.com" subject="Example email">
  <cfmailparam file="/#attachment#">
  Your Email Message!!
</cfmail>
```

## Send basic email message with attachment and specified MIME type

The SMTP server details are provided through the Administrator. This example attaches a file. Use the full path of the file. Set the MIME type of the file by using the optional type parameter.

```html
<cfmail to="recipient@example.com" from="sender@example.com" subject="Example email">
  <cfmailparam file="/#attachment#" type="text/plain">
  Your Email Message!!
</cfmail>
```

## Send basic email message with an additional email header parameter

The SMTP server details are provided through the Administrator. This example sets an optional X-Header. Check with your email server or service provider to find out what headers are supported.

```html
<cfmail to="recipient@example.com" from="sender@example.com" subject="Example email">
  <cfmailparam name="X-Priority" value="#priority#">
  Your Email Message!!
</cfmail>
```

## Send basic email message with attachment (script syntax)

The SMTP server details are provided through the Administrator. This example attaches a file using cfscript. Use the full path of the file.

```html
cfmail(
 to="recipient@example.com",
 from="sender@example.com",
 subject="Example email"
 ) {
 cfmailparam( file="/#attachment#" )
 writeOutput( "Your Email Message!!") 
 };
```
