<cfparam name="url.name" default="cfquery">
<cfset url.name = ReReplace(url.name, "[^a-zA-Z0-9_-]", "", "ALL")>
<cfif url.name IS "index">
	<cfset data = {name="CFDocs", description="Ultra Fast CFML Documentation", type="index"}>
<cfelseif FileExists(ExpandPath("./guides/en/#url.name#.md"))>
	<cftry>
		<!--- convert md to HTML --->
		<cfset txtmark = createObject("java", "com.github.rjeschke.txtmark.Processor")>
		<cfset data = txtmark.process(createObject("java", "java.io.File").init(ExpandPath("./guides/en/#url.name#.md")), "utf-8")>
		<cfset request.gitFilePath = "/tree/master/guides/en/" & url.name & ".md">
		<cfcatch>
			<cfset data = "Error processing markdown: #encodeForHTML(cfcatch.message)# #encodeForHTML(cfcatch.detail)#">
			<cfset data &= "Make sure you have installed the textMark jar file in the lib directory used to process the markup files.">
			<cfset applicationStop()>
		</cfcatch>
	</cftry>
<cfelseif FileExists(ExpandPath("./data/en/#url.name#.json"))>
	<cfset data = DeserializeJSON( FileRead(ExpandPath("./data/en/#url.name#.json")))>
	<cfset request.gitFilePath = "/edit/master/data/en/" & url.name & ".json">
<cfelse>
	<cfset url.name = ReReplace(url.name, "[^a-zA-Z0-9._-]", "", "ALL")>
	<cfset possible = []>
	<cfloop array="#application.index.functions#" index="i">
		<cfif
			(Len(url.name) LTE 3 AND FindNoCase(url.name, i)) OR
			(FindNoCase(url.name, i) OR FindNoCase(i, url.name)) OR
			(LCase(Left(url.name, 3)) is LCase(Left(i, 3)) OR LCase(Right(url.name, 3)) is LCase(Right(i, 3)))
		>
			<cfset ArrayAppend(possible, i)>
		</cfif>
	</cfloop>
	<cfset data = {
		name = url.name,
		description = "Sorry we don't have any docs matching that name. If we should have a doc for this, please send us a <a href=""https://github.com/foundeo/cfdocs/new/master/data/en?filename=" & encodeForURL(url.name) & ".json"">pull request</a> on github. You can easily access functions and tags using an url like <a href=""http://cfdocs.org/hash"">cfdocs.org/hash</a>. Just hit <code>/tag-name</code> or <code>/function-name</code> or use the search box above. Maybe it's just a spelling mistake. Please make sure you did not misspell it before you open a pull request or issue!",
		type = "404",
		related = possible
	}>
	<cfheader statuscode="404" statustext="Not Found">
</cfif>
<cfif isStruct(data)>
	<cfset request.title = data.name>
	<cfif structKeyExists(data, "examples") AND arrayLen(data.examples) GT 0>
		<cfset request.title = request.title & " Code Examples and">
	</cfif>
	<cfinclude template="views/doc.cfm">
<cfelse>
	<cfinclude template="views/markdown.cfm">
</cfif>
