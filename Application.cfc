<cfcomponent>
	<cfset this.name="cfdocs">
	<cfset this.sessionManagement=false>
	<cfset this.clientManagement=false>

	<cffunction name="onRequest">
		<cfargument name="targetPage" type="string">
		<cfset var content = "">
		<cfif NOT StructKeyExists(application, "index") OR StructKeyExists(url, "reinit")>
			<cfset application.index = DeserializeJSON( FileRead(ExpandPath("./data/en/index.json")))>
			<cfset application.categories = {}>
			<cfloop array="#application.index.categories#" index="local.cat">
				<cfset application.categories[local.cat] = {name="", items=[]}>
				<cfset local.catData = DeserializeJSON( FileRead(ExpandPath("./data/en/#local.cat#.json")))>
				<cfset application.categories[local.cat].name = local.catData.name>
				<cfset application.categories[local.cat].items = local.catData.related>
			</cfloop>
		</cfif>
		<cfset request.content = "">
		<!--- cache for one day --->
		<cfset request.assetBaseURL = "/assets/">
		<cfif FindNoCase("cfdocs.org", cgi.server_name)>
			<!--- for production only --->
			<cfset local.assetInfo = directoryList(ExpandPath("./assets/"), false, "query")>
			<cfset request.assetBaseURL = "/assets/" & LCase(Hash(ValueList(local.assetInfo.dateLastModified))) & "/">
		</cfif>
		<cfheader name="Cache-Control" value="max-age=86400">
		<cfsavecontent variable="request.content"><cfinclude template="#arguments.targetPage#"></cfsavecontent>
		<cfcontent reset="true" type="text/html"><cfinclude template="views/layout.cfm">
	</cffunction>

	<cffunction name="linkTo" output="false">
		<cfargument name="name">
		<cfreturn "/" & URLEncodedFormat(arguments.name)>
	</cffunction>

	<cffunction name="autoLink" output="false">
		<cfargument name="content">
		<cfargument name="exclude" default="#url.name#">
		<cfset var i = "">
		<cfif ReFindNoCase("https?://", arguments.content)>
			<cfset arguments.content = ReReplaceNoCase(arguments.content, "(https?://[a-zA-Z0-9._/=&%?-]+)", "<a href=""\1"">\1</a>", "ALL")>
		</cfif>
		<cfloop array="#application.index.tags#" index="i">
			<cfif i IS NOT arguments.exclude>
				<cfset arguments.content = ReReplaceNoCase(arguments.content, "[ ](#i#)([ .!,])", " <a href=""#linkTo(i)#"">\1</a>\2", "all")>
			</cfif>
		</cfloop>
		<cfloop array="#application.index.functions#" index="i">
			<cfif i IS NOT arguments.exclude AND NOT ListFindNoCase("insert,include", i)>
				<cfset arguments.content = ReReplaceNoCase(arguments.content, "[ ](#i#)([ .!,])", " <a href=""#linkTo(i)#"">\1</a>\2", "all")>
			</cfif>
		</cfloop>

		<cfset arguments.content = Replace(arguments.content, "#Chr(10)#", "<br />", "ALL")>
		<cfreturn arguments.content>
	</cffunction>

	<cffunction name="findCategory">
		<cfargument name="name"  default="#url.name#">
		<cfset var cat = "">
		<cfloop list="#StructKeyList(application.categories)#" index="cat">
			<cfif ArrayContains(application.categories[cat].items, arguments.name)>
				<cfreturn cat>
			</cfif>
		</cfloop>
		<cfreturn "">
	</cffunction>

</cfcomponent>
