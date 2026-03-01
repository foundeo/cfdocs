# queryCurrentRow

Returns the current row number

```javascript
queryCurrentRow(query)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
query.currentRow()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |

## Simple QueryCurrentRow Example

Here we've example to get the currentRow number.

```javascript
<cfset myQuery = queryNew("id,name","integer,varchar",[[1,"Rajesh"],[2,"Anil"]])>
<cfloop query="myQuery">
	<cfif name Eq "Anil">
		<cfoutput>#queryCurrentRow(myQuery)#</cfoutput>
	</cfif>
</cfloop>
```

### Expected Result: 2

## Simple currentRow Example

Here we've example to get the currentRow number from query using script syntax.

```javascript
<cfscript>
var myQuery = queryNew("id,title","integer,varchar",[[1,"Charlottes Web"],[3,"The Outsiders"],[4,"Mieko and the Fifth Treasure"]]);
cfloop(query = "myQuery"){
	if (title Eq "Mieko and the Fifth Treasure"){
		writeOutput(myQuery.currentRow());
	}
}
</cfscript>
```

### Expected Result: 3
