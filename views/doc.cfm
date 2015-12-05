<cfoutput>
<div class="jumbotron">
  <div class="container">
    <h1 id="docname">#data.name#</h1>
    <p>#autoLink(data.description)#</p>
	<cfif StructKeyExists(data, "syntax") AND Len(data.syntax)>
		<p id="syntax"><cfif data.type IS "tag"><small><span class="glyphicon glyphicon-tags" title="Tag Syntax"></span></small> &nbsp;</cfif><code>#Replace(HTMLEditFormat(data.syntax), Chr(10), "<br>", "ALL")#<cfif data.type IS "function" AND StructKeyExists(data, "returns") AND Len(data.returns)> <em>&##8594; returns #XmlFormat(data.returns)#</em></cfif></code></p>
        <cfif data.type IS "tag">
            <cfif StructKeyExists(data, "script")>
                <cfset data.scriptTitle = "Script Syntax">
            <cfelseif ListFindNoCase("cfabort,cfbreak,cfcontinue,cfreturn,cfexit", data.name)>
                <cfset data.scriptTitle = "Script Syntax">
                <cfset data.script = ReplaceNoCase(data.name, "cf", "") & ";">
            <cfelseif NOT ListFindNoCase("cfif,cfset,cfelse,cfelseif,cfloop,cfinclude,cfparam,cfswitch,cfcase,cftry,cfthrow,cfrethrow,cfcatch,cffinally,cfmodule,cfcomponent,cfinterface,cfproperty,cffunction,cfimport,cftransaction,cftrace,cflock,cfthread,cfsavecontent,cflocation,cfargument,cfapplication,cfscript", data.name)>
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
        <cfelseif data.type is "function">
        	 <cfif StructKeyExists(data, "member")>
        	 	<h4><em>Member Function Syntax</em></h4>
                <p id="member-syntax">
                    <code>#HTMLEditFormat(data.member)#</code>
                </p>
            </cfif>
        </cfif>
	</cfif>
    <cfif StructKeyExists(data, "discouraged") AND Len(data.discouraged)>
        <div class="alert alert-danger">
            <h4><span class="glyphicon glyphicon-warning-sign"></span> Discouraged: #autoLink(htmlEditFormat(data.discouraged))#</h4>
        </div>
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
	  			<a href="#data.engines.coldfusion.docs#" title="Official Adobe ColdFusion Docs" class="label label-acf">CF<cfif StructKeyExists(data.engines.coldfusion, "minimum_version") AND Len(data.engines.coldfusion.minimum_version)>#XmlFormat(data.engines.coldfusion.minimum_version)#+</cfif></a>
	  		</li>
	  </cfif>
	  <cfif StructKeyExists(data, "engines") AND StructKeyExists(data.engines, "lucee") AND StructKeyExists(data.engines.lucee, "docs") AND Len(data.engines.lucee.docs)>
	  		<li class="pull-right">
	  			<a href="#data.engines.lucee.docs#" title="Official Lucee Docs" class="label label-lucee">Lucee<cfif StructKeyExists(data.engines.lucee, "minimum_version") AND Len(data.engines.lucee.minimum_version)>#XmlFormat(data.engines.lucee.minimum_version)#+</cfif></a>
	  		</li>
	  </cfif>
	  <cfif StructKeyExists(data, "engines") AND StructKeyExists(data.engines, "openbd") AND StructKeyExists(data.engines.openbd, "docs") AND Len(data.engines.openbd.docs)>
	  		<li class="pull-right">
	  			<a href="#data.engines.openbd.docs#" title="Official OpenBD Docs" class="label label-openbd">BD</a>
	  		</li>
	  </cfif>
	</ol>
