# cfinclude

Includes the content from the referenced file (template). The content may be executed as CFML, see compatibility info below. You can embed cfinclude tags recursively. For another way to encapsulate CFML, see cfmodule. (A CFML page was formerly sometimes called a CFML template or a template.)

### Syntax

```html
<cfinclude template="" runonce="true|false">
```

### Script Syntax

```javascript
include "template.cfm" runonce=true|false;
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| template | string | Yes |  | A logical path to a CFML page. |
| runonce | boolean | No | false | CF10+ If set to true, the given template is not processed again for a given request if it has already been processed. |

## Script Syntax

CF9+

```html
include "mypage.cfm";
```

## Tag Syntax

```html
<cfinclude template="mypage.cfm">
```
