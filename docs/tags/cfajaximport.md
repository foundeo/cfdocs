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
| scriptsrc | string | No |  | Specifies the URL, relative to the web root, of the 
 directory that contains the JavaScript files 
 used by ColdFusion. When you use this attribute, 
 the specified directory must have the same 
 structure as the /CFIDE/scripts directory. |
| csssrc | string | No |  | Specifies the URL, relative to the web root, of the 
 directory that contains the CSS files used by 
 ColdFusion AJAX features, with the exception of 
 the rich text editor. This directory must have the 
 same directory structure, and contain the same 
 CSS files, and image files required by the CSS 
 files, as the 
 web_root/CFIDE/scripts/ajax/resources 
 directory. 
 This attribute lets you create different custom 
 styles for ColdFusion AJAX controls in different 
 applications. |
| tags | string | No |  | A comma-delimited list of tags or tag-attribute 
 combinations for which to import the supporting 
 JavaScript files on this page. |
| attributecollection | string | No |  | You can specify this tag's attributes in an attributeCollection whose value is a 
 structure. Specify the structure name in the attributeCollection and use the tag 
 attribute names as structure keys. |
