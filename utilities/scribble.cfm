<!--- fix links --->
<cfsetting requesttimeout="999">
<cfset dataDir = ExpandPath("../data/en")>
<h1>JSON Test</h1><cfflush>
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
		<cfif structKeyExists(data, "type") AND data.type IS "function">
			<!---
			<cfset firstChar = LCase(left(data.name, 1))>
			<cfset prefix = "https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-">
			<cfswitch expression="#firstChar#">
				<cfcase value="a,b">
					<cfset prefix = prefix & "a-b/">
				</cfcase>
				<cfcase value="c,d">
					<cfset prefix = prefix & "c-d/">
				</cfcase>
				<cfcase value="e,f,g">
					<cfset prefix = prefix & "e-g/">
				</cfcase>
				<cfcase value="h">
					<cfset prefix = prefix & "h-im/">
				</cfcase>
				<cfcase value="i">
					<cfif Left(lcase(data.name), 2) IS "im">
						<cfset prefix = prefix & "h-im/">
					<cfelse>
						<cfset prefix = prefix & "in-k/">
					</cfif>
				</cfcase>
				<cfcase value="j,k">
					<cfset prefix = prefix & "in-k/">
				</cfcase>
				<cfcase value="l">
					<cfset prefix = prefix & "l/">
				</cfcase>
				<cfcase value="m,n,o,p,q,r">
					<cfset prefix = prefix & "m-r/">
				</cfcase>
				<cfcase value="s">
					<cfset prefix = prefix & "s/">
				</cfcase>
				<cfdefaultcase>
					<!--- t-z --->
					<cfset prefix = prefix & "t-z/">
				</cfdefaultcase>
			</cfswitch>
			<cfset newUrl = prefix & LCase(data.name) & ".html">
		
			<cfhttp url="#newUrl#" redirect="true" result="h" method="GET"></cfhttp>
			<cfif Left(h.statuscode,3) IS NOT "200">
				<br><cfoutput>#h.statuscode# #newUrl#</cfoutput><br><cfflush>
				<!--- try upper camel case --->
				<cfif Len(data.name) LTE 3>
					<cfset newUrl = prefix & UCase(data.name) & ".html">
				<cfelse>
					<cfset newUrl = prefix & UCase(Left(data.name,1)) & Right(data.name, Len(data.name)-1) & ".html">
				</cfif>
				
				<cfhttp url="#newUrl#" redirect="true" result="h" method="GET"></cfhttp>
				<cfif Left(h.statuscode,3) IS "200">
					<cfoutput>&raquo; #h.statuscode# #newUrl#</cfoutput><br><cfflush>
					<!---
					<cfset json = ReReplaceNoCase(json, "https?://learn.adobe.com/wiki/display/coldfusionen/#LCase(data.name)#", newUrl)>
					--->
					<cfset json = ReReplaceNoCase(json, "https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-[^""]+", newUrl)>
					<cfif isJson(json)>
						<cfset fileWrite(filePath, json)>
					</cfif>	
				<cfelse>
					<cfoutput>&raquo; #h.statuscode# #newUrl#</cfoutput><br><cfflush>
				</cfif>
			<cfelse>
				.<cfif files MOD 10 eq 0><cfflush></cfif>
			</cfif>
			--->
		<cfelseif structKeyExists(data, "type") AND data.type IS "tag">
			<cfset firstChar = LCase(mid(data.name, 3,1))>
			<cfif firstChar IS "_">
				<cfset firstChar = LCase(mid(data.name, 4,1))>
			</cfif>
			<cfset prefix = "https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-tags/tags-">
			<cfswitch expression="#firstChar#">
				<cfcase value="a,b">
					<cfset prefix = prefix & "a-b/">
				</cfcase>
				<cfcase value="c">
					<cfset prefix = prefix & "c/">
				</cfcase>
				<cfcase value="d,e">
					<cfset prefix = prefix & "d-e/">
				</cfcase>
				<cfcase value="f">
					<cfset prefix = prefix & "f/">
				</cfcase>
				<cfcase value="g,h">
					<cfset prefix = prefix & "g-h/">
				</cfcase>
				<cfcase value="i">
					<cfset prefix = prefix & "i/">
				</cfcase>
				<cfcase value="j,k,l">
					<cfset prefix = prefix & "j-l/">
				</cfcase>
				<cfcase value="m,n,o">
					<cfset prefix = prefix & "m-o/">
				</cfcase>
				<cfcase value="p,q">
					<cfset prefix = prefix & "p-q/">
				</cfcase>
				<cfcase value="r,s">
					<cfset prefix = prefix & "r-s/">
				</cfcase>
				<cfcase value="t">
					<cfset prefix = prefix & "t/">
				</cfcase>
				<cfdefaultcase>
					<!--- t-z --->
					<cfset prefix = prefix & "u-z/">
				</cfdefaultcase>
			</cfswitch>
			<cfset newUrl = prefix & LCase(data.name) & ".html">

			<cfhttp url="#newUrl#" redirect="true" result="h" method="GET"></cfhttp>
			<cfif Left(h.statuscode,3) IS "200">
				<cfoutput>#h.statuscode# #newUrl#</cfoutput><cfflush><br>
				<cfset json = ReReplaceNoCase(json, "https://helpx.adobe.com/coldfusion/cfml-reference[^""]+", newUrl)>
				<cfif isJson(json)>
					<cfset fileWrite(filePath, json)>
				</cfif>
			<cfelse>
				<cfoutput><div style="color:red;">#h.statuscode# #newUrl#</div></cfoutput><cfflush>
			</cfif>

		</cfif>
		
		
		<cfcatch>Error<cfdump var="#cfcatch#"></cfcatch>
	</cftry>
	
</cfloop>
