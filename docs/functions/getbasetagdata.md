# getBaseTagData

Used within a custom tag. Finds calling (ancestor) tag by name and accesses its data.

```javascript
getBaseTagData(tagname [, level])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| tagname | string | Yes |  | Specify the parent tag name, starting with CF_. |
| level | numeric | No | 1 | Specify the nth-level ancestor to retrieve variables from. |

## Retrieve parent tag thisTag scope

Use getBaseTagData() to retrieve the execution mode of the parent CF_MAPPER custom tag.

```javascript
<cfset tagData = getBaseTagData('CF_MAPPER')>
<!--- Find the tag's execution mode Located inside the --->
<cfif tagData.thisTag.executionMode neq 'inactive'>
template
<cfelse>
BODY
</cfif>
```

## Retrieve parent tag attributes

Use getBaseTagData() to retrieve the attributes of the parent cf_iframe tag

```javascript
variables.parentAttributes = getBaseTagData('cf_iframe').attributes;
```
