<cfoutput>
<div class="jumbotron">
  <div class="container">
    <h1>#data.name#</h1>
    <p>#autoLink(data.description)#</p>
	<cfif StructKeyExists(data, "syntax") AND Len(data.syntax)>
		<p id="syntax"><cfif data.type IS "tag"><small><span class="glyphicon glyphicon-tags" title="Tag Syntax"></span></small> &nbsp;</cfif>#HTMLEditFormat(data.syntax)#<cfif data.type IS "function" AND StructKeyExists(data, "returns") AND Len(data.returns)> <em>&##8594; returns #XmlFormat(data.returns)#</em></cfif></p>
        <cfif data.type IS "tag">
            <cfif StructKeyExists(data, "script")>
                <cfset data.scriptTitle = "Script Syntax">
            <cfelseif ListFindNoCase("cfabort,cfbreak,cfcontinue,cfreturn,cfexit", data.name)>
                <cfset data.scriptTitle = "Script Syntax">
                <cfset data.script = ReplaceNoCase(data.name, "cf", "") & ";">
            <cfelseif NOT ListFindNoCase("cfif,cfset,cfelse,cfelseif,cfloop,cfinclude,cfparam,cfswitch,cfcase,cftry,cfthrow,cfrethrow,cfcatch,cffinally,cfmodule,cfcomponent,cfinterface,cfproperty,cffunction,cfimport,cftransaction,cftrace,cflock,cfthread,cfsavecontent,cflocation,cfargument,cfapplication", data.name)>
                <!--- add cfscript syntax --->
                <cfset data.script = ReReplace(data.syntax, "[<\r\n]", "", "ALL")>
                <cfset data.script = ReplaceNoCase(data.script, data.name, data.name & "(")>
                <cfset data.script = Replace(data.script, "( ", "(")>
                <!--- replace double quote followed by a space with a ,[space] --->
                <cfset data.script = ReReplace(data.script, """ ", """, ", "ALL")>
                <cfset data.script = ReReplace(data.script, ",? ?>", ");")>
                <cfset data.scriptTitle = "Script Syntax ACF11+, Lucee, Railo 4.2+">
            </cfif>
            <cfif StructKeyExists(data, "script")>
                <p id="script-syntax">
                    <small><span class="glyphicon glyphicon-flash" title="#HTMLEditFormat(data.scriptTitle)#"></span></small> &nbsp;<code>#HTMLEditFormat(data.script)#</code>
                </p>
            </cfif>
        </cfif>
	</cfif>
  </div>
</div>
<cfif data.type IS NOT "404" AND data.type IS NOT "index">
	<ol class="breadcrumb container">
	  <li><a href="/">CFDocs</a></li>
	  <cfif data.type IS "function" OR url.name contains "-functions"><li><a href="#linkTo("functions")#">Functions</a></li></cfif>
	  <cfif data.type IS "tag" OR url.name contains "-tags"><li><a href="#linkTo("tags")#">Tags</a></li></cfif>
	  <cfset cat = findCategory(url.name)>
	  <cfif Len(cat)><li><a href="#linkTo(cat)#">#application.categories[cat].name#</a></li></cfif>
	  <li class="active">#data.name#</li>

	  <cfif StructKeyExists(data, "engines") AND StructKeyExists(data.engines, "coldfusion") AND StructKeyExists(data.engines.coldfusion, "docs") AND Len(data.engines.coldfusion.docs)>
	  		<li class="pull-right">
	  			<a href="#data.engines.coldfusion.docs#" title="Official Adobe ColdFusion Docs" class="label label-info">CF<cfif StructKeyExists(data.engines.coldfusion, "minimum_version") AND Len(data.engines.coldfusion.minimum_version)>#XmlFormat(data.engines.coldfusion.minimum_version)#+</cfif></a>
	  		</li>
	  </cfif>
	  <cfif StructKeyExists(data, "engines") AND StructKeyExists(data.engines, "railo") AND StructKeyExists(data.engines.railo, "docs") AND Len(data.engines.railo.docs)>
	  		<li class="pull-right">
	  			<a href="#data.engines.railo.docs#" title="Official Railo Docs" class="label label-danger">R<cfif StructKeyExists(data.engines.railo, "minimum_version") AND Len(data.engines.railo.minimum_version)>#XmlFormat(data.engines.railo.minimum_version)#+</cfif></a>
	  		</li>
	  </cfif>
	  <cfif StructKeyExists(data, "engines") AND StructKeyExists(data.engines, "openbd") AND StructKeyExists(data.engines.openbd, "docs") AND Len(data.engines.openbd.docs)>
	  		<li class="pull-right">
	  			<a href="#data.engines.openbd.docs#" title="Official OpenBD Docs" class="label label-default">BD</a>
	  		</li>
	  </cfif>
	</ol>
	</cfif>
<div class="container">

	<cfif StructKeyExists(data, "related") AND ArrayLen(data.related)>
		<cfif data.type IS "listing">
			<cfloop array="#data.related#" index="r">
				<h2 class="listing col-sm-3"><a href="#linkTo(r)#" class="related listing label label-default">#r#</a></h2>
			</cfloop>
		<cfelse>
			<div class="related">
				See Also:
				<cfloop array="#data.related#" index="r">
					<a href="#linkTo(r)#" class="related label label-default">#r#</a>
				</cfloop>
			</div>
		</cfif>
	</cfif>
	<cfif StructKeyExists(data, "params") AND ArrayLen(data.params)>
		<h2><span class="item-name">#data.name#</span> <cfif data.type IS "tag">Tag Attribute Reference<cfelseif data.type IS "function">Function Argument Reference</cfif></h2>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Required</th>
					<th>Default</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
				<cfloop array="#data.params#" index="p">
					<tr>
						<td class="p-name">#p.name#</td>
						<td><cfif IsBoolean(p.required)>#YesNoFormat(p.required)#<cfelse>#p.required#</cfif></td>
						<td>#XmlFormat(p.default)#</td>
						<td class="p-description">
							#autoLink(p.description)#
							<cfif StructKeyExists(p, "values") AND IsArray(p.values) AND ArrayLen(p.values)>
								<p>Example Values:</p>
								<ul>
									<cfloop array="#p.values#" index="i">
										<li>#XmlFormat(i)#</li>
									</cfloop>
								</ul>
							</cfif>
						</td>
					</tr>
				</cfloop>
			</tbody>
		</table>
	</cfif>
	<cfif StructKeyExists(data, "engines")>
		<cfset compatibilityData = "">
		<cfloop index="i" list="#StructKeyList(data.engines)#">
			<cfif StructKeyExists(data.engines[i], "notes") AND Len(data.engines[i].notes)>
				<cfsavecontent variable="compatibilityData">
					#compatibilityData#
					<div class="row">
						<div class="col-xs-1"><strong><cfif i IS "coldfusion">ColdFusion<cfelseif i IS "railo">Railo<cfelseif i IS "openbd">OpenBD</cfif></strong></div>
						<div class="col-xs-2"><cfif Len(data.engines[i].minimum_version)><span class="label label-warning">Version #XmlFormat(data.engines[i].minimum_version)#+</span></cfif></div>
						<div class="col-xs-9">#XmlFormat(data.engines[i].notes)#</div>
					</div>
				</cfsavecontent>
			</cfif>
		</cfloop>
		<cfif Len(compatibilityData)>
			<h2>Compatibility</h2>
			#compatibilityData#
		</cfif>
	</cfif>

	<cfif StructKeyExists(data, "links") AND ArrayLen(data.links)>
		<h2>#data.name# Links</h2>
		<ul>
			<cfloop array="#data.links#" index="link">
				<li><a href="#link.url#">#link.title#</a><cfif StructKeyExists(link, "description") AND Len(link.description)> - #autoLink(XmlFormat(link.description))#</cfif></li>
			</cfloop>
		</ul>
	</cfif>
	<cfif StructKeyExists(data, "examples") AND IsArray(data.examples) AND ArrayLen(data.examples)>
		<h2>#data.name# Examples</h2>
		<cfloop array="#data.examples#" index="ex">
			<br />
			<h4>#XmlFormat(ex.title)#</h4>
			<p>#autoLink(ex.description)#</p>
			<pre>#HTMLEditFormat(ex.code)#</pre>
			<cfif StructKeyExists(ex, "result") AND Len(ex.result)>
				<p><strong>Expected Result: </strong> #XmlFormat(ex.result)#</p>
			</cfif>
		</cfloop>
	</cfif>
</div>
</cfoutput>
