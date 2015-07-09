<cfparam name="url.name" default="cfquery">
<cfset url.name = ReReplace(url.name, "[^a-zA-Z0-9_-]", "", "ALL")>
<cfif url.name IS "index">
	<cfset data = {name="CFDocs", description="Ultra Fast CFML Documentation", type="index"}>
<cfelseif FileExists(ExpandPath("./data/en/#url.name#.json"))>
	<cfset data = DeserializeJSON( FileRead(ExpandPath("./data/en/#url.name#.json")))>
<cfelse>
	<cfset url.name = ReReplace(url.name, "[^a-zA-Z0-9._-]", "", "ALL")>
	<cfset possible = []>
	<cfloop array="#application.index.functions#" index="i">
		<cfif Len(url.name) LTE 3>
			<cfif FindNoCase(url.name, i)>
				<cfset ArrayAppend(possible, i)>
			</cfif>
		<cfelseif FindNoCase(url.name, i) OR FindNoCase(i, url.name)>
			<cfset ArrayAppend(possible, i)>
		<cfelseif LCase(Left(url.name, 3)) IS LCase(Left(i, 3)) OR LCase(Right(url.name, 3)) IS LCase(Right(i, 3))>
			<cfset ArrayAppend(possible, i)>
		</cfif>
	</cfloop>
	<cfset data = {name = url.name, description="Sorry we don't have any docs matching that name. If we should have a doc for this, please send us a pull request on github.", type="404", related=possible}>
	<cfheader statuscode="404" statustext="Not Found">
</cfif>
<cfset request.title = data.name>


<cfinclude template="views/doc.cfm">
