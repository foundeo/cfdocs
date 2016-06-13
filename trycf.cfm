<cfparam name="url.name" default="rereplace">
<cfparam name="url.index" default="1" type="numeric">
<cfparam name="url.engine" default="acf2016" type="variablename">
<cfsilent>
    <cfset url.name = ReReplace(url.name, "[^a-zA-Z0-9_-]", "", "ALL")>
    <cfif FileExists(ExpandPath("./data/en/#url.name#.json"))>
        <cfset data = DeserializeJSON( FileRead(ExpandPath("./data/en/#url.name#.json")))>
    <cfelse>
        <cfset data={title="404"}>
    </cfif>
    <cfset request.skipLayout=true>
</cfsilent>
<!doctype html>
<html lang="en" ng-app="trycf">
<head>
    <cfoutput>
        <link href="//netdna.bootstrapcdn.com/bootswatch/3.3.5/flatly/bootstrap.min.css" rel="stylesheet">
        <link href="#request.assetBaseURL#vendor/plugins/split-pane/split-pane.css" rel="stylesheet">
        <link href="#request.assetBaseURL#code-editor.css" rel="stylesheet">
        <link href="#request.assetBaseURL#vendor/font-awesome/font-awesome.css" rel="stylesheet">
    </cfoutput>
</head>
<body>
<cfif NOT StructKeyExists(data, "examples") OR NOT IsArray(data.examples) OR ArrayLen(data.examples) EQ 0 OR url.index GT ArrayLen(data.examples) OR url.index LT 1>
    <p>Sorry no dice</p>
<cfelse>
    <cfset example = data.examples[Int(url.index)]>
    <cfif NOT Find("<cf", example.code)>
        <cfif NOT Find (";", example.code)>
            <cfset example.code = "<cfoutput>" & Chr(10) & "##" & example.code & "##" & Chr(10) & "</cfoutput>">
        <cfelse>
            <cfset example.code = "<cfscript>" & Chr(10) & example.code & Chr(10) & "</cfscript>">
        </cfif>
    </cfif>
    <cfoutput>
        <div code-editor
    			title="#encodeForHTMLAttribute(data.name)# Example"
    		    id="code-#hash( example.code )#"
    		    mode="coldfusion"
    		    width="100%"
    		    height="350px"
                fullscreen="true"
    		    engine="#encodeForHTMLAttribute(url.engine)#"
    		    show-results="true" code="#htmlEditFormat( example.code )#"></div>
    </cfoutput>
</cfif>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
<cfoutput>
<!--- TryCF Editor Scripts --->
<!--- Ace Editor --->
<script src="#request.assetBaseURL#vendor/ace/src-min/ace.js" type="text/javascript" charset="utf-8"></script>
<!--- load ace language tools & utility --->
<script src="#request.assetBaseURL#vendor/ace/src-min/ext-language_tools.js" type="text/javascript" charset="utf-8"></script>
<script src="#request.assetBaseURL#vendor/ace/src-min/snippets/coldfusion.js"></script>
<script src="#request.assetBaseURL#vendor/plugins/split-pane/split-pane.js"></script>
<!--- Angular JS --->
<script src="#request.assetBaseURL#vendor/angular/angular.min.js"></script>
<!--- Directives --->
<script src="#request.assetBaseURL#code-editor.js"></script>
<script src="#request.assetBaseURL#trycf.js"></script>
<!--- // TryCF Editor Scripts --->
</cfoutput>
</body>
</html>
