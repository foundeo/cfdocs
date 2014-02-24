<cfcomponent>
	<cfset this.name = "cfdocs_utils">
	<cfset this.securejson = false>
	<cfset this.securejsonprefix = "">

	<cffunction name="onRequestStart" returntype="boolean">
		<cfargument name="targetPage">
		<cfreturn isLocalhost(cgi.remote_addr)>
	</cffunction>

</cfcomponent>