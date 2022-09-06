<cfparam name="url.name" default="rereplace">
<cfparam name="url.index" default="1" type="numeric">
<cfparam name="url.engine" default="acf2021" type="variablename">
<cfsilent>
    <cfset url.name = ReReplace(url.name, "[^a-zA-Z0-9_-]", "", "ALL")>
    <cfif FileExists(ExpandPath("./data/en/#url.name#.json"))>
        <cfset data = DeserializeJSON( FileRead(ExpandPath("./data/en/#url.name#.json")))>
    <cfelse>
        <cfset data={title="404"}>
    </cfif>
    <cfif structKeyExists(data.engines, "lucee") AND NOT structKeyExists(data.engines, "coldfusion")>
        <cfset url.engine = "lucee5">
    </cfif>
    <cfset request.skipLayout=true>
</cfsilent>
<!doctype html>
<html lang="en" ng-app="trycf">
<head>
    <cfoutput>
        <link href="https://netdna.bootstrapcdn.com/bootswatch/3.4.1/flatly/bootstrap.min.css" rel="stylesheet">
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha512-oBTprMeNEKCnqfuqKd6sbvFzmFQtlXS3e0C/RGFV0hD6QzhHV+ODfaQbAlmY6/q0ubbwlAM/nCJjkrgA3waLzg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<cfoutput>
<!--- TryCF Editor Scripts --->
<!--- Ace Editor --->
<script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.13/ace.min.js" integrity="sha512-jB1NOQkR0yLnWmEZQTUW4REqirbskxoYNltZE+8KzXqs9gHG5mrxLR5w3TwUn6AylXkhZZWTPP894xcX/X8Kbg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!--- load ace language tools & utility --->
<script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.13/ext-language_tools.min.js" integrity="sha512-S7Whi8oQAQu/MK6AhBWufIJIyOvqORj+/1YDM9MaHeRalsZjzyYS7Usk4fsh+6J77PUhuk5v/BxaMDXRdWd1KA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.13/mode-coldfusion.min.js" integrity="sha512-tkxN9jpt+21tuNaifnGDVf9jWoQEc/9w68B/ZMBAXu22tLZnKTgjXZrjgpQ5a0p86o74DKjGSdVC47kNHy3qgQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="#request.assetBaseURL#vendor/plugins/split-pane/split-pane.js"></script>
<!--- Angular JS --->
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.2/angular.min.js" integrity="sha512-7oYXeK0OxTFxndh0erL8FsjGvrl2VMDor6fVqzlLGfwOQQqTbYsGPv4ZZ15QHfSk80doyaM0ZJdvkyDcVO7KFA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!--- Directives --->
<script src="#request.assetBaseURL#code-editor.js"></script>
<script src="#request.assetBaseURL#trycf.js"></script>
<!--- // TryCF Editor Scripts --->
</cfoutput>
</body>
</html>
