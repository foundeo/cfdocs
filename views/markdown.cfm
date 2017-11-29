<cfif structKeyExists(variables, "data")>
	<cfif find("<h1>", variables.data)>
		<cfset request.title = reReplace(variables.data, ".*<h1>([^<]+)<.+", "\1", "ONE")>
		<cfset request.title &= "<small><a href="https://github.com/foundeo/cfdocs#request.gitFilePath#" rel="nofollow"><span class="glyphicon glyphicon-pencil"></span></a></small>">
	</cfif>	
	<br><br>
	<div class="container">
		<cfoutput>
			#autoLink(variables.data,"",true)#
		</cfoutput>
	</div>
<cfelse>
	<em>No data.</em>
</cfif>
