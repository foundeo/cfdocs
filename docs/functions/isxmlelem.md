# isXMLElem

Determines whether a function parameter is an Extended Markup
 language (XML) document object element.

```javascript
isXMLElem(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  | XML Element |

## Check if given path is an XML element

```javascript
<cfxml variable="example">
	<coldfusionengines>
		<engine>
			<name>Adobe ColdFusion</name>
		</engine>
		<engine>
			<name>Lucee</name>
		</engine>
		<engine>
			<name>Railo</name>
		</engine>
		<engine>
			<name>Open BlueDragon</name>
		</engine>
	</coldfusionengines>
</cfxml>
<cfscript>
	writeOutput(isXMLElem(example.coldfusionengines));
</cfscript>
```

### Expected Result: YES
