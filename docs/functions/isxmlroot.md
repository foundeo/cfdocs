# isXMLRoot

Determines whether a function parameter is the root element of an Extended Markup language (XML) document object.

```javascript
isXMLRoot(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  | XML Element |

## "coldfusionengines" is root element

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
	writeOutput(isXMLRoot(example.coldfusionengines));
</cfscript>
```

### Expected Result: YES

## "engine" is child of "coldfusionengines"

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
	writeOutput(isXMLRoot(example.coldfusionengines.engine));
</cfscript>
```

### Expected Result: NO
