<cfparam name="url.name" default="cfquery">
<cfset url.name = ReReplace(url.name, "[^a-zA-Z0-9_-]", "", "ALL")>
<cfif url.name IS "index">
	<cfset data = {name="CFDocs", description="Ultra Fast CFML Documentation", type="index"}>
<cfelseif FileExists(ExpandPath("./guides/en/#url.name#.md")) OR url.name is "how-to-contribute">
	<!--- convert md to HTML --->
	<cfscript>
		try {
			request.gitFilePath = "/tree/master/guides/en/"&(url.name is "how-to-contribute" ? 'CONTRIBUTING' : url.name)&".md";
			path = (url.name is "how-to-contribute" ? 'CONTRIBUTING' : './guides/en/#url.name#');
			md = fileRead(ExpandPath("#path#.md"), "UTF-8");

			Parser = createObject("java", "com.vladsch.flexmark.parser.Parser");
			HtmlRenderer = createObject("java", "com.vladsch.flexmark.html.HtmlRenderer");
			TablesExtension = createObject("java", "com.vladsch.flexmark.ext.tables.TablesExtension");

			options = createObject("java", "com.vladsch.flexmark.util.data.MutableDataSet").init();
			options.set(Parser.EXTENSIONS, [TablesExtension.create()]);

			parser = Parser.builder(options).build();
			renderer = HtmlRenderer.builder(options).build();

			document = parser.parse(md);
			data = renderer.render(document);
		}
		catch (any e) {
			data = "Error processing markdown: #encodeForHTML(e.message)# #encodeForHTML(e.detail)#";
			data &= "<br/><br/>Make sure you have installed the correct .jar file(s) in the /lib directory.";
			applicationStop();
		}
	</cfscript>
<cfelseif FileExists(ExpandPath("./data/en/#url.name#.json"))>
	<cfset data = DeserializeJSON( FileRead(ExpandPath("./data/en/#url.name#.json")))>
	<cfset request.gitFilePath = "/edit/master/data/en/" & url.name & ".json">
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
	<cfset data = {
		name = url.name,
		description = "Sorry we don't have any docs matching that name. If we should have a doc for this, please log an <a href=""https://github.com/foundeo/cfdocs/issues/new"">Issue</a> so we can look into it. You can easily access functions and tags using an url like <a href=""http://cfdocs.org/hash"">cfdocs.org/hash</a>. Just hit <code>/tag-name</code> or <code>/function-name</code> or use the search box above.",
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
