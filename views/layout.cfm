<cfif StructKeyExists(request, "skiplayout") AND request.skiplayout><cfoutput>#request.content#</cfoutput><cfelse><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <cfif NOT FindNoCase("cfdocs.org", cgi.server_name)><meta name="ROBOTS" content="NOINDEX, NOFOLLOW"></cfif>
  <cfparam name="request.title" default="">
  <cfparam name="request.assetBaseURL" default="/assets/">
  <title><cfoutput>#ReReplace(request.title, "[^a-zA-Z0-9 ._-]", "", "ALL")# CFML Documentation</cfoutput></title>
  <link href="https://netdna.bootstrapcdn.com/bootswatch/3.3.5/flatly/bootstrap.min.css" rel="stylesheet">
  <cfoutput><link href="#request.assetBaseURL#style.css" rel="stylesheet"></cfoutput>
  <!--[if lt IE 9]>
  <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.min.js"></script>
  <![endif]-->
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
  <cfset listCategories = listSort(StructKeyList(application.categories),"text")>
  <cfset listGuides = listSort(StructKeyList(application.guides),"text")>
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">CFDocs</a>
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
            <li class="divider"></li>
            <li><a href="/reports/todo.cfm">Todo</a></li>
          </ul>
        </li>
        <li class="dropdown">
            <a href="##" class="dropdown-toggle" data-toggle="dropdown">Other <b class="caret"></b></a>
            <ul class="dropdown-menu">
            <li><a href="#linkTo("application-cfc")#">Application.cfc</a></li>
            <cfloop list="#listGuides#" index="guide">
                <li><a href="#linkTo(guide)#">#application.guides[guide]#</a></li>
            </cfloop>
                <li><a href="/reports/missing-examples.cfm">Missing Examples</a></li>
            </ul>
        </li>
        </cfoutput>
      </ul>
          <form class="navbar-form navbar-right" id="search">
            <div class="form-group">
              <input type="text" placeholder="Tag or Function..." id="lookup-box" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">Go</button>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </div>

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
    <cfoutput>
    	<a href="https://github.com/foundeo/cfdocs#request.gitFilePath#" rel="nofollow" class="visible-lg visible-md"><img id="forkme" src="/assets/img/fork.png" alt="Fork me on GitHub"></a>
    </cfoutput>
  </body>
</html>
</cfif>