</cfif>
<div class="container">

	<cfif StructKeyExists(data, "related") AND ArrayLen(data.related)>
		<cfif data.type IS "listing" OR data.type IS "404">
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
		<h2><cfif data.type IS "tag">Attribute Reference <small>for the <span class="item-name">#data.name#</span> tag</small><cfelseif data.type IS "function">Argument Reference <small>for the <span class="item-name">#data.name#</span> function</small><cfelse><span class="item-name">#data.name#</span></cfif></h2>
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
						<td class="p-name" id="p-#XmlFormat(p.name)#">#XmlFormat(p.name)#</td>
						<td><cfif IsBoolean(p.required)>#YesNoFormat(p.required)#<cfelse>#p.required#</cfif></td>
						<td><cfif structKeyExists(p, "default")>#XmlFormat(p.default)#<cfelse>&nbsp;</cfif></td>
						<td class="p-description">
							#autoLink(p.description)#
							<cfif StructKeyExists(p, "values") AND IsArray(p.values) AND ArrayLen(p.values)>
								<cfif uCase(arrayToList(p.values)) IS NOT "YES,NO">
									<p>Example Values:</p>
									<ul>
										<cfloop array="#p.values#" index="i">
											<li>#XmlFormat(i)#</li>
										</cfloop>
									</ul>
								</cfif>
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
					<div class="col-xs-2 text-right">
						<h4>
							<cfif i IS "coldfusion">ColdFusion<cfelseif i IS "railo">Railo<cfelseif i IS "openbd">OpenBD<cfelseif i IS "lucee">Lucee</cfif>: 						
						</h4>
					</div>
					<div class="col-xs-8">
						<div class="alert alert-warning">
							<cfif Len(data.engines[i].minimum_version)><span class="label label-danger">Version #XmlFormat(data.engines[i].minimum_version)#+</span></cfif>
							#autoLink(XmlFormat(data.engines[i].notes))#</div>
						</div>
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
		<h2>Links <small>more information about #data.name#</small></h2>
		<ul>
			<cfloop array="#data.links#" index="link">
				<li><a href="#link.url#">#link.title#</a><cfif StructKeyExists(link, "description") AND Len(link.description)> - #autoLink(XmlFormat(link.description))#</cfif></li>
			</cfloop>
		</ul>
	</cfif>
	<cfif StructKeyExists(data, "examples") AND IsArray(data.examples) AND ArrayLen(data.examples)>
		<h2 id="examples">Examples <small>sample code <cfif data.type IS "function">invoking<cfelse>using</cfif> the #data.name# <cfif data.type IS "tag">tag<cfelse>function</cfif></small></h2>
        <cfset example_index = 0>
		<cfloop array="#data.examples#" index="ex">
            <cfset example_index = example_index + 1>
            <cfset parsedCode = ReReplaceNoCase( HTMLEditFormat(ex.code), '\b#data.name#\b\(', '<em><strong class="syntax-highlight">#data.name#</strong></em>(', 'all' )>
            <cfset parsedCode = ReReplaceNoCase( HTMLEditFormat(ex.code), '&lt;\b#data.name#\b', '<<em><strong class="syntax-highlight">#data.name#</strong></em>', 'all' )>
            <cfif StructKeyExists(data, "script")>
            	<cfset parsedCode = ReplaceNoCase( parsedCode, ListFirst( data.script, '(' ), '<em><strong class="syntax-highlight">#ListFirst( data.script, '(' )#</strong></em>', 'all' )>
            </cfif>
            <cfif StructKeyExists(data, "member")>
	            	<cfset parsedCode = ReplaceNoCase( parsedCode, ListFirst( ListLast( data.member, '.' ), '(' ), '<em><strong class="syntax-highlight">#listFirst( ListLast( data.member, '.' ), '(' )#</strong></em>', 'all' )>
            </cfif>
			<br />
			<h4>
                #XmlFormat(ex.title)#
                <cfif NOT structKeyExists(ex, "runnable") OR ex.runnable>
	                <div class="pull-right">
	                    <button class="example-btn btn btn-default" data-name="#encodeForHTMLAttribute(LCase(data.name))#" data-index="#example_index#"><span class="glyphicon glyphicon-play-circle"></span>&nbsp; Run Code</button>
	                </div>
	            </cfif>
            </h4>
			<p class="clearfix">#autoLink(ex.description)#</p>
			<pre><code>#parsedCode#</code></pre>
			<cfif StructKeyExists(ex, "result") AND Len(ex.result)>
				<p><strong>Expected Result: </strong> #XmlFormat(ex.result)#</p>
			</cfif>
		</cfloop>
        <div class="modal fade example-modal" tabindex="-1" role="dialog">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">#XmlFormat(data.name)# Example</h4>
                </div>
                <div class="modal-body" id="example-modal-content">

                </div>

            </div>
          </div>
        </div>

	</cfif>
</div>
</cfoutput>
