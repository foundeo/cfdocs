# cffunction

Defines a function that you can call in CFML. Required to
 defined CFML component methods.

### Syntax

```html
<cffunction name="">
```

### Script Syntax

```javascript
public boolean function myFunction(required any myArgument) { }
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | A string; a component method that is used within the cfcomponent tag. |  |
| returntype | string | No | any | String; a type name; data type of the function return value. Required for a web service; optional otherwise. | /Users/garethedwards/development/github/cfdocs/docs/tags/cffunction.md|(component name) |
| roles | string | No |  | A comma-delimited list of CFML security roles that can invoke the method. Only users who are logged in with the specified roles can execute the function. If this attribute is omitted, all users can invoke the method. |  |
| access | string | No | public | The client security context from which the method can be invoked.

 private: Available only to the component that declares the method and any components that extend the component in which it is defined.

 package: Available only to the component that declares the method, components that extend the component, or any other components in the package.

 public: Available to a locally executing page or component method.

 remote: Available to a locally or remotely executing page or component method, or a remote client through a URL, Flash, or a web service. To publish the function as a web service, this option is required. | /Users/garethedwards/development/github/cfdocs/docs/tags/cffunction.md|remote |
| output | boolean | No |  | Specifies under which conditions the function can generate HTML output. |  |
| displayname | string | No |  | Meaningful only for CFC method parameters. A value to be displayed in parentheses following the function name when using introspection to show information about the CFC. |  |
| hint | string | No |  | Meaningful only for CFC method parameters. Text to be displayed when using introspection to show information about the CFC. The hint attribute value follows the syntax line in the function description. |  |
| description | string | No |  | Supplies a short text description of the function. |  |
| returnformat | string | No |  | CF8+ The format in which to return values to a remote caller. | /Users/garethedwards/development/github/cfdocs/docs/tags/cffunction.md|WDDX |
| securejson | boolean | No |  | CF8+ A Boolean value that specifies whether to add a security prefix in front of any value that the function returns in JSON-format in response to a remote call. |  |
| verifyclient | boolean | No |  | CF8+ A Boolean value that specifies whether to require remote function calls to include an encrypted security token. For use with ColdFusion AJAX applications only. |  |
| restPath | string | No |  | CF10+ Specify to use a sub-resource path for the CFC. The path is case-sensitive. Also, it is preferable to avoid special characters when you specify the path. You can include regular expressions in the path. For details of the expressions that you can specify, see the attribute restPath in cfcomponent. |  |
| httpMethod | string | No |  | CF10+ The HTTP method to use; must be one of the following.

GET: Requests information from the server. Any data that the server requires to identify the requested information must be in the URL or in `cfhttp type="URL"` tag.

POST: Sends information to the server for processing. Requires one or more cfhttpparam tags. Often used for submitting form-like data.

PUT: Requests the server to store the message body at the specified URL. Use this method to send files to the server.

DELETE: Requests the server to delete the specified URL.

HEAD: Identical to the GET method, but the server does not send a message body in the response. Use this method for testing hypertext links for validity and accessibility, determining the type or modification time of a document, or determining the type of server. If you have not specified HEAD, by default, GET method is called. However, message body is not sent in the response.

OPTIONS: A request for information about the communication options available for the server or the specified URL. This method enables the ColdFusion application to determine the options and requirements associated with a URL, or the capabilities of a server, without requesting any additional activity by the server. If you have not specified OPTIONS, then ColdFusion sends a response. Overrides the value that you specify at component level. | /Users/garethedwards/development/github/cfdocs/docs/tags/cffunction.md|options |
| produces | string | No |  | CF10+ Comma-separated list of acceptable MIME types. Used to specify the MIME media type of representation a resource can produce, for example, {{produces="text/plain,text/html"}}. If a resource can produce more than one MIME media type, the function chosen corresponds to the most acceptable media type as declared by the client. If no value is specified, / is taken by default, which means, all MIME types are consumed. Overrides the value that you specify at the component level.

 **Note**
If MIME type is a wildcard, the results include any value. For example, if you make a HTTP call with produces as '*/xml' and follow it up with a second HTTP call with produces as '*/json', the results in the second HTTP call might include the first call result as well. |  |
| consumes | string | No |  | CF10+ Comma-separated list of acceptable MIME types, for example consumes="text/plain,text/html". Used to specify which MIME media types of representation a resource can accept, or consume, from the client. This attribute overrides the same attribute at the component level. If no value is specified, / is taken by default, which means, all MIME types are consumed. Adobe recommends that you avoid conflict scenarios while specifying the attributes produces and consumes. For example, avoid situations such as the following: In function 1, you specify produces as text/xml and consumes as text/ and in function 2, produces as text/ and consumes as text/xml. Here, both the functions are valid for the request with accept = text/xml and consumes as text/xml. |  |
| localmode | string | No | classic | Lucee4.5+ Defines how the local scope of this function is invoked when a variable with no scope definition is used. Accepted values include:

classic (default): The local scope is only invoked when the key already exists in it (also aliased as `false`).

modern: The local scope is always invoked (also aliased as `true`). | /Users/garethedwards/development/github/cfdocs/docs/tags/cffunction.md|modern |
| cachedwithin | numeric | No |  | Lucee4.5+ possible values are: String "request": If original content was created within the current request, cached content data is used. a timespan (created with function CreateTimeSpan): If original content date falls within the time span, cached content data is used.

To use cached data, the function must be called with the exact same arguments. |  |
| modifier | string | No |  | Lucee5+ used to denote a function as `abstract` (implementation must be defined in extended component), `static` (does not access instance variables in the component) or `final` (implementation cannot be extended) | /Users/garethedwards/development/github/cfdocs/docs/tags/cffunction.md|static |

## Script Syntax

```html
public boolean function myFunction(required any myArgument) { 
  // Some function bits 
 return true; 
 }
```

## Tag Syntax

```html
<cffunction access="public" returntype="boolean" name="myFunction"> 
 <cfargument required="true" type="any" name="myArgument"> 
 <!--- Some function bits ---> 
 <cfreturn true> 
 </cffunction>
```

## Script Syntax: Arrow Function

Note that as of now, you cannot declare the access or returntype of an arrow function

```html
myFunction = (required any Arguments) => {
  return true;
}
```
