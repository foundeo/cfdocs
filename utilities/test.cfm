
<cfset dataDir = ExpandPath("../data/en")>
<h1>JSON Test</h1>
<cfset files = 0>
<cfset errorCount = 0>
<cfloop array="#directoryList(dataDir, false, "array")#" index="filePath">
	<cfset errors = []>
	<cfset files = files + 1>
	<cfset json = fileRead(filePath)>
	<cftry>
		<cfset data = deserializeJSON(json)>
		<cfif getFileFromPath(filePath) IS "index.json">
			<cfcontinue>
		</cfif>
		<cfif NOT StructKeyExists(data, "name")>
			<cfset arrayAppend(errors, "Missing name")>
		</cfif>
		<cfif NOT StructKeyExists(data, "type")>
			<cfset arrayAppend(errors, "Missing type")>
		<cfelse>
			<cfif data.type IS "tag">
				
			</cfif>
		</cfif>
		<cfcatch>
			<cfset arrayAppend(errors, "Unable to parse json: #cfcatch.message# #cfcatch.detail#")>
		</cfcatch>
	</cftry>
	<cfif ArrayLen(errors)>
		<cfset errorCount = errorCount+1>
		<cfoutput>
			<h2>#getFileFromPath(filePath)#</h2>
			<cfloop array="#errors#" index="e">
				<p>#e#</p>
			</cfloop>
		</cfoutput>
	</cfif>
</cfloop>
<cfoutput>
	<h2>#errorCount# Errors in #files# Files</h2>
</cfoutput>