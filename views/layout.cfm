<!DOCTYPE html>
<html lang="en" ng-app="trycf">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <cfif NOT FindNoCase("cfdocs.org", cgi.server_name)><meta name="ROBOTS" content="NOINDEX, NOFOLLOW"></cfif>
    <cfparam name="request.title" default="">
    <title><cfoutput>#ReReplace(request.title, "[^a-zA-Z0-9 ._-]", "", "ALL")# CFML Documentation</cfoutput></title>
    <link href="//netdna.bootstrapcdn.com/bootswatch/3.0.0/flatly/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/style.css" rel="stylesheet">
    <link href="/assets/vendor/plugins/split-pane/split-pane.css" rel="stylesheet">
    <link href="/assets/code-editor.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
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
                		<cfloop list="#StructKeyList(application.categories)#" index="cat">
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
                		<cfloop list="#StructKeyList(application.categories)#" index="cat">
						<cfif cat contains "-functions">
							<li><a href="#linkTo(cat)#">#application.categories[cat].name#</a></li>
						</cfif>
					</cfloop>
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
        		<p>Built &amp; Hosted by <a href="http://foundeo.com/">Foundeo Inc.</a> | ColdFusion is a trademark of Adobe Systems Incorporated.</p>
		</div>
      </footer>
    </div> <!-- /container -->

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.9.3/typeahead.min.js"></script>
    <script src="/assets/script.js"></script>

    <!--- TryCF Editor Scripts --->
    <!--- Ace Editor --->
    <script src="/assets/vendor/ace/src-min/ace.js" type="text/javascript" charset="utf-8"></script>
    <!--- load ace language tools & utility --->
    <script src="/assets/vendor/ace/src-min/ext-language_tools.js" type="text/javascript" charset="utf-8"></script>
    <script src="/assets/vendor/ace/src-min/snippets/coldfusion.js"></script>
    <script src="/assets/vendor/plugins/split-pane/split-pane.js"></script>
    <!--- Angular JS --->
    <script src="/assets/vendor/angular/angular.min.js"></script>
    <!--- Directives --->
    <script src="/assets/code-editor.js"></script>
    <script src="/assets/trycf.js"></script>
    <!--- // TryCF Editor Scripts --->


    <cfif IsDefined("data") AND IsStruct(data) AND StructKeyExists(data, "type") AND StructKeyExists(data, "name")>
    	<cfoutput>
    	<a href="https://github.com/foundeo/cfdocs/tree/master/data/en/#LCase(data.name)#.json" rel="nofollow" class="visible-lg visible-md"><img id="forkme" src="//s3.amazonaws.com/github/ribbons/forkme_right_white_ffffff.png" alt="Fork me on GitHub"></a>
    	</cfoutput>
    <cfelse>
    	<a href="https://github.com/foundeo/cfdocs" rel="nofollow" class="visible-lg visible-md"><img id="forkme" src="//s3.amazonaws.com/github/ribbons/forkme_right_white_ffffff.png" alt="Fork me on GitHub"></a>
    </cfif>

  </body>
</html>
