# cfpdfparam

Provides additional information for the cfpdf tag.
 The cfpdfparam tag applies only to the merge action of the cfpdf tag.
 The cfpdfparam tag is always a child tag of the cfpdf tag.

### Syntax

```html
<cfpdfparam source="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfpdfparam(source="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| password | string | No |  | Specify the user or owner password, if the source PDF file is passwordprotected. (optional) |
| source | string | Yes |  | Specify the source PDF file to merge. (optional) |
| pages | string | No |  | Page or pages of the PDF source file to merge. You can specify a range of pages, for example, "1-5 ", or a comma-separated list of pages, for example, "1-5,9-10,18". |
