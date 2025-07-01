# cffeed

Reads or creates an RSS or Atom syndication feed.
 This tag can read RSS versions 0.90, 0.91, 0.92, 0.93, 0.94, 1.0, and 2.0, and Atom 0.3 or 1.0.
 It can create RSS 2.0 or Atom 1.0 feeds.

### Syntax

```html
<cffeed>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cffeed();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | any | No |  | The action to take, one of the following values:
 "create" Creates an RSS 2.0 or Atom 1.0 feed XML document and saves it in a variable, writes it to a file, or both.
 "read" Parses an RSS or Atom feed from a URL or an XML file and saves it in a structure or query.
 You can also get query metadata in a separate structure. (optional, default= read) |
| columnMap | any | No |  | Used only for the create action with a query attribute.
 A structure specifying a mapping between the names of the columns in the object specified by the query attribute
 and the columns of the ColdFusion feed format, as described in the Query attribute section.
 The key for each field must be a column name listed in the Query columns section. The value of the field must be
 the name of the corresponding column in the query object used as input to the create action. (optional) |
| enclosureDir | string | No |  | Used only for the read action.
 Path to the directory in which to save any enclosures that are available in the feed being read.
 The path can be absolute or relative to the CFML file.
 If the directory does not exist, ColdFusion generates an error.
 If you omit this attribute, ColdFusion does not save enclosures.
 To specify the directory that contains the current page, set this attribute to .(period). (optional) |
| ignoreEnclosureError | boolean | No |  | If this attribute is true, ColdFusion attempts to save all enclosures.
 If it encounters an error downloading one enclosure, it continues downloading other enclosures and writes the
 error information in the server log.
 If this attribute is false, ColdFusion stops downloading all enclosures and generates an error when it encounters
 an error downloading an enclosure.
 Note: Enclosure errors can occur if the specified enclosure is of a type that the web server does not allow to be
 downloaded. (optional, default=false) |
| name | string | No |  | A structure that contains complete feed data:
 The output of a read action.
 The input definition of the feed to create.
 This structure contains complete feed information.
 When you specify the name attribute for a create action, you must put it in pound signs (#). (optional) |
| outputFile | string | No |  | Path of the file in which to write the feed as XML text.
 The path can be absolute, or relative to the CFML file. (optional) |
| overwrite | boolean | No |  | Whether to overwrite the XML feed file if it already exists.
 If you do not set this attribute to true and the cffeed tag tries to write to a file that exists, ColdFusion
 generates an error. (optional, default=false) |
| overwriteEnclosure | boolean | No |  | Used only for the read action.
 Whether to overwrite files in the enclosure directory if they already exist.
 If you do not set this attribute to true and the cffeed tag tries to write to a file that exists, ColdFusion
 generates an error. (optional, default=false) |
| properties | string | No |  | A structure containing the feed metadata, the information about the entire feed.
 Can contain either of the following:
 The output of a read action.
 Input to a create action.
 The properties and query attributes combined provide complete feed information.
 When you specify the properties attribute for a create action, you must put it in pound signs (#) (optional) |
| query | string | No |  | A query object containing the Atom entries or RSS items in the feed. Can contain either of the following:
 The output of a read action.
 Input to a create action.
 The properties and query attributes combined provide complete feed information.
 When you specify the query attribute for a create action, you must put it in pound signs (#) (optional) |
| source | string | No |  | Used only for the read action.
 The URL of the feed or the path to the XML file that contains the feed contents.
 A path can be absolute, or relative to the CFML file. (required) |
| timeout | numeric | No |  | The number of seconds to wait for a response from the feed source. A value of 0 specifies that the request does not time out. |
| proxyServer | string | No |  | Host name or IP address of a proxy server to which to send the request. |
| xmlvar | string | No |  | A variable in which to save the read or created feed as XML text. |
| proxyPort | numeric | No |  | The port to connect to on the proxy server. |
| proxyPassword | string | No |  | Password required by the proxy server. |
| userAgent | string | No |  | Text to put in the HTTP User-Agent request header field. Used to identify the request client software. |
| proxyUser | string | No |  | User name to provide to the proxy server. |
| escapeChars | boolean | No |  | Escapes invalid utf8 chars when set to true |
