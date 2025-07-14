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
| type | string | Yes |  | Type of error that the custom error page handles. The type<br /> also determines how CFML handles the error page. For<br /> more information, see Specifying a custom error page in<br /> Developing CFML MX Applications.<br /><br /> exception: a exception of the type specified by the<br /> exception attribute.<br /> validation: errors recognized by sever-side type<br /> validation.<br /> request: any encountered error.<br /> monitor: deprecated. | /Users/garethedwards/development/github/cfdocs/docs/tags/cferror.md|monitor |
| template | string | Yes |  | Relative path to the custom error page.<br /> (A CFML page was formerly called a template.) |  |
| mailto | string | No |  | An E-mail address. This attribute is available on the<br /> error page as the variable error.mailto. CFML does<br /> not automatically send anything to this address. |  |
| exception | string | No | any | Type of exception that the tag handles:<br /><br /> application: application exceptions<br /> database: database exceptions<br /> template: CFML page exceptions<br /> security: security exceptions<br /> object: object exceptions<br /> missingInclude: missing include file exceptions<br /> expression: expression exceptions<br /> lock: lock exceptions<br /> custom_type: developer-defined exceptions, defined in the<br /> cfthrow tag<br /> any: all exception types | /Users/garethedwards/development/github/cfdocs/docs/tags/cferror.md|custom_type |
