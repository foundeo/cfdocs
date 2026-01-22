# xmlGetNodeType

Determines the type of an XML document object node.

```javascript
xmlGetNodeType(xmlNode)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| xmlNode | xml | Yes |  | An XML DOM object node. |

## xmlGetNodeType Example

A string identifying the XML node type.

```javascript
<cfxml variable="xmlobject1">
	<notes>
		<note>
			<to>Alice</to>
			<from>Bob</from>
			<heading>Reminder</heading>
			<body>Here is the message you requested.</body>
		</note>
		<author>
			<first>John</first>
			<last>Doe</last>
		</author>
	</notes>
</cfxml> 
<cfoutput>
	 xmlobject:#XMLGetNodeType(xmlobject1)#
	 xmlRoot:#XMLGetNodeType(xmlobject1.xmlRoot)#
</cfoutput>
```
