<cfset json = "">
<cfparam name="form.action" default="">
<cfif form.action IS "string2json">
	<cfparam name="form.string" default="">
	<cfset json = serializeJSON(form.string)>
<cfelseif form.action IS "example">
	<cfparam name="form.code" default="">
	<cfparam name="form.title" default="">
	<cfparam name="form.description" default="">
	<cfparam name="form.result" default="">
	<cfparam name="form.runnable" default="1">

<cfoutput>
<cfsavecontent variable="json">
{
	"title":#serializeJSON(form.title)#,
	"description":#serializeJSON(form.description)#,
	"code":#serializeJSON(form.code)#,
	"result":#serializeJSON(form.result)#,
	"runnable":<cfif isBoolean(form.runnable) AND form.runnable>true<cfelse>false</cfif>
}
</cfsavecontent>
</cfoutput>
</cfif>
<cfcontent type="application/json" reset="true">while(true);//do not copy this line


<cfoutput>#json#</cfoutput>
