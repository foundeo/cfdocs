<cfif StructKeyExists(request, "skiplayout") AND request.skiplayout><cfoutput>#request.content#</cfoutput><cfelse><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<cfif NOT FindNoCase("cfdocs.org", cgi.server_name)><meta name="ROBOTS" content="NOINDEX, NOFOLLOW"></cfif>
	<cfparam name="request.title" default="">
	<cfparam name="request.assetBaseURL" default="/assets/">
	<cfparam name="request.description" default="CFML Documentation Reference: #request.title#">
	<cfparam name="request.ogname" default="">
	<title><cfoutput>#ReReplace(request.title, "[^a-zA-Z0-9 ._-]", "", "ALL")# CFML Documentation</cfoutput></title>
	<link href="https://cdn.jsdelivr.net/npm/bootswatch@3.4.1/lumen/bootstrap.min.css" rel="stylesheet">
	<cfparam name="request.hasExamples" default="false">
	<cfif request.hasExamples><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/color-themes-for-google-code-prettify@2.0.4/dist/themes/tomorrow-night-bright.min.css" /></cfif>
	<cfoutput><link href="#request.assetBaseURL#style.css" rel="stylesheet"></cfoutput>
	<link rel="search" type="application/opensearchdescription+xml" title="Search CFML Documentation" href="/opensearch.xml" />
	<cfoutput>
		<meta name="description" content="#encodeForHTMLAttribute(request.description)#">
		<meta property="og:title" content="#ReReplace(request.title, "[^a-zA-Z0-9 ._-]", "", "ALL")# CFML Documentation">
		<meta property="og:site_name" content="CF Docs">
		<meta property="og:url" content="https://cfdocs.org/#EncodeForHTMLAttribute(lcase(request.ogname))#">
		<meta property="og:description" content="#EncodeForHTMLAttribute(request.description)#">
		<meta property="og:type" content="website">
		<meta property="og:image" content="https://cfdocs.org/openimage.cfm?name=#EncodeForHTMLAttribute(lcase(request.ogname))#">
		<meta property="og:image:alt" content="#EncodeForHTMLAttribute(request.description)#" />
		<meta property="og:image:width" content="512" />
		<meta property="og:image:height" content="256" />
		
		<meta name="twitter:image:src" content="https://cfdocs.org/openimage.cfm?name=#EncodeForHTMLAttribute(lcase(request.ogname))#" />
		<meta name="twitter:site" content="CF Docs" />
		<meta name="twitter:card" content="summary_large_image" />
		<meta name="twitter:title" content="#ReReplace(request.title, "[^a-zA-Z0-9 ._-]", "", "ALL")# CFML Documentation" />
		<meta name="twitter:description" content="#EncodeForHTMLAttribute(request.description)#" />
</cfoutput>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<cfset listCategories = listSort(StructKeyList(application.categories),"text")>
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
						<a href="##" class="dropdown-toggle" data-toggle="dropdown">Guides <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#linkTo("application-cfc")#">Application.cfc</a></li>
						<cfloop collection="#application.guides#" item="guide">
							<li><a href="#linkTo(guide)#">#application.guides[guide]#</a></li>
						</cfloop>
						</ul>
					</li>
					<li class="dropdown">
						<a href="##" class="dropdown-toggle" data-toggle="dropdown">Recently Viewed <b class="caret"></b></a>
						<ul class="dropdown-menu" id="recentitems">
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
							<li><a href="/utilities/json/">Add an Example</a></li>
							<li><a href="https://github.com/foundeo/cfdocs/issues">More...</a></li>
						</ul>
					</li>
				</cfoutput>
				</ul>
				<form class="navbar-form navbar-left hidden-sm" id="search">
					<div class="form-group">
						<div class="input-group">
							<input type="text" style="width:100%" placeholder="Tag or Function..." id="lookup-box" class="form-control">
							<div class="input-group-btn">
								<button type="submit" class="btn btn-primary" style="    margin-top: -4px;">Go</button>
							</div>
						</div>
					</div>
				</form>
				<a href="https://foundeo.com/" class="visible-md visible-lg" id="foundeo"><img src="/assets/img/foundeo.png"></a>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.11.1/typeahead.bundle.min.js"></script>
<cfoutput><script src="#request.assetBaseURL#script.js"></script></cfoutput>
<cfparam name="request.gitFilePath" default="/">
<cfoutput><a href="https://github.com/foundeo/cfdocs#request.gitFilePath#" rel="nofollow" class="visible-lg visible-md"><span id="forkme">Fork me on GitHub</span></a></cfoutput>
<cfif request.hasExamples><script src="https://cdn.jsdelivr.net/npm/code-prettify@0.1.0/loader/prettify.js"></script></cfif>
</body>
</html>
</cfif>
