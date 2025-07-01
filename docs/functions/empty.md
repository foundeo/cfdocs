# empty

Checks if a variable is empty

```javascript
empty(variable)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| variable | any | Yes |  |  | /Users/garethedwards/development/github/cfdocs/docs/functions/empty.md|[] |

## A Simple Empty Example

Check whether the variable is empty or not

```javascript
<cfoutput>
	<cfset Language = "Coldfusion">
	#empty(Language)#
	<cfset MyInput = "">
	#empty(MyInput)#
</cfoutput>
```

### Expected Result: false,true
