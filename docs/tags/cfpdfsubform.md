# cfpdfsubform

Populates a subform within the cfpdfform tag.
 The cfpdfsubform tag can be a child tag of the cfpdfform tag
 or nested in another cfpdfsubform tag.

### Syntax

```html
<cfpdfsubform name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfpdfsubform(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| index | numeric | No |  | Index associated with the field name.<br /> If multiple fields have the same name, ColdFusion<br /> uses the index value is to locate one of them. (optional, default=1) |
| name | string | Yes |  | Name of the subform corresponding to subform name in the PDF form. (required) |
