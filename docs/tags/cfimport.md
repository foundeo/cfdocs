# cfimport

You can use the cfimport tag to import either of the following:

 * All CFML pages in a directory, as a tag custom tag
 library.
 * A Java Server Page (JSP) tag library. A JSP tag library is a
 packaged set of tag handlers that conform to the JSP 1.1 tag
 extension API.

### Syntax

```html
<cfimport>
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| taglib | string | No |  | Tag library URI. The path must be relative to the web root
 (and start with /), the current page location, or a
 directory specified in the Administrator CFML
 mappings page.

 A directory in which custom CFML tags are stored. In
 this case, all the cfm pages in this directory are treated
 as custom tags in a tag library.
 A path to a JAR in a web-application; for example,
 "/WEB-INF/lib/sometags.jar"
 A path to a tag library descriptor; for example,
 "/sometags.tld"
 Note: You must put JSP custom tag libraries in the
 /WEB-IN/lib directory. This limitation does not apply to
 CFML pages. |
| prefix | string | No |  | Prefix by which to access the imported custom CFML tags JSP
 tags.

 If you import a CFML custom tag directory and specify an
 empty value, "", for this attribute, you can call the
 custom tags without using a prefix. You must specify and
 use a prefix for a JSP tag library. |
| path | string | No |  | path of CFC to be imported |

## Tag Syntax - CFML Custom Tags with Prefix

Import custom tags and include one using the prefix:tagName syntax.

```html
<cfimport taglib="/relative/path/customTags" prefix="tags"/>
<tags:myCustomTag></tags:myCustomTag>
```
