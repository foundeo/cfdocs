<cfscript>
// request.cacheControlMaxAge = 60 * 20;  // cache for 20 min

oMissing = new lib.missing();
page = {};
page['total'] = arrayLen(application.index.tags) + arrayLen(application.index.functions);
page['functions'] = oMissing.process( application.index.functions );
page['tags'] = oMissing.process( application.index.tags );

page['missing']  = arrayLen(page.functions.examples) + arrayLen(page.tags.examples);
page['complete'] = page.total - page.missing;
page['percent']  = NumberFormat( (page.complete/page.total) * 100, "_.__" );

page.description = "Out of #page.total# tags and functions, #page.complete# have examples, #page.percent#% complete.";
url.name = "missing-examples";
request.gitFilePath = "/edit/master/reports/missing-examples.cfm";
</cfscript>

<cfoutput>
	
	<div class="jumbotron">
		<div class="container">
			<h1 id="docname">#url.name#</h1>
			<p>#autoLink(page.description)#</p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="panel panel-default">
					<div class="panel-heading"><h3 class="panel-title">Tags <span class="badge badge-primary">#arrayLen(page.tags.examples)#</span></h3></div>
  					<div class="panel-body">
    					<ul>
							<cfloop index="r" array="#page.tags.examples#">
								<li><a href="/#r#">#r#</a></li>
							</cfloop>
						</ul>
  					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="panel panel-default">
					<div class="panel-heading"><h3 class="panel-title">Functions <span class="badge badge-primary">#arrayLen(page.functions.examples)#</span></h3></div>
  					<div class="panel-body">
    					<ul>
							<cfloop index="r" array="#page.functions.examples#">
								<li><a href="/#r#">#r#</a></li>
							</cfloop>
						</ul>
  					</div>
				</div>
			</div>
		</div>
		
	</div>
</cfoutput>
