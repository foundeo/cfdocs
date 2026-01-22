# isXMLNode

Determines whether the function parameter is an XML document object node.

```javascript
isXMLNode(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  | XML document object node. |

## Checks if given path is an XML node

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
	writeOutput(isXMLNode(example.coldfusionengines));
</cfscript>
```

### Expected Result: YES
