# cfforward

Leads the request to a different page. This tag acts like the tag cflocation except that the relocation is done directly on the server.

### Syntax

```html
<cfforward template="page.cfm">
```

### Script Syntax

```javascript
cfforward( "page.cfm" );
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| template | string | Yes |  | A logical path to a CFML page. |

## Script Syntax

```html
cfforward( "mypage.cfm" );
```

## Tag Syntax

```html
<cfforward template="mypage.cfm">
```
