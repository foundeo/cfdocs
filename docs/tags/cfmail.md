# cfmail

Sends an email message that optionally contains query output, using an SMTP server.

### Syntax

```html
<cfmail to="" from="" subject="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfmail(to="", from="", subject="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| async | boolean | No |  | Lucee4.5+ Specifies the mail is sent asynchronously by the Lucee Task manager (with multiple tries), if set to false the mail is sent in the same thread that executes the request, which is useful for troubleshooting because you get an error message if there is one. This setting overrides the setting with the same name in the Lucee Administrator. This attribute replaces the old 'spoolenable' attribute which is still supported as an alias. |
| bcc | string | No |  | Email address(es) to which to copy the message, without listing them in the message header. |
| cc | string | No |  | Email address(es) to which to copy the message |
| charset | string | No |  | The character encoding in which the text part is encoded. |
| debug | boolean | No | false | true: sends debugging output to standard output. By default, if the console window is unavailable, ColdFusion sends output to cf_root\runtime\logs\coldfusion-out.log on server configurations. On J2EE configurations, with JRun, the default location is jrun_home/logs/servername-out.log.
false: does not generate debugging output. |
| encrypt | boolean | No | false | CF11+ Toggles email message encryption |
| encryptionalgorithm | string | No |  | CF11+ Algorithm to use when encrypt=true
Encryption support is provided through S/MIME. |
| failto | string | No |  | Email address to which mailing systems should send delivery failure notifications. Sets the mail envelope reverse-path value. |
| from | string | Yes |  | Message sender email address. |
| group | string | No |  | Query column to use when you group sets of records to send as a message. For example, to send a set of billing statements to a customer, group on "Customer_ID." Case-sensitive. Eliminates adjacent duplicates when data is sorted by the specified field. |
| groupcasesensitive | boolean | No |  | Whether to consider case when using the group attribute. To group on case-sensitive records, set this attribute to Yes. |
| keyalias | string | No |  | Alias of the key with which the certificate and private key is stored in keystore. If it is not specified then the first entry in the keystore will be picked up. |
| keypassword | string | No |  | Password with which the private key is stored. If it is not specified, keystorepassword will be used as keypassword as well. |
| keystore | string | No |  | Keystore containing the private key and certificate. The supported type is JKS (java key store) and pkcs12 |
| keystorepassword | string | No |  | Password of the keystore |
| mailerid | string | No |  | Mailer ID to be passed in X-Mailer SMTP header, which identifies the mailer application. |
| maxrows | numeric | No |  | Maximum number of messages to send when looping over a query. |
| mimeattach | string | No |  | Path of file to attach to message. Attached file is MIME-encoded. CFML attempts to determine the MIME type of the file; use the cfmailparam tag to send an attachment and specify the MIME type. |
| password | string | No |  | A password to send to SMTP servers that require authentication. Requires a username attribute. |
| port | numeric | No |  | TCP/IP port on which SMTP server listens for requests (normally 25). A value here overrides the Administrator. |
| priority | string | No | normal | The message priority level. Can be an integer in the range 1-5; 1 represents the highest priority, or one of the following string values, which correspond to the numeric values |
| proxyserver | string | No |  | Lucee4.5+ Host name or IP address of a proxy server. |
| proxyport | numeric | No |  | Lucee4.5+ The port number on the proxy server from which the object is requested. Default is 80. When used with resolveURL, the URLs of retrieved documents that specify a port number are automatically resolved to preserve links in the retrieved document. |
| proxyuser | string | No |  | Lucee4.5+ When required by a proxy server, a valid username. |
| proxypassword | string | No |  | Lucee4.5+ When required by a proxy server, a valid password. |
| query | query | No |  | Name of cfquery from which to draw data for message(s). Use this attribute to send more than one message, or to send query results within a message. |
| recipientcert | string | No |  | CF11+ Path to the public key certificate of the recipient. |
| remove | boolean | No |  | Tells ColdFusion to remove any attachments after successful mail delivery. |
| replyto | string | No |  | Email address(es) to which the recipient is directed to send replies. |
| sendtime | date | No |  | Lucee4.5+ Set a future date time to send an email in the future via the spooler. |
| server | string | No |  | SMTP server address, or (Enterprise edition only) a comma-delimited list of server addresses, to use for sending messages. At least one server must be specified here or in the CFML MX Administrator. A value here overrides the Administrator. A value that includes a port specification overrides the port attribute. |
| sign | boolean | No |  | Mail will be signed when set to true |
| spoolenable | boolean | No |  | Specifies whether to spool mail or always send it Immediately. Overrides the CFML MX Administrator Spool mail messages to disk for delivery setting. |
| startrow | numeric | No | 1 | Row in a query to start from. |
| subject | string | Yes |  | Message subject. Can be dynamically generated. |
| timeout | numeric | No |  | Number of seconds to wait before timing out connection to SMTP server. A value here overrides the Administrator. |
| to | string | Yes |  | Message recipient email addresses. To specify multiple addresses, separate the addresses with commas. |
| type | string | No | text/plain | The MIME media type of the part. Can be a can be valid MIME media type |
| username | string | No |  | A user name to send to SMTP servers that require authentication. Requires a password attribute |
| usessl | boolean | No |  | Whether to use Secure Sockets Layer. |
| usetls | boolean | No |  | Whether to use Transport Level Security. |
| wraptext | numeric | No |  | Specifies the maximum line length, in characters of the mail text. If a line has more than the specified number of characters, replaces the last white space character, such as a tab or space, preceding the specified position with a line break. If there are no white space characters, inserts a line break at the specified position. A common value for this attribute is 72. |

## Send basic email message

The SMTP server details are provided through the Administrator.

```html
<cfmail to="recipient@example.com" from="sender@example.com" subject="Example email">
  Your Email Message!!
</cfmail>
```

## Send basic email message overriding default SMTP server

The SMTP server details are provided in code.

```html
<cfmail to="recipient@example.com" from="sender@example.com" subject="Example email" server="smtp.example.com" port="25" username="myUsername" password="myPassword">
  Your Email Message!!
</cfmail>
```

## Send email messages using a query

Loop through database records and sends one email per row.

```html
<cfset myQuery = queryNew( "recipient,lastname,firstname" )>
<cfset queryAddRow( myQuery, { recipient = "recipient@example.com", lastname = "Doe", firstname = "John" }) />

<cfmail to="#recipient#" from="sender@example.com" subject="Example email" query="myQuery">
  Dear #lastname#,

  Text here, containing any variable in the myQuery scope.
</cfmail>
```

## Script syntax using new mail(). Removed in ColdFusion 2025.

CF9+ The cfmail features are also available through the mail component.

```html
savecontent variable="mailBody" {
  writeOutput( "Your Email Message!!" );
};

// Create and populate the mail object
mailService = new mail(
  to = "recipient@example.com",
  from = "sender@example.com",
  subject = "Example email",
  body = mailBody
);

// Send
mailService.send();
```

## Script syntax using function call

CF11+ Send basic email using function call.

```html
cfmail( to = "recipient@example.com", from = "sender@example.com", subject = "Example email" ) { WriteOutput( "Your Email Message!!" ); }
```

## Script syntax: Lucee

Lucee Send basic email

```html
mail
  to="recipient@example.com"
  from="sender@example.com"
  subject="Your Order" {
    writeOutput('Hi there,');
    writeOutput('This mail is sent to confirm that we have received your order.');
};
```
