<cfif StructKeyExists(request, "skiplayout") AND request.skiplayout><cfoutput>#request.content#</cfoutput><cfelse><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<cfif NOT FindNoCase("cfdocs.org", cgi.server_name)><meta name="ROBOTS" content="NOINDEX, NOFOLLOW"></cfif>
	<cfparam name="request.title" default="">
	<cfparam name="request.assetBaseURL" default="/assets/">
	<title><cfoutput>#ReReplace(request.title, "[^a-zA-Z0-9 ._-]", "", "ALL")# CFML Documentation</cfoutput></title>
	<link href="https://netdna.bootstrapcdn.com/bootswatch/3.3.7/lumen/bootstrap.min.css" rel="stylesheet">
	<cfparam name="request.hasExamples" default="false">
	<cfif request.hasExamples><link rel="stylesheet" href="https://cdn.rawgit.com/foundeo/cfdocs/3da43f03663c57f499cf2de82ef82d4f74fe04cd/assets/vendor/google/code-prettify/theme-monokai.css" /></cfif>
	<cfoutput><link href="#request.assetBaseURL#style.css" rel="stylesheet"></cfoutput>
	<link rel="search" type="application/opensearchdescription+xml" title="Search CFML Documentation" href="/opensearch.xml" />
	<!--[if lt IE 9]>
	<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<cfset listCategories = listSort(StructKeyList(application.categories),"text")>
		<cfset listGuides = listSort(StructKeyList(application.guides),"text")>
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/"><span class="text-primary">CFDocs</span></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<cfoutput>
					<li class="dropdown">
						<a href="#linkTo('tags')#" class="dropdown-toggle" data-toggle="dropdown">Tags <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#linkTo('tags')#">All Tags</a></li>
							<li class="divider"></li>
					<cfloop list="#listCategories#" index="cat">
						<cfif cat contains "-tags">
							<li><a href="#linkTo(cat)#">#application.categories[cat].name#</a></li>
						</cfif>
					</cfloop>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#linkTo('functions')#" class="dropdown-toggle" data-toggle="dropdown">Functions <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#linkTo('functions')#">All Functions</a></li>
							<li class="divider"></li>
					<cfloop list="#listCategories#" index="cat">
						<cfif cat contains "-functions">
							<li><a href="#linkTo(cat)#">#application.categories[cat].name#</a></li>
						</cfif>
					</cfloop>
						</ul>
					</li>
					<li class="dropdown">
						<a href="##" class="dropdown-toggle" data-toggle="dropdown">Other <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#linkTo("application-cfc")#">Application.cfc</a></li>
						<cfloop list="#listGuides#" index="guide">
							<li><a href="#linkTo(guide)#">#application.guides[guide]#</a></li>
						</cfloop>
						</ul>
					</li>
					<li class="dropdown">
						<a href="##" class="dropdown-toggle" data-toggle="dropdown">Contribute <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="/how-to-contribute">How to</a></li>
							<!---<li><a href="/reports/todo.cfm">Missing Functions</a></li>
							<li><a href="/reports/missing-descriptions.cfm">Missing Descriptions</a></li>
							<li><a href="/reports/missing-examples.cfm">Missing Examples</a></li>
							<li><a href="/reports/missing-related.cfm">Missing Related Links</a></li>--->
							<li><a href="https://github.com/foundeo/cfdocs/issues">More...</a></li>
						</ul>
					</li>
				</cfoutput>
				</ul>
				<form class="navbar-form navbar-left hidden-sm" id="search">
					<div class="form-group">
						<input type="text" placeholder="Tag or Function..." id="lookup-box" class="form-control">
					</div>
					<button type="submit" class="btn btn-primary">Go</button>
				</form>
				<ul class="nav navbar-nav navbar-right hidden-sm">
					<li><a href="https://foundeo.com/" id="foundeo"><img src="/assets/img/foundeo.png"></a></li>
				</ul>
			</div><!--/.navbar-collapse -->
		</div>
	</nav>

	<cfoutput>#request.content#</cfoutput>

	<hr>

	<footer>
		<div class="container">
			<p>Built &amp; Hosted by <a href="https://foundeo.com/">Foundeo Inc.</a> | ColdFusion is a trademark of Adobe Systems Incorporated.</p>
		</div>
	</footer>
</div> <!-- /container -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.11.1/typeahead.bundle.min.js"></script>
<cfoutput><script src="#request.assetBaseURL#script.js"></script></cfoutput>
<cfparam name="request.gitFilePath" default="/">
<cfoutput><a href="https://github.com/foundeo/cfdocs#request.gitFilePath#" rel="nofollow" class="visible-lg visible-md"><img id="forkme" src="https://cdn.rawgit.com/foundeo/cfdocs/88847869f4bf61a96185fe01290165b00a2bf4e1/assets/img/fork.png" alt="Fork me on GitHub"></a></cfoutput>
<cfif request.hasExamples><script src="https://cdn.rawgit.com/foundeo/cfdocs/3da43f03663c57f499cf2de82ef82d4f74fe04cd/assets/vendor/google/code-prettify/prettify.js"></script></cfif>

</body>
</html>
</cfif>
