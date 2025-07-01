# xmlNew

Creates an XML document object.

```javascript
xmlNew([casesensitive])
```

```javascript
returns xml
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| casesensitive | boolean | No | NO | Maintains the case of document elements and attributes.
 Default: false |

## The simple xmlnew example

Here, We created myXml by using xmlNew function. Then created root node(sampleXml) for myXml and set the rootnode text

```javascript
<cfset myXml = xmlNew()>
<cfset myXml.XmlRoot = xmlelemnew(myXml,"sampleXml")>
<cfset myXml.sampleXml.XmlText ="This is root node text">
<cfdump var="#myXml#">
```
