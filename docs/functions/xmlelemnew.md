# xmlElemNew

Creates an XML document object element

```javascript
xmlElemNew(xmlobj [, namespace], childname)
```

```javascript
returns xml
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| xmlobj | xml | Yes |  | The name of an XML object. An XML document or an element. |
| namespace | string | No |  | URI of the namespace to which this element belongs. |
| childname | string | Yes |  | The name of the element to create. This element becomes a<br /> child element of xmlObj in the tree. |

## Simple xmlelemnew Example

Here, we've created myXml with root and child nodes using xmlelemnew().

```javascript
<cfset myXml = xmlNew()>
<cfset myXml.XmlRoot = xmlelemnew(myXml,"sampleXml")>
<cfset myXml.sampleXml.XmlText = "This is Root node text">
<cfloop from="1" to="3" index="i">
	<cfset myXml.sampleXml.XmlChildren[i] = xmlelemnew(myXml,"childNode#i#")>
	<cfset myXml.sampleXml.XmlChildren[i].XmlText = "This is Child node#i# text">
</cfloop>
<cfdump var="#myXml#">
```
