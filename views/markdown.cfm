<cfif structKeyExists(variables, "data")>
	<cfif find("<h1", variables.data)>
		<cfset request.title = trim(reReplace(variables.data, ".*<h1[^>]+><a[^>]+>([^<]+)<.+", "\1", "ONE"))>
	<cfelse>
		<cfset request.title = encodeForHTML(url.name) & " Guide">
	</cfif>	
	<br><br>
	<div class="container">
		<cfoutput>
			<a href="https://github.com/foundeo/cfdocs#request.gitFilePath#" rel="nofollow" class="label label-danger">Edit</a>
			#autoLink(variables.data,"",true)#
		</cfoutput>
	</div>
<cfelse>
	<em>No data.</em>
</cfif>
