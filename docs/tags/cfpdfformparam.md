# cfpdfformparam

Provides additional information to the cfpdfform tag.
 The cfpdfformparam tag is always a child tag of the cfpdfform or cfpdfsubform tag.
 Use the cfpdfformparam tag to populate fields in a PDF form.

### Syntax

```html
<cfpdfformparam name="" value="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfpdfformparam(name="", value="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| index | numeric | No |  | Specify the index associated with the field name.
 If multiple fields have the same name, the index
 value is used to locate one of them. (optional, default=1) |
| name | string | Yes |  | The field name on the PDF form. (required) |
| value | string | Yes |  | The value associated with the field name.
 For interactive fields, specify a ColdFusion variable. (optional) |
