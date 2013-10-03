<cfparam name="url.name" default="cfquery">
<cfset url.name = ReReplace(url.name, "[^a-zA-Z0-9_-]", "", "ALL")>
<cfif url.name IS "index">
	<cfset data = {name="CFDocs", description="Ultra Fast CFML Documentation", type="index"}>
<cfelseif FileExists(ExpandPath("./data/en/#url.name#.json"))>
	<cfset data = DeserializeJSON( FileRead(ExpandPath("./data/en/#url.name#.json")))>
<cfelse>
	<cfset data = {name = ReReplace(url.name, "[^a-zA-Z0-9._-]", "", "ALL"), description="Sorry we don't have any docs matching that name. If we should have a doc for this, please send us a pull request on github.", type="404"}>
	<cfheader statuscode="404" statustext="Not Found">
</cfif>
<cfset request.title = data.name>


<cfinclude template="views/doc.cfm">
   
     



