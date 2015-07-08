<cfset dataDir = ExpandPath("../data/en")>
<cfset tags = []>
<cfset functions = []>
<cfset all = []>
<cfset categories = []>
<cfloop array="#directoryList(dataDir, false, "array")#" index="filePath">
	<cfset json = fileRead(filePath,"utf-8")>
	<cftry>
		<cfset data = deserializeJSON(json)>
		<cfif StructKeyExists(data, "type")>
			<cfif data.type IS "tag" OR data.type IS "function">

			    <cfif Find("""lucee"":", json) AND REFind("[A-Z]", data.name)>
					<cfset docUrl = "http://docs.lucee.org/reference/#data.type#s/" & ReReplace(data.name, "^cf", "") & ".html">
                    <cfset json = Replace(json, docUrl , LCase(docUrl))>
                    <cfset fileWrite(filePath, json, "utf-8")>
                    <cfoutput>#filePath#<br></cfoutput>
					
                </cfif>

			</cfif>
		</cfif>

		<cfcatch>
			<cfoutput><h2>Error Parsing File: #filePath#</h2></cfoutput>
			<cfdump var="#cfcatch#">
		</cfcatch>
	</cftry>
</cfloop>
