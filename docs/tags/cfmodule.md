# cfmodule

Invokes a custom tag for use in CFML application pages.
 This tag processes custom tag name conflicts.

### Syntax

```html
<cfmodule>
```

### Script Syntax

```javascript
cfmodule(template="nameoftemplate.cfm",attributeCollection={});
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| template | string | No |  | Mutually exclusive with the name attribute. A path to the<br /> page that implements the tag.<br /><br /> Relative path: expanded from the current page<br /> Absolute path: expanded using CFML mapping<br /> A physical path is not valid. |
| name | string | No |  | Mutually exclusive with the template attribute. A custom<br /> tag name, in the form "Name.Name.Name..." Identifies<br /> subdirectory, under the CFML tag root directory,<br /> that contains custom tag page. <br />For example (Windows format):<br /><br /> `cfmodule name = "superduper.Forums40.GetUserOptions"` <br /><br /> This identifies the page GetUserOptions.cfm in the<br /> directory CustomTags\superduper\Forums40 under the<br /> CFML root directory. |
| attributecollection | struct | No |  | A collection of key-value pairs that represent<br /> attribute names and values. You can specify multiple<br /> key-value pairs. You can specify this attribute only<br /> once. |

## Using the template attribute with an absolute template path

```html
<cfmodule template="\layout\default\mainheader.cfm">
```

## Using the template attribute with a relative template path

```html
<cfmodule template="..\..\..\layout\register\sectionheader.cfm">
```

## Using the name attribute

```html
<cfmodule name="layout.corp.copyright">
```

## Passing two ad-hoc attributes in tag body

```html
<cfmodule template="\layout\default\mainheader.cfm" theme="default" pageTitle="Welcome!">
```

## Passing two ad-hoc attributes using the attributeCollection attribute

```html
<cfset attrs = {theme = "default", pageTitle = "Welcome!"}>
<cfmodule template="\layout\default\mainheader.cfm" attributecollection="#attrs#">
```

## Passing content between opening and closing tags

In this example, the &lt;p&gt; tag and it's content will be available to super-duper-formatter.cfm to perform whatever the formatting logic dictates.

```html
<cfmodule template="\layout\super-duper-formater.cfm">
   <p>Some content the module will format</p>
</cfmodule>
```

## Using cfscript with attribute collection

In this example, show how to invoke using cfscript.

```html
<cfscript>attrs = {theme = "default", pageTitle = "Welcome!"}>
cfmodule(template="myTemplate.cfm",attributeCollection="#attrCollection1#")</cfscript>
```
