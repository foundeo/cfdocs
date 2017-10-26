<cfoutput>
	<div class="jumbotron">
		<div class="container">
			<h1 id="docname">#data.name#</h1>
			<p>#autoLink(data.description)#</p>
			<cfif StructKeyExists(data, "syntax") AND Len(data.syntax)>
				<p id="syntax"><cfif data.type IS "tag"><small><span class="glyphicon glyphicon-tags" title="Tag Syntax"></span></small> &nbsp;</cfif><code>#Replace(encodeForHTML(data.syntax), Chr(10), "<br>", "ALL")#<cfif data.type IS "function" AND StructKeyExists(data, "returns") AND Len(data.returns)> <em>&##8594; returns #encodeForHTML(data.returns)#</em></cfif></code></p>
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
							<small><span class="glyphicon glyphicon-flash" title="#encodeForHTMLAttribute(data.scriptTitle)#"></span></small> &nbsp;<code>#encodeForHTML(data.script)#</code>
						</p>
					</cfif>
				<cfelseif data.type is "function">
					<cfif StructKeyExists(data, "member")>
					 	<h4><em>Member Function Syntax</em></h4>
						<p id="member-syntax">
							<code>#encodeForHTML(data.member)#</code>
						</p>
					</cfif>
				</cfif>
			</cfif>
			<cfif structKeyExists(data, "engines") AND structKeyExists(data.engines, "coldfusion") AND structKeyExists(data.engines.coldfusion, "deprecated") AND len(data.engines.coldfusion.deprecated)>
				<div class="alert alert-danger">
					<h4>
						<span class="glyphicon glyphicon-warning-sign"></span>
						<cfif structKeyExists(data.engines.coldfusion, "removed") AND len(data.engines.coldfusion.removed)>
							The #data.name# <cfif data.type IS "tag">tag<cfelseif data.type IS "function">function</cfif> was <strong>REMOVED</strong> from ColdFusion #encodeForHTML(data.engines.coldfusion.removed)# <cfif data.engines.coldfusion.removed IS NOT data.engines.coldfusion.deprecated> and has been <strong>DEPRECATED</strong> since ColdFusion #encodeForHTML(data.engines.coldfusion.deprecated)#</cfif>
						<cfelse>
							The #data.name# <cfif data.type IS "tag">tag<cfelseif data.type IS "function">function</cfif> is <strong>DEPRECATED</strong> as of ColdFusion #encodeForHTML(data.engines.coldfusion.deprecated)#
						</cfif>
					</h4>
				</div>
			<cfelseif StructKeyExists(data, "engines") AND structCount(data.engines) EQ 1>
				<div class="alert alert-warning">
					This <cfif data.type IS "tag">tag<cfelseif data.type IS "function">function</cfif> requires
					<cfif structKeyExists(data.engines, "coldfusion")>
						Adobe ColdFusion<cfif StructKeyExists(data.engines.coldfusion, "minimum_version") AND Len(data.engines.coldfusion.minimum_version)> #data.engines.coldfusion.minimum_version# and up</cfif>.
						<em> Not supported on Lucee, OpenBD, etc.</em>
					<cfelseif structKeyExists(data.engines, "lucee")>
						Lucee. <em>Not supported on Adobe ColdFusion.</em>
					</cfif>
				</div>
			</cfif>
			<cfif StructKeyExists(data, "discouraged") AND Len(data.discouraged)>
				<div class="alert alert-danger">
					<h4><span class="glyphicon glyphicon-warning-sign"></span> Discouraged: #autoLink(encodeForHTML(data.discouraged))#</h4>
				</div>
			</cfif>
		</div>
	</div>

	<cfif data.type IS NOT "404" AND data.type IS NOT "index">
		<ol class="breadcrumb container">
			<li><a href="/">CFDocs</a></li>
			<cfif NOT structKeyExists(url, "name")>
				<cfset url.name = data.name>
			</cfif>
			<cfif data.type IS "function" OR url.name contains "-functions"><li><a href="#linkTo("functions")#">Functions</a></li></cfif>
			<cfif data.type IS "tag" OR url.name contains "-tags"><li><a href="#linkTo("tags")#">Tags</a></li></cfif>
			<cfset cat = findCategory(url.name)>
			<cfif Len(cat)><li><a href="#linkTo(cat)#">#application.categories[cat].name#</a></li></cfif>
			<li class="active">#data.name#</li>			

			<cfif StructKeyExists(data, "engines") AND StructKeyExists(data.engines, "coldfusion") AND StructKeyExists(data.engines.coldfusion, "docs") AND Len(data.engines.coldfusion.docs)>
				<li class="pull-right">
					<a href="#data.engines.coldfusion.docs#" title="Official Adobe ColdFusion Docs" class="label label-acf">CF<cfif StructKeyExists(data.engines.coldfusion, "minimum_version") AND Len(data.engines.coldfusion.minimum_version)>#encodeForHTML(data.engines.coldfusion.minimum_version)#+</cfif></a>
				</li>
			</cfif>
			<cfif StructKeyExists(data, "engines") AND StructKeyExists(data.engines, "lucee") AND StructKeyExists(data.engines.lucee, "docs") AND Len(data.engines.lucee.docs)>
				<li class="pull-right">
					<a href="#data.engines.lucee.docs#" title="Official Lucee Docs" class="label label-lucee">Lucee<cfif StructKeyExists(data.engines.lucee, "minimum_version") AND Len(data.engines.lucee.minimum_version)>#encodeForHTML(data.engines.lucee.minimum_version)#+</cfif></a>
				</li>
			</cfif>
			<cfif StructKeyExists(data, "engines") AND StructKeyExists(data.engines, "openbd") AND StructKeyExists(data.engines.openbd, "docs") AND Len(data.engines.openbd.docs)>
				<li class="pull-right">
					<a href="#data.engines.openbd.docs#" title="Official OpenBD Docs" class="label label-openbd">BD</a>
				</li>
			</cfif>
			<cfif structKeyExists(data, "engines") AND NOT structIsEmpty(data.engines)>
				<li role="separator" class="pull-right divider"></li>
			</cfif>
			<li class="pull-right">
				<a href="https://github.com/foundeo/cfdocs/issues/new?title=#encodeForURL(data.name)#" rel="nofollow" class="label label-warning" title="Report an Issue">Issue</a>
			</li>
			<cfif StructKeyExists(request,"gitFilePath") AND Len(request.gitFilePath) AND not (REFind("(cf|lucee)[0-9]{1,3}",data.name) OR ArrayContains(['tags','functions','guides','all','categories'],data.name) )>
				<li class="pull-right">
					<a href="https://github.com/foundeo/cfdocs#request.gitFilePath#" rel="nofollow" class="label label-danger">Edit</a>
				</li>
			</cfif>
		</ol>
	</cfif>
	
	<div class="container">
		<cfif StructKeyExists(data, "related") AND ArrayLen(data.related)>
			<cfif data.type IS "listing" OR data.type IS "404">
				<div class="listing">
					<cfloop array="#data.related#" index="r">
						<h2><a href="#linkTo(r)#" class="related btn btn-default">#r#</a></h2>
					</cfloop>
				</div>
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
			<h2>
				<cfif data.type IS "tag">
					#encodeForHTML(data.name)# Attribute Reference
				<cfelseif data.type IS "function">
					#encodeForHTML(data.name)# Argument Reference
				<cfelse>
					<span class="item-name">#encodeForHTML(data.name)#</span>
				</cfif>
			</h2>
			
			<cfloop array="#data.params#" index="p">
				<div class="param" id="p-#encodeForHTMLAttribute(p.name)#">
					<h4>
						#encodeForHTML(p.name)#
						<cfif structKeyExists(p, "type") and len( p.type )><em><span class="text-muted">#encodeForHTML(p.type)#</span></em></cfif>
						<cfif IsBoolean(p.required) AND p.required><div class="pull-right"><span class="label label-danger">Required</span></div></cfif>
						<cfif structKeyExists(p, "default") and len( trim( p.default ) )>
								<div class="p-default pull-right"><span class="text-muted">Default:</span> <code>#encodeForHTML(p.default)#</code></div>
						</cfif>
					</h4>
					<div class="p-desc">						
						#autoLink( p.description )# 
						<cfif StructKeyExists(p, "values") AND IsArray(p.values) AND ArrayLen(p.values)>
							<cfif uCase(arrayToList(p.values)) IS NOT "YES,NO">
								<div>
									<strong>Values:</strong>
									<ul>
										<cfloop array="#p.values#" index="i">
											<li><code>#encodeForHTML(i)#</code></li>
										</cfloop>
									</ul>
								</div>
							</cfif>
						</cfif>						
					</div>
				</div>			
			</cfloop>
		</cfif>

		<cfif StructKeyExists(data, "engines")>
			<cfset compatibilityData = "">
			<cfloop index="i" list="#StructKeyList(data.engines)#">
				<cfif (StructKeyExists(data.engines[i], "notes") AND Len(data.engines[i].notes)) OR ( StructKeyExists(data.engines[i], "deprecated") AND Len(data.engines[i].deprecated) )>
					<cfsavecontent variable="compatibilityData">
						#compatibilityData#
						<div class="row">
							<div class="col-sm-2 text-right">
								<h4>
									<cfif i IS "coldfusion">ColdFusion<cfelseif i IS "railo">Railo<cfelseif i IS "openbd">OpenBD<cfelseif i IS "lucee">Lucee</cfif>:
								</h4>
							</div>
							<div class="col-sm-8">
								<cfif StructKeyExists(data.engines[i], "deprecated") AND Len(data.engines[i].deprecated)>
									<div class="alert alert-danger">
										<strong>DEPRECATED</strong> since version #encodeForHTML(data.engines[i].deprecated)#
										<cfif StructKeyExists(data.engines[i], "removed") AND Len(data.engines[i].removed)>
											<strong>REMOVED</strong> in version #encodeForHTML(data.engines[i].removed)#
										</cfif>
										<cfif StructKeyExists(data.engines[i], "notes") AND Len(data.engines[i].notes)>
											#autoLink(encodeForHTML(data.engines[i].notes))#
										</cfif>
									</div>
								<cfelse>
									<div class="alert alert-warning">
										<cfif Len(data.engines[i].minimum_version)><span class="label label-danger">Version #encodeForHTML(data.engines[i].minimum_version)#+</span></cfif>
										#autoLink(encodeForHTML(data.engines[i].notes))#
									</div>
								</cfif>
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
					<li><a href="#link.url#">#link.title#</a><cfif StructKeyExists(link, "description") AND Len(link.description)> - #autoLink(encodeForHTML(link.description))#</cfif></li>
				</cfloop>
			</ul>
		</cfif>

		<cfif StructKeyExists(data, "examples") AND IsArray(data.examples) AND ArrayLen(data.examples)>
			<cfset request.hasExamples = true>
			<h2 id="examples">Examples <small>sample code <cfif data.type IS "function">invoking<cfelse>using</cfif> the #data.name# <cfif data.type IS "tag">tag<cfelse>function</cfif></small></h2>
			<cfset example_index = 0>
			<cfloop array="#data.examples#" index="ex">
				<cfset example_index = example_index + 1>
				<br />
				<h4 id="ex#example_index#">
					#XmlFormat(ex.title)#
					<cfif NOT structKeyExists(ex, "runnable") OR ex.runnable>
						<div class="pull-right">
							<button class="example-btn btn btn-default" data-name="#encodeForHTMLAttribute(LCase(data.name))#" data-index="#example_index#"><span class="glyphicon glyphicon-play-circle"></span>&nbsp; Run Code</button>
						</div>
					</cfif>
				</h4>
				<p class="clearfix">#autoLink(ex.description)#</p>
				<pre class="prettyprint"><code>#encodeForHTML(ex.code)#</code></pre>
				<cfif StructKeyExists(ex, "result") AND Len(ex.result)>
					<p><strong>Expected Result: </strong> #encodeForHTML(ex.result)#</p>
				</cfif>
			</cfloop>
			<div class="modal fade example-modal" tabindex="-1" role="dialog">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title">#encodeForHTML(data.name)# Example</h4>
						</div>
						<div class="modal-body" id="example-modal-content">
						</div>
					</div>
				</div>
			</div>
		</cfif>
	</div>
</cfoutput>
