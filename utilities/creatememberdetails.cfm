<!--- Run once utility to automate creation of "member_details" where it doesn't already exist --->
<cfset jsonPrinter = createObject("component","JSONPrinter").init() />
<cfset dataDir = ExpandPath("../data/en")>
<cfset type = "string">

<cfloop array="#directoryList(dataDir, false, "array")#" index="filePath">
	<cfset json = fileRead(filePath,"utf-8")>
	<cftry>
		<cfset data = deserializeJSON(json)>
		<cfset nameKey = getFileFromPath(filePath)>
		<cfset nameKey = LCase(Replace(nameKey, ".json", ""))>
		<cfif StructKeyExists(data, "type")>
			<cfif compareNoCase(data.type,"function") EQ 0>
				
				<cfif structKeyExists(data,"member")
				AND NOT structKeyExists(data,"member_details")>

					<cfif reFindNoCase("^array",nameKey) GT 0>
						<cfset type = "array" />
					<cfelseif reFindNoCase("^struct",nameKey) GT 0>
						<cfset type = "struct" />
					<cfelseif reFindNoCase("^week",nameKey) GT 0
					OR reFindNoCase("^day",nameKey) GT 0
					OR reFindNoCase("^date",nameKey) GT 0
					OR reFindNoCase("^year",nameKey) GT 0
					OR reFindNoCase("^time",nameKey) GT 0
					OR reFindNoCase("^minute",nameKey) GT 0
					OR reFindNoCase("^month",nameKey) GT 0
					OR reFindNoCase("^year",nameKey) GT 0
					OR reFindNoCase("^quarter",nameKey) GT 0
					OR reFindNoCase("^second",nameKey) GT 0
					OR reFindNoCase("^createodbc",nameKey) GT 0
					OR reFindNoCase("^firstday",nameKey) GT 0>
						<cfset type = "date" />
					<cfelseif reFindNoCase("^string",nameKey) GT 0
					OR reFindNoCase("^list",nameKey) GT 0>
						<cfset type = "string" />
					<cfelseif reFindNoCase("^image",nameKey) GT 0>
						<cfset type = "image" />
					<cfelseif reFindNoCase("^query",nameKey) GT 0>
						<cfset type = "query" />
					<cfelse>
						<cfset type = "string" />
					</cfif>
				
					<cfset member_details = {
						"name": REReplaceNoCase(data.member,"^([^\.]*)\.([^\(]*)(.*)$","\2","ONE"),
						"type": type,
						"returns": "any",
						"engines": {},
						"base_param_index": "1"
					} />

					<cfset member_details = jsonPrinter.formatJson(serializeJSON(member_details)) />

					<cfset json = REReplaceNoCase(json,'("member":"([^"]*)",)','\1
[member_details]',"ONE") />

					<cfset json = ReplaceNoCase(json,'[member_details]','	"member_details":#REReplaceNoCase(REReplaceNoCase(member_details,'(}$)','	\1','ALL'),'(\s")','		\1','ALL')#,',"ONE") />

					<cfset fileWrite(filePath, json)>

				</cfif>
			</cfif>
		</cfif>
		
	<cfcatch>
		<cfoutput><h2>Error Parsing File: #filePath#</h2></cfoutput>
		<cfdump var="#cfcatch#">
	</cfcatch>
	</cftry>
</cfloop>
