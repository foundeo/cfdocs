<cfscript>
if( !structKeyExists( variables, "page" ) ){
	throw( "unable to process page. required page structure does not exists" );
}

oMissing = new lib.missing();
page['total'] = arrayLen(application.index.tags) + arrayLen(application.index.functions);
page['tags']  = oMissing.process( application.index.tags );
page['functions'] = oMissing.process( application.index.functions );
page['missing']   = arrayLen(page.functions[page.node]) + arrayLen(page.tags[page.node]);
page['complete']  = page.total - page.missing;
page['percent']   = NumberFormat( (page.complete/page.total) * 100, "_.__" );

page.description = replace( page.description, "{total}", page.total );
page.description = replace( page.description, "{complete}", page.complete );
page.description = replace( page.description, "{percent}", page.percent );

if( structKeyExists( page, "dump" ) && page.dump ){
	writedump( page );
	abort;
}

request.gitFilePath = "/edit/master/reports/missing-#page.node#.cfm";
</cfscript>

<cfoutput>
	<div class="jumbotron">
		<div class="container">
			<h1 id="docname">#page.name#</h1>
			<p>#autoLink(page.description)#</p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="panel panel-default">
					<div class="panel-heading"><h3 class="panel-title">Tags <span class="badge badge-primary">#arrayLen(page.tags[page.node])#</span></h3></div>
  					<div class="panel-body">
    					<ul>
							<cfloop index="r" array="#page.tags[page.node]#">
								<li><a href="/#r#">#r#</a></li>
							</cfloop>
						</ul>
  					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="panel panel-default">
					<div class="panel-heading"><h3 class="panel-title">Functions <span class="badge badge-primary">#arrayLen(page.functions[page.node])#</span></h3></div>
  					<div class="panel-body">
    					<ul>
							<cfloop index="r" array="#page.functions[page.node]#">
								<li><a href="/#r#">#r#</a></li>
							</cfloop>
						</ul>
  					</div>
				</div>
			</div>
		</div>
	</div>
</cfoutput>
<!--- only cache reports for 1h --->
<cfset request.cacheControlMaxAge = 3600>