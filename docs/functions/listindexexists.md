# listIndexExists

Determines whether that index exists in the given list or not

```javascript
listIndexExists(list, index [, delimiter] [, includeEmptyFields])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
list.listIndexExists(index [, delimiter] [, includeEmptyFields])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| index | numeric | Yes |  |  |
| delimiter | string | No | , |  |
| includeEmptyFields | boolean | No |  |  |

## Simple listIndexExists

Check whether the index is exists or not in list

```javascript
<cfset list="Apple,Orange,Banana,Graphs">
<cfif listIndexExists(list,2)>
	<cfset list=listsetAt(list,2,"Goa")>
</cfif>
<cfoutput>#list#</cfoutput>
```

### Expected Result: Apple,Goa,Banana,Graphs
