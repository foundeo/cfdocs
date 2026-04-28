<cfparam name="url.name" default="">
<cfset url.name = ReReplace(url.name, "[^a-zA-Z0-9_-]", "", "ALL")>
<cfsetting enablecfoutputonly="true">
<cfset request.skiplayout = true>
<cfcontent reset="true" type="text/markdown">
<cfif isStruct(data)>

<cfif data.keyExists("type") AND data.type IS "tag">
    <cfif StructKeyExists(data, "script")>
        <cfset data.scriptTitle = "Script Syntax">
    <cfelseif data.keyExists("syntax") AND NOT ListFindNoCase("cfif,cfset,cfelse,cfelseif,cfloop,cfinclude,cfparam,cfswitch,cfcase,cftry,cfthrow,cfrethrow,cfcatch,cffinally,cfmodule,cfcomponent,cfinterface,cfproperty,cffunction,cfimport,cftransaction,cftrace,cflock,cfthread,cfsavecontent,cflocation,cfargument,cfapplication,cfscript", data.name)>
        <!--- add cfscript syntax --->
        <cfset data.script = replaceScript(name = data.name, syntax = data.syntax, mode = "other")>
        <cfset data.scriptTitle = "Script Syntax ACF11+, Lucee">
    </cfif>
</cfif>

<cfoutput>## #data.name#

<cfif data.keyExists("description")>#data.description#</cfif>

<cfif data.keyExists("discouraged")>
#### Discouraged

#data.discouraged#

</cfif>

<cfif StructKeyExists(data, "syntax") AND Len(data.syntax)>
###### Syntax

```
#trim(Replace(data.syntax, Chr(10), "<br>", "ALL"))# <cfif data.type IS "function" AND StructKeyExists(data, "returns") AND Len(data.returns)>returns #encodeForHTML(data.returns)#</cfif>
```

</cfif>
<cfif data.type IS "tag" AND StructKeyExists(data, "script")>
######## #data.scriptTitle#

```
#data.script#
```

<cfelseif data.type is "function" AND StructKeyExists(data, "member")>
######## Member Function Syntax

```
#data.member# <cfif StructKeyExists(data, "member_details") AND StructKeyExists(data.member_details, "returns") && Len(data.member_details.returns)> returns #encodeForHTML(data.member_details.returns)#</cfif>
```
</cfif>

<cfif StructKeyExists(data, "params") AND ArrayLen(data.params)>

#### <cfif data.type IS "tag">Attribute Reference<cfelseif data.type IS "function">Argument Reference<cfelseif len(trim(data.name))>#data.name#</cfif>
<cfset hasCallbackParams = false>
| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |<cfloop array="#data.params#" index="p">
| <cfif p.keyExists("name")>#EncodeForMarkdownCell(p.name)#</cfif> | <cfif p.keyExists("type")>#EncodeForMarkdownCell(p.type)#</cfif> | <cfif p.keyExists("required") AND isBoolean(p.required) AND p.required>Yes<cfelse>No</cfif> | <cfif p.keyExists("default")>#EncodeForMarkdownCell(p.default)#</cfif> | <cfif p.keyExists("description")>#EncodeForMarkdownCell(p.description)#</cfif><cfif structKeyExists(p, "callback_params") AND isArray(p.callback_params) and not arrayIsEmpty(p.callback_params)><cfset hasCallbackParams = true><br>See callback arguments below.</cfif> | <cfif structKeyExists(p, "values") AND isArray(p.values) AND arrayLen(p.values)>#EncodeForMarkdownCell(arrayToList(p.values))#</cfif> |</cfloop>

<cfif hasCallbackParams>
<cfloop array="#data.params#" index="p"><cfif structKeyExists(p, "callback_params") AND isArray(p.callback_params) and not arrayIsEmpty(p.callback_params)>
###### #p.name# Callback Arguments

| Name | Type | Required | Description |
| --- | --- | --- | --- |
<cfloop array="#p.callback_params#" index="cp">| #cp.name# | #cp.type# | <cfif cp.keyExists("required") AND isBoolean(cp.required) AND cp.required>Yes<cfelse>No</cfif> | #EncodeForMarkdownCell(cp.description)# |
</cfloop></cfif></cfloop>
</cfif>
</cfif>

<cfif data.keyExists("engines") AND isStruct(data.engines)>
#### CFML Engine Support

The #data.name# <cfif data.type IS "tag">tag<cfelseif data.type IS "function">function</cfif> is supported on the following CFML engines:

| Engine | Minimum Version | Notes |
| --- | --- | --- |
<cfloop list="ColdFusion,Lucee,BoxLang" index="engine"><cfif data.engines.keyExists(engine) AND data.engines[engine].keyExists("docs") AND len(data.engines[engine].docs)>| #engine# | <cfif data.engines[engine].keyExists("minimum_version")>#EncodeForMarkdownCell(data.engines[engine].minimum_version)#</cfif> | <cfif data.engines[engine].keyExists("notes")>#EncodeForMarkdownCell(data.engines[engine].notes)#</cfif> |
</cfif></cfloop>
</cfif>

<cfif StructKeyExists(data, "examples") AND IsArray(data.examples) AND ArrayLen(data.examples)>
#### Examples

<cfloop array="#data.examples#" index="ex">
###### #ex.title#

#ex.description#

```
#ex.code#
```
<cfif StructKeyExists(ex, "result") AND Len(Trim(ex.result))>Expected Result: #Trim(ex.result)#</cfif>

</cfloop>
</cfif>

<cfif StructKeyExists(data, "related") AND IsArray(data.related) AND ArrayLen(data.related)>
#### Related Tags and Functions

<cfloop array="#data.related#" index="rel">[#rel#](https://cfdocs.org/#rel#.md)
</cfloop>
</cfif>

</cfoutput>
<cfelse>
    <cfoutput>#data#</cfoutput>
</cfif>

<cfoutput>
The human version of this document can be found here: [https://cfdocs.org/#url.name#](https://cfdocs.org/#url.name#) which is part of the cfdocs.org repository. Project created by [Pete Freitag](https://www.petefreitag.com) and sponsored by [Foundeo Inc.](https://foundeo.com/)
</cfoutput>

<cffunction name="EncodeForMarkdownCell" output="false">
	<cfargument name="value" type="string" required="true">
	<cfset var result = ARGUMENTS.value>
    <cfset result = replace(result, "|", " ", "ALL")>
	<cfset result = ReReplace(result, "\r?\n", "<br />", "ALL")>
	<cfreturn result>
</cffunction>

<cffunction name="replaceScript">
	<cfargument name="name" type="string" required="true">
	<cfargument name="mode" type="string" required="true">
	<cfargument name="syntax" type="string">

	<cfset var result = "">

	<cfif mode is "cf">
		<cfset result = ReplaceNoCase(name, "cf", "") & ";">
	<cfelseif mode is "other">
		<!--- add cfscript syntax --->
		<cfset result = ReReplace(syntax, "[<\r\n]", "", "ALL")>
		<cfset result = ReplaceNoCase(result, name, name & "(")>
		<cfset result = Replace(result, "( ", "(")>
		<!--- replace double quote followed by a space with a ,[space] --->
		<cfset result = ReReplace(result, """ ", """, ", "ALL")>
		<cfset result = ReReplace(result, ",? ?>", ");")>
	</cfif>
	<cfreturn result>
</cffunction>