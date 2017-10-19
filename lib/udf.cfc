<cfcomponent displayname="CFDocs User defined functions">
	<cffunction
		name="parseMarkdown"
		returntype="string"
		description="Parses passed markdown string or file"
		consumes="text/plain,text/markdown"
		produces="text/plain,text/html"
	>
		<cfargument name="path" type="string" required="false">
		<cfargument name="markdown" type="string" required="false">
		<cfset txtmark = createObject("java", "com.github.rjeschke.txtmark.Processor")>
		<cfif StructKeyExists(Arguments,"path")>
			<cfset markdown = createObject("java", "java.io.File").init(ExpandPath(path))>
		</cfif>
		<cfreturn txtmark.process(markdown, "utf-8")>
	</cffunction>
</cfcomponent>
