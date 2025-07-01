# cfajaximport

Controls the JavaScript files that are imported for use on pages that use ColdFusion AJAX 
 tags and features.

### Syntax

```html
<cfajaximport>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfajaximport();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| scriptsrc | string | No |  | Specifies the URL, relative to the web root, of the <br /> directory that contains the JavaScript files <br /> used by ColdFusion. When you use this attribute, <br /> the specified directory must have the same <br /> structure as the /CFIDE/scripts directory. |
| csssrc | string | No |  | Specifies the URL, relative to the web root, of the <br /> directory that contains the CSS files used by <br /> ColdFusion AJAX features, with the exception of <br /> the rich text editor. This directory must have the <br /> same directory structure, and contain the same <br /> CSS files, and image files required by the CSS <br /> files, as the <br /> web_root/CFIDE/scripts/ajax/resources <br /> directory. <br /> This attribute lets you create different custom <br /> styles for ColdFusion AJAX controls in different <br /> applications. |
| tags | string | No |  | A comma-delimited list of tags or tag-attribute <br /> combinations for which to import the supporting <br /> JavaScript files on this page. |
| attributecollection | string | No |  | You can specify this tag's attributes in an attributeCollection whose value is a <br /> structure. Specify the structure name in the attributeCollection and use the tag <br /> attribute names as structure keys. |
