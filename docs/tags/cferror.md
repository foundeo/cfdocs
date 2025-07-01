# cferror

Displays a custom HTML page when an error occurs. This lets
 you maintain a consistent look and feel among an application's
 functional and error pages

### Syntax

```html
<cferror type="exception" template="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cferror(type="exception", template="");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| type | string | Yes |  | Type of error that the custom error page handles. The type
 also determines how CFML handles the error page. For
 more information, see Specifying a custom error page in
 Developing CFML MX Applications.

 exception: a exception of the type specified by the
 exception attribute.
 validation: errors recognized by sever-side type
 validation.
 request: any encountered error.
 monitor: deprecated. | /Users/garethedwards/development/github/cfdocs/docs/tags/cferror.md|monitor |
| template | string | Yes |  | Relative path to the custom error page.
 (A CFML page was formerly called a template.) |  |
| mailto | string | No |  | An E-mail address. This attribute is available on the
 error page as the variable error.mailto. CFML does
 not automatically send anything to this address. |  |
| exception | string | No | any | Type of exception that the tag handles:

 application: application exceptions
 database: database exceptions
 template: CFML page exceptions
 security: security exceptions
 object: object exceptions
 missingInclude: missing include file exceptions
 expression: expression exceptions
 lock: lock exceptions
 custom_type: developer-defined exceptions, defined in the
 cfthrow tag
 any: all exception types | /Users/garethedwards/development/github/cfdocs/docs/tags/cferror.md|custom_type |
