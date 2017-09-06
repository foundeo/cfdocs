<cfset dataDir = ExpandPath("../data/en")>
<cfset guideDir = ExpandPath("../guides/en")>
<cfset indexVars = ['tags','functions','guides','all','categories']>
<cfloop array="#indexVars#" index="variable">
	<cfset Variables[indexVars[variable]] = []>
</cfloop>
<cfset versions = {4=[], "4.5"=[],5=[],6=[],7=[],8=[],9=[],10=[],11=[],2016=[]}>
<cfset lucee_versions = {5=[]}>
<cfloop array="#directoryList(dataDir, false, "array")#" index="filePath">
	<cfset json = fileRead(filePath,"utf-8")>
	<cftry>
		<cfset data = deserializeJSON(json)>
		<cfset nameKey = getFileFromPath(filePath)>
		<cfset nameKey = LCase(Replace(nameKey, ".json", ""))>
		<cfif StructKeyExists(data, "type")>
			<cfif data.type IS "tag">
				<cfset arrayAppend(tags, nameKey)>
				<cfset arrayAppend(all, nameKey)>
			<cfelseif data.type IS "function">
				<cfset arrayAppend(functions, nameKey)>
				<cfset arrayAppend(all, nameKey)>
			<cfelseif data.type IS "listing">
				<cfset arrayAppend(categories, nameKey)>
			</cfif>
			<cfif structKeyExists(data, "engines") AND structKeyExists(data.engines, "coldfusion") AND structKeyExists(data.engines.coldfusion, "minimum_version") AND isNumeric(data.engines.coldfusion.minimum_version)>

				<cfif structKeyExists(versions, val(data.engines.coldfusion.minimum_version))>
					<cfset arrayAppend(versions[val(data.engines.coldfusion.minimum_version)], data.name)>
				</cfif>
			</cfif>

			<cfif structKeyExists(data, "engines") AND structKeyExists(data.engines, "lucee") AND structKeyExists(data.engines.lucee, "minimum_version") AND isNumeric(data.engines.lucee.minimum_version)>

				<cfif structKeyExists(lucee_versions, val(data.engines.lucee.minimum_version))>
					<cfset arrayAppend(lucee_versions[val(data.engines.lucee.minimum_version)], data.name)>
				</cfif>

			</cfif>
		</cfif>
		<cfcatch>
			<cfoutput><h2>Error Parsing File: #filePath#</h2></cfoutput>
			<cfdump var="#cfcatch#">
		</cfcatch>
	</cftry>
</cfloop>
<cfloop array="#directoryList(guideDir, false, "array")#" index="filePath">
	<cfset nameKey = getFileFromPath(filePath)>
	<cfif listLast(nameKey,".") IS "md">
		<cftry>
			<cfset nameKey = LCase(Replace(nameKey, ".md", ""))>
			<cfset arrayAppend(guides, nameKey)>
		<cfcatch>
			<cfoutput><h2>Error Parsing File: #filePath#</h2></cfoutput>
			<cfdump var="#cfcatch#">
		</cfcatch>
		</cftry>
	</cfif>	
</cfloop>
<cfloop array="#indexVars#" index="variable">
	<cfset arraySort(Variables[indexVars[variable]], "text")>
</cfloop>
<cfset index = {"tags"=tags, "functions"=functions,"categories"=categories, "guides"=guides}>
<cfset fileWrite(dataDir & "/index.json", prettyJSON(serializeJSON(index)), "utf-8")>
<p>Wrote index.json</p>

<cfset writeRelated('tags')>
<p>Wrote tags.json</p>

<cfset writeRelated('functions')>
<p>Wrote functions.json</p>

<cfset aJSON = fileRead(dataDir & "/all.json", "utf-8")>
<cfset aData = deserializeJSON(aJSON)>
<cfset aData.related = all>
<cfset fileWrite(dataDir & "/all.json", prettyJSON(serializeJSON(aData), "utf-8"))>
<p>Wrote all.json</p>

<cfset writeRelated('guides')>
<p>Wrote guides.json</p>

<cfloop array="#structKeyArray(versions)#" index="v">
	<cfset vData = {"name"="ColdFusion #v# New Functions and Tags","type"="listing","description"="List of tags and functions added in ColdFusion #v#", "related"=versions[v]}>
	<cfset fileWrite(dataDir & "/cf#reReplace(v, "[^0-9]", "", "ALL")#.json", prettyJSON(serializeJSON(vData), "utf-8"))>
	<p>Wrote cf<cfoutput>#v#</cfoutput>.json</p>
</cfloop>

<cfloop array="#structKeyArray(lucee_versions)#" index="v">
	<cfset vData = {"name"="Lucee #v# New Functions and Tags","type"="listing","description"="List of tags and functions added in Lucee #v#", "related"=lucee_versions[v]}>
	<cfset fileWrite(dataDir & "/lucee#reReplace(v, "[^0-9]", "", "ALL")#.json", prettyJSON(serializeJSON(vData), "utf-8"))>
	<p>Wrote lucee<cfoutput>#v#</cfoutput>.json</p>
</cfloop>

<cfset applicationStop()>
<p>Stopped application so it can reinit</p>

<cffunction name="prettyJSON" returnType="string" output="false">
	<cfargument name="json" type="string">
	
	<cfset arguments.json = replace(arguments.json, "],", "],#chr(10)##chr(9)#", "all")>
	<cfset arguments.json = replace(arguments.json, "{", "{#chr(10)##chr(9)#", "all")>
	<cfset arguments.json = replace(arguments.json, "}", "#chr(10)#}", "all")>
	
	<cfreturn arguments.json>
</cffunction>

<cffunction name="writeRelated" returnType="boolean" output="false">
	<cfargument name="file" type="string">
	
	<cfset var JSON = fileRead(dataDir & "/" & file & ".json", "utf-8")>
	<cfset var var data = deserializeJSON(JSON)>
	<cfset data.related = tags>
	<cfset fileWrite(dataDir & "/" & file & ".json", prettyJSON(serializeJSON(data), "utf-8"))>
</cffunction>
