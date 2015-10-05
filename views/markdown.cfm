<cfif structKeyExists(variables, "data")>
	<cfif find("<h1>", variables.data)>
		<cfset request.title = reReplace(variables.data, ".*<h1>([^<]+)<.+", "\1", "ONE")>
	</cfif>
	<br><br>
	<div class="container">
		<cfoutput>#autoLink(variables.data)#</cfoutput>
	</div>
<cfelse>
	<em>No data.</em>
</cfif>