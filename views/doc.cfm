<cfoutput>
	<cfscript>
		related = [];
		guides = [];
		if (structKeyExists(data, "related") AND arrayLen(data.related)) {
			for (i = 1; i lte arrayLen(data.related); i++) {
				_doc = data.related[i];
				jsonPath = expandPath("./data/en/#LCase(_doc)#.json");
				guidePath = expandPath("./guides/en/#LCase(_doc)#.md");
				if (fileExists(jsonPath)) {
					arrayAppend(related,data.related[i]);
				}
				else if (fileExists(guidePath)) {
					arrayAppend(guides,data.related[i]);
				}
			}
		}
	</cfscript>
	<div class="jumbotron">
		<div class="container" data-doc="#encodeForHTMLAttribute(data.name)#">
			<h1 id="docname">#data.name#</h1>
			<p>#autoLink(data.description)#</p>
			<cfif StructKeyExists(data, "syntax") AND Len(data.syntax)>
				<p id="syntax">
					<cfif data.type IS "tag">
						<small><span class="glyphicon glyphicon-tags" title="Tag Syntax"></span></small> &nbsp;
					</cfif>
					<code>#trim(Replace(encodeForHTML(data.syntax), Chr(10), "<br>", "ALL"))#</code>
					<cfif data.type IS "function" AND StructKeyExists(data, "returns") AND Len(data.returns)>
						<code><em>&##8594; returns #encodeForHTML(data.returns)#</em></code>
					</cfif>
				</p>
				<cfif data.type IS "tag">
					<cfif StructKeyExists(data, "script")>
						<cfset data.scriptTitle = "Script Syntax">
					<cfelseif NOT ListFindNoCase("cfif,cfset,cfelse,cfelseif,cfloop,cfinclude,cfparam,cfswitch,cfcase,cftry,cfthrow,cfrethrow,cfcatch,cffinally,cfmodule,cfcomponent,cfinterface,cfproperty,cffunction,cfimport,cftransaction,cftrace,cflock,cfthread,cfsavecontent,cflocation,cfargument,cfapplication,cfscript", data.name)>
						<!--- add cfscript syntax --->
						<cfset data.script = replaceScript(name = data.name, syntax = data.syntax, mode = "other")>
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
							<cfif StructKeyExists(data, "member_details") AND StructKeyExists(data.member_details, "returns") && Len(data.member_details.returns)>
								<code><em>&##8594; returns #encodeForHTML(data.member_details.returns)#</em></code>
							</cfif>
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
					<cfscript>
						engineMap = {
							"coldfusion": "Adobe ColdFusion",
							"lucee": "Lucee",
							"openbd": "OpenBD",
							"railo": "Railo"
						};
						engine = structKeyList(data.engines);
					</cfscript>
					#engineMap[engine]#<cfif StructKeyExists(data.engines[engine], "minimum_version") AND Len(data.engines[engine].minimum_version)> #data.engines[engine].minimum_version# and up</cfif>.&nbsp;
					<em>Not supported on <cfif engine neq 'lucee'>Lucee, </cfif><cfif engine neq 'coldfusion'>Adobe ColdFusion, </cfif> etc.</em>
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
				<span class="label label-warning">
					<a href="https://github.com/foundeo/cfdocs/issues?q=is:issue%20is:open%20#encodeForURL(data.name)#" class="issuecount badge">0</a>
					<a href="https://github.com/foundeo/cfdocs/issues/new?title=#encodeForURL(data.name)#" rel="nofollow" class="issuebutton" title="Report an Issue">Issue</a>
				</span>
			</li>
			<cfif StructKeyExists(request,"gitFilePath") AND Len(request.gitFilePath) AND not (REFind("(cf|lucee)[0-9]{1,3}",data.name) OR ArrayContains(['tags','functions','guides','all','categories'],data.name) )>
				<li class="pull-right">
					<a href="https://github.com/foundeo/cfdocs#request.gitFilePath#" rel="nofollow" class="label label-danger">Edit</a>
				</li>
			</cfif>
		</ol>
	</cfif>

	<div class="container">
		<cfif arrayLen(related)>
			<cfif data.type IS "listing" OR data.type IS "404">
				<div class="listing">
					<cfloop array="#data.related#" index="r">
						<h2><a href="#linkTo(r)#" class="related btn btn-default">#r#</a></h2>
					</cfloop>
				</div>
			<cfelse>
				<div class="related">
					See Also:
					<cfloop array="#related#" index="r">
						<a href="#linkTo(r)#" class="related label label-default">
							<cfif r.startsWith('cf')>
								<span class="glyphicon glyphicon-tags"></span>
							<cfelse>
								<span class="glyphicon glyphicon-flash"></span>
							</cfif>&ensp;
							#r#
						</a>
					</cfloop>
					<cfif arrayLen(guides)>
						<cfloop array="#guides#" index="g">
							<span class="label label-success">
								<span class="glyphicon glyphicon-book" title="Guide"></span>&ensp;<a href="#linkTo(g)#" style="color:white;">#g# guide</a>
							</span>
						</cfloop>
					</cfif>
				</div>
			</cfif>
		</cfif>

		<cfif StructKeyExists(data, "params") AND ArrayLen(data.params)>
			<h2>
				<cfif data.type IS "tag">
					Attribute Reference
				<cfelseif data.type IS "function">
					Argument Reference
				<cfelse>
					<span class="item-name">#encodeForHTML(data.name)#</span>
				</cfif>
			</h2>

			<cfloop array="#data.params#" index="p">
				<div class="param" id="p-#encodeForHTMLAttribute(p.name)#">
					<h4>
						#encodeForHTML(p.name)#
						<cfif structKeyExists(p, "type") and len( p.type )><em><span class="text-muted">#encodeForHTML(p.type)#</span></em></cfif>
						<cfif isBoolean(p.required) AND p.required><div class="pull-right"><span class="label label-danger">Required</span></div></cfif>
						<cfif structKeyExists(p, "default") and len( trim( p.default ) )>
							<div class="p-default pull-right"><span class="text-muted">Default:</span> <code>#encodeForHTML(p.default)#</code></div>
						</cfif>
					</h4>
					<div class="p-desc">
						#autoLink( p.description )#
						<cfif structKeyExists(p, "values") AND isArray(p.values) AND arrayLen(p.values)>
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
						<cfif structKeyExists(p, "callback_params") AND isArray(p.callback_params) and not arrayIsEmpty(p.callback_params)>
							<h4>Callback parameters:</h4>
							<ul>
								<cfloop array="#p.callback_params#" index="i">
									<li>
										<code>#encodeForHTML(i.name)#</code><cfif structKeyExists(i, 'required') AND Len(i.required)><span title="required">&##42;</span></cfif>&ensp;
										<cfif structKeyExists(i, 'type') AND Len(i.type)>
											<em class="text-muted typewriter">#i.type#</em>
										</cfif>:
										#i.description#
									</li>
								</cfloop>
							</ul>
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
		<cfif StructKeyExists(request,'gitFilePath') and StructKeyExists(data, "type") and (data.type is "tag" or data.type is "function")>
			<h2 id="examples">
				Examples
				<button type="button" style="margin-left:5px" class="btn btn-primary" data-toggle="modal" data-target=".add-example-modal-lg"><span class="glyphicon glyphicon-plus"></span> Add An Example</button>
				<div>
					<small>Sample code <cfif data.type IS "function">invoking<cfelse>using</cfif> the #data.name# <cfif data.type IS "tag">tag<cfelse>function</cfif></small>
				</div>
			</h2>

			<div class="modal fade add-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
				<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="gridSystemModalLabel">Add an Example for: #data.name#</h4>
						<div>Use this form to create the Serialized JSON string needed to add an example into the docs.</div>
					</div>
					<div class="modal-body">
						<div class="row form">
							<div class="col-md-7">
								<input type="text" id="example-form-title" class="form-control" value="" placeholder="Title">
								<br>
								<input  type="text" id="example-form-description" class="form-control" value="" placeholder="Description">
								<br>

								<textarea  id="example-form-code" placeholder="Code" class="form-control" rows="8"></textarea>
								<br>

								<input  type="text" id="example-form-result" class="form-control" value="" placeholder="Expected Result or Output of the Code Example">
								<br>
								<select id="example-form-runnable" class="form-control">
									<option value="0">No - Do not show Run Code Button</option>
									<option value="1" selected="selected">Yes - Show Run Code Button</option>
								</select>
							</div>

							<div class="col-md-5">
								<ol style="margin-left: -21px;">
									<li>Copy the generated code below	</li>
									<li><a href="https://github.com/foundeo/cfdocs#request.gitFilePath#" target="_blank" rel="nofollow" class="label label-danger">Click Here to edit doc for: #data.name#</a></li>
									<li> Update doc by adding the example in the examples section</li>
									<li> Scroll to the bottom and click "Propose Change"</li>
								</ol>
								<textarea rows="14" id="example-form-output" class="form-control"></textarea>
							</div>
						</div>
					</div>
				</div>
				</div>
			</div>
		</cfif>
		<cfif StructKeyExists(data, "examples") AND IsArray(data.examples) AND ArrayLen(data.examples)>
			<cfset request.hasExamples = true>
			<cfset example_index = 0>
			<cfloop array="#data.examples#" index="ex">
				<cfset example_index = example_index + 1>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title" id="ex#example_index#">
							<a role="button" data-toggle="collapse" data-parent="##accordion" href="##collapseEx#example_index#" aria-expanded="#example_index lte 5#" aria-controls="collapseEx#example_index#"<cfif example_index gt 5> class="collapsed"</cfif>>
							  #XmlFormat(ex.title)#
							</a>
						</h4>
					</div>
					<div id="collapseEx#example_index#" class="panel-collapse collapse<cfif example_index lte 5> in</cfif>" role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							<cfif NOT structKeyExists(ex, "runnable") OR ex.runnable>
								<div class="pull-right">
									<button class="example-btn btn btn-default" data-name="#encodeForHTMLAttribute(LCase(data.name))#" data-index="#example_index#"><span class="glyphicon glyphicon-play-circle"></span>&nbsp; Run Code</button>
								</div>
							</cfif>
								<div class="pull-right" style="margin-right:10px">
									<button class="copy-btn btn btn-default" onclick="copyTextToClipboard('code#example_index#')" ><span class="glyphicon glyphicon-copy"></span>&nbsp; Copy Code</button>
								</div>
							<p class="clearfix">#autoLink(ex.description)#</p>
							<pre class="prettyprint"><code id="code#example_index#">#encodeForHTML(ex.code)#</code></pre>
							<cfif StructKeyExists(ex, "result") AND Len(ex.result)>
								<p><strong>Expected Result: </strong> #encodeForHTML(ex.result)#</p>
							</cfif>
						</div>
					</div>
				</div>
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
<!--- // TryCF Editor Scripts --->
<cffunction name="replaceScript">
	<cfargument name="name" type="string" required="true">
	<cfargument name="mode" type="string" required="true">
	<cfargument name="syntax" type="string">

	<cfset var result = "">

	<cfif mode is "cf">
		<cfset result = ReplaceNoCase(name, "cf", "") & ";">
	<cfelseif mode is "other">
		<!--- add cfscript syntax --->
		<cfset result = ReReplace(syntax, "[<\r\n]", "", "ALL")>
		<cfset result = ReplaceNoCase(result, name, name & "(")>
		<cfset result = Replace(result, "( ", "(")>
		<!--- replace double quote followed by a space with a ,[space] --->
		<cfset result = ReReplace(result, """ ", """, ", "ALL")>
		<cfset result = ReReplace(result, ",? ?>", ");")>
	</cfif>
	<cfreturn result>
</cffunction>
