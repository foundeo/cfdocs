<cfif structKeyExists(variables, "data")>
	<cfif find("<h1>", variables.data)>
		<cfset request.title = reReplace(variables.data, ".*<h1>([^<]+)<.+", "\1", "ONE")>
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
