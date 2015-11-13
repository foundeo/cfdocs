<cfcomponent>
	<cfset this.name="cfdocs">
	<cfset this.sessionManagement=false>
	<cfset this.clientManagement=false>
	<cfset this.javaSettings.loadPaths = [getDirectoryFromPath(getCurrentTemplatePath()) & "lib/"]>
	<cfset this.javaSettings.reloadOnChange=true>

	<cffunction name="onRequest">
		<cfargument name="targetPage" type="string">
		<cfset var content = "">
		<cfset var showError = "">
		<cfif NOT StructKeyExists(application, "index") OR StructKeyExists(url, "reinit")>
			<cfset application.index = DeserializeJSON( FileRead(ExpandPath("./data/en/index.json")))>
			<cfset application.categories = {}>
			<cfloop array="#application.index.categories#" index="local.cat">
				<cfset application.categories[local.cat] = {name="", items=[]}>
				<cfset local.catData = DeserializeJSON( FileRead(ExpandPath("./data/en/#local.cat#.json")))>
				<cfset application.categories[local.cat].name = local.catData.name>
				<cfset application.categories[local.cat].items = local.catData.related>
			</cfloop>
			<cfset application.guides = {}>
			<cfloop array="#application.index.guides#" index="local.guide">
				<cfset local.fileObj = fileOpen(ExpandPath("./guides/en/#local.guide#.md"),"read")>
				<cfset local.title = fileReadLine(local.fileObj)>
				<cfset fileClose(local.fileObj)>
				<cfif Left(local.title, 1) IS "##"> 
					<cfset local.title = Replace(local.title, "## ", "")>
				<cfelse>
					<cfset local.title = local.guide>
				</cfif>
				<cfset application.guides[local.guide] = local.title>
			</cfloop>
			
		</cfif>
		<cfset request.content = "">
		<!--- cache for one day --->
		<cfset request.assetBaseURL = "/assets/">
		<cfif FindNoCase("cfdocs.org", cgi.server_name)>
			<!--- for production only --->
			<cfset local.assetInfo = directoryList(ExpandPath("./assets/"), false, "query")>
			<cfset request.assetBaseURL = "/assets/v-" & LCase(Hash(ValueList(local.assetInfo.dateLastModified))) & "/">
		</cfif>
		
		<cfsavecontent variable="request.content"><cfinclude template="#arguments.targetPage#"></cfsavecontent>
		<cfparam name="request.cacheControlMaxAge" default="86400" type="integer">
		<cfheader name="Cache-Control" value="max-age=#Int(request.cacheControlMaxAge)#">
		<cfif len(showError)><cfoutput>#showError#</cfoutput><cfflush></cfif>
		<cfcontent reset="true" type="text/html"><cfinclude template="views/layout.cfm">
	</cffunction>

	<cffunction name="linkTo" output="false">
		<cfargument name="name">
		<cfreturn "/" & URLEncodedFormat(LCase(arguments.name))>
	</cffunction>

	<cffunction name="autoLink" output="false">
		<cfargument name="content">
		<cfargument name="exclude" default="#url.name#">
		<cfset var i = "">
		<cfif ReFindNoCase("https?://", arguments.content)>
			<cfset arguments.content = ReReplaceNoCase(arguments.content, "(https?://[a-zA-Z0-9._/=&%?##+-]+)", "<a href=""\1"">\1</a>", "ALL")>
		</cfif>
		<cfif ReFindNoCase("\bApplication\.cfc\b", arguments.content)>
			<cfset arguments.content = ReReplaceNoCase(arguments.content, "\bApplication\.cfc\b", "<a href=""#linkTo('application-cfc')#"">Application.cfc</a>", "ALL")>
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
		<!--- add CFx+ badge --->
		<cfif REFind("CF[0-9.]+\+", arguments.content)>
			<cfset arguments.content = ReReplace(arguments.content, "CF([0-9.]+\+)", "<span class=""label label-acf"" title=""Requires ColdFusion \1"">CF \1</span>", "ALL")>
		</cfif>
		<!--- add Luceex+ badge --->
		<cfif REFind("Lucee[0-9.]+\+", arguments.content)>
			<cfset arguments.content = ReReplace(arguments.content, "Lucee([0-9.]+\+)", "<span class=""label label-lucee"" title=""Requires Lucee \1"">Lucee \1</span>", "ALL")>
		</cfif>
		<cfset arguments.content = Replace(arguments.content, "#Chr(10)#", "<br />", "ALL")>
		<cfreturn arguments.content>
	</cffunction>

	<cffunction name="findCategory">
		<cfargument name="name"  default="#url.name#">
		<cfset var cat = "">
		<cfloop list="#StructKeyList(application.categories)#" index="cat">
			<cfif cat IS NOT "all" AND arrayFindNoCase(application.categories[cat].items, arguments.name)>
				<cfreturn cat>
			</cfif>
		</cfloop>
		<cfreturn "all">
	</cffunction>

	<cffunction name="onError">
		<cfargument name="exception">
		<cfargument name="eventName">
		<cfsavecontent variable = "request.content">
			<div class="container">
				<h1>Oops <small>Something went wrong</small></h1>
				<cfif cgi.server_port IS "8411" OR cgi.remote_addr IS "127.0.0.1">
					<div class="alert alert-danger">
						<cfoutput>#encodeForHTML(arguments.exception.message)#</cfoutput>
					</div>
					<cfdump var="#arguments#">
				<cfelseif structKeyExists(arguments.exception, "rootCause")>
					<cflog file="cfdocs-errors" type="error" text="Root Cause: #arguments.exception.rootCause.message# -- #arguments.exception.rootCause.detail# -- #cgi.script_name#">
				<cfelse>
					<cflog file="cfdocs-errors" type="error" text="#arguments.exception.message# -- #arguments.exception.detail# #cgi.script_name#">
				</cfif>
			</div>
		</cfsavecontent>

		<cfcontent reset="true" type="text/html"><cfheader statuscode="500" statustext="Server Error"><cfinclude template="views/layout.cfm">
	</cffunction>

</cfcomponent>
