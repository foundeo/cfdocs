<!--- Run once utility to automate creation of "member_details" where it doesn't already exist --->
<cfset jsonPrinter = createObject("component","JSONPrinter").init() />

<cfset dataDir = ExpandPath("../data/en")>
<cfset tags = []>
<cfset type = "string">
<cfset functions = []>
<cfset guides = []>
<cfset all = []>
<cfset categories = []>
<cfset versions = {4=[], "4.5"=[],5=[],6=[],7=[],8=[],9=[],10=[],11=[],2016=[],2018=[],2021=[]}>
<cfset lucee_versions = {5=[],6=[]}>
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
				<!--- <cfset arrayAppend(functions, nameKey)>
				<cfset arrayAppend(all, nameKey)>
				
				<cfif structKeyExists(data, "engines") AND structKeyExists(data.engines, "coldfusion") AND structKeyExists(data.engines.coldfusion, "minimum_version")>
					<cfif isNumeric(data.engines.coldfusion.minimum_version)>
						<cfset minimum_version = data.engines.coldfusion.minimum_version>
					<cfelseif reFind('^[0-9]{2,4}\.[0-9]\.[0-9]+$', data.engines.coldfusion.minimum_version)>
						<cfset minimum_version = listFirst(data.engines.coldfusion.minimum_version, ".")>
					<cfelse>
						<cfset minimum_version = ''>
					</cfif>
					<cfif structKeyExists(versions, val(minimum_version))>
						<cfset arrayAppend(versions[val(minimum_version)], data.name)>
					</cfif>
				</cfif>

				<cfif structKeyExists(data, "engines") AND structKeyExists(data.engines, "lucee") AND structKeyExists(data.engines.lucee, "minimum_version") AND isNumeric(data.engines.lucee.minimum_version)>

					<cfif structKeyExists(lucee_versions, val(data.engines.lucee.minimum_version))>
						<cfset arrayAppend(lucee_versions[val(data.engines.lucee.minimum_version)], data.name)>
					</cfif>

				</cfif> --->
				
			</cfif>
		</cfif>
		
	<cfcatch>
		<cfoutput><h2>Error Parsing File: #filePath#</h2></cfoutput>
		<cfdump var="#cfcatch#">
	</cfcatch>
	</cftry>
</cfloop>
