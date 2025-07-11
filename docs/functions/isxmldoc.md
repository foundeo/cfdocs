# isXMLDoc

Determines whether a function parameter is an Extended Markup language (XML) document object.

```javascript
isXMLDoc(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  | XML document |

## Checks if a given XML is valid

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
	writeOutput(isXMLDoc(example));
</cfscript>
```

### Expected Result: YES
