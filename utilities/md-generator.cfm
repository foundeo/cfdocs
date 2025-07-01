<cfset dataPath = ExpandPath("../data") />
<cfset guidesPath = ExpandPath("../guides") />
<cfset docsPath = ExpandPath("../markdown") />
<cfset docsFunctionsPath = "#docsPath#/functions" />
<cfset docsTagsPath = "#docsPath#/tags" />
<cfset docsCategoriesPath = "#docsPath#/categories" />
<cfset docsGuidesPath = "#docsPath#/guides" />

<cfif directoryExists(docsFunctionsPath)><cfset directoryDelete(docsFunctionsPath, true) /></cfif>
<cfset directoryCreate(docsFunctionsPath) />

<cfif directoryExists(docsTagsPath)><cfset directoryDelete(docsTagsPath, true) /></cfif>
<cfset directoryCreate(docsTagsPath) />

<cfif directoryExists(docsCategoriesPath)><cfset directoryDelete(docsCategoriesPath, true) /></cfif>
<cfset directoryCreate(docsCategoriesPath) />

<cfif directoryExists(docsGuidesPath)><cfset directoryDelete(docsGuidesPath, true) /></cfif>
<cfset directoryCreate(docsGuidesPath) />

<cfset index = DeserializeJSON( FileRead("#dataPath#/en/index.json"))>

<cfset indexMD = "#docsPath#/index.md" />

<cfif fileExists(indexMD)>
    <cfset fileDelete(indexMD) />
</cfif>

<cfset fileAppend(indexMD, "## index", "UTF-8", true) />

<cfset fileAppend(indexMD, "", "UTF-8", true) />
<cfset fileAppend(indexMD, "#### categories", "UTF-8", true) />
<cfset fileAppend(indexMD, "", "UTF-8", true) />

<cfset categories = {} />
<cfloop array="#index.categories#" index="cat">
    <cfset catFile = "#dataPath#/en/#cat#.json" />
    <cfset catMD = "#docsCategoriesPath#/#cat#.md" />
    <cfif fileExists(catFile)>
        <cfset categories[cat] = {name="", items=[]}>
        <cfset catData = DeserializeJSON( FileRead(catFile))>
        <cfset categories[cat].name = catData.name>
        <cfset categories[cat].items = catData.related>

        <cfset fileAppend(indexMD, "- #catData.name# [#cat#](categories/#cat#.md)", "UTF-8", true) />
        <cfset fileAppend(catMD, "## #catData.name#", "UTF-8", true) />

        <cfset fileAppend(catMD, "", "UTF-8", true) />
        <cfloop array="#catData.related#" index="rel">
            <cfset relFile = "#dataPath#/en/#rel#.json" />
            <cfif fileExists(relFile)>
                <cfset relContent = FileRead(relFile)>
                <cfset relData = DeserializeJSON(relContent)>
                <cfset relMD = "#docsPath#/#LCase(relData.type)#s/#rel#.md" />
                <cfset fileAppend(catMD, "- #relData.name# [#rel#](#LCase(relData.type)#s/#rel#.md)", "UTF-8", true) />

                <cfif NOT FileExists(relMD)>
                    <cfset fileAppend(relMD, "## #relData.name#", "UTF-8", true) />

                    <cfif Len(Trim(relData.description)) GT 0>
                        <cfset fileAppend(relMD, "", "UTF-8", true) />
                        <cfset fileAppend(relMD, "#relData.description#", "UTF-8", true) />
                    </cfif>
                    <cfif StructKeyExists(relData, "syntax") AND Len(relData.syntax)>
                        <cfif relData.type IS "tag">
                            <cfset fileAppend(relMD, "", "UTF-8", true) />
                            <cfset fileAppend(relMD, "###### Syntax", "UTF-8", true) />
                            <cfset fileAppend(relMD, "", "UTF-8", true) />
                            <cfset fileAppend(relMD, "```html", "UTF-8", true) />
                            <cfset fileAppend(relMD, "#relData.syntax#", "UTF-8", true) />
                            <cfset fileAppend(relMD, "```", "UTF-8", true) />
                            <cfif StructKeyExists(relData, "script")>
                                <cfset relData.scriptTitle = "Script Syntax">
                            <cfelseif NOT ListFindNoCase("cfif,cfset,cfelse,cfelseif,cfloop,cfinclude,cfparam,cfswitch,cfcase,cftry,cfthrow,cfrethrow,cfcatch,cffinally,cfmodule,cfcomponent,cfinterface,cfproperty,cffunction,cfimport,cftransaction,cftrace,cflock,cfthread,cfsavecontent,cflocation,cfargument,cfapplication,cfscript", relData.name)>
                                <!--- add cfscript syntax --->
                                <cfset relData.script = replaceScript(name = relData.name, syntax = relData.syntax, mode = "other")>
                                <cfset relData.scriptTitle = "Script Syntax ACF11+, Lucee, Railo 4.2+">
                            </cfif>
                            <cfif StructKeyExists(relData, "script")>
                                <cfset fileAppend(relMD, "", "UTF-8", true) />
                                <cfset fileAppend(relMD, "###### #relData.scriptTitle#", "UTF-8", true) />
                                <cfset fileAppend(relMD, "", "UTF-8", true) />
                                <cfset fileAppend(relMD, "```javascript", "UTF-8", true) />
                                <cfset fileAppend(relMD, "#relData.script#", "UTF-8", true) />
                                <cfset fileAppend(relMD, "```", "UTF-8", true) />
                            </cfif>
                        <cfelseif relData.type IS "function">
                            <cfset fileAppend(relMD, "", "UTF-8", true) />
                            <cfset fileAppend(relMD, "```javascript", "UTF-8", true) />
                            <cfset fileAppend(relMD, "#relData.syntax#", "UTF-8", true) />
                            <cfset fileAppend(relMD, "```", "UTF-8", true) />

                            <cfif StructKeyExists(relData, "returns") AND Len(relData.returns)>
                                <cfset fileAppend(relMD, "", "UTF-8", true) />
                                <cfset fileAppend(relMD, "```javascript", "UTF-8", true) />
                                <cfset fileAppend(relMD, "returns #relData.returns#", "UTF-8", true) />
                                <cfset fileAppend(relMD, "```", "UTF-8", true) />
                            </cfif>

                            <cfif StructKeyExists(relData, "member")>
                                <cfset fileAppend(relMD, "###### Member Function Syntax", "UTF-8", true) />
                                <cfset fileAppend(relMD, "", "UTF-8", true) />
                                <cfset fileAppend(relMD, "```javascript", "UTF-8", true) />
                                <cfset fileAppend(relMD, "#relData.member#", "UTF-8", true) />
                                <cfset fileAppend(relMD, "```", "UTF-8", true) />
                                <cfif StructKeyExists(relData, "member_details") AND StructKeyExists(relData.member_details, "returns") && Len(relData.member_details.returns)>
                                    <cfset fileAppend(relMD, "", "UTF-8", true) />
                                    <cfset fileAppend(relMD, "```javascript", "UTF-8", true) />
                                    <cfset fileAppend(relMD, "returns #relData.member_details.returns#", "UTF-8", true) />
                                    <cfset fileAppend(relMD, "```", "UTF-8", true) />
                                </cfif>
                            </cfif>
                        </cfif>
                    </cfif>
                    <!--- <cfset fileAppend(relMD, "", "UTF-8", true) /> --->
                </cfif>
            </cfif>
        </cfloop>
    </cfif>
</cfloop>

<cfset guides = structNew('ordered') />

<cfset fileAppend(indexMD, "", "UTF-8", true) />
<cfset fileAppend(indexMD, "#### guides", "UTF-8", true) />
<cfset fileAppend(indexMD, "", "UTF-8", true) />

<cfloop array="#index.guides#" index="guide">
    <cfset guideFile = "#guidesPath#/en/#guide#.md" />
    <cfset guideMD = "#docsGuidesPath#/#guide#.md" />
    <cfif fileExists(guideFile)>
       <cfset fileObj = fileOpen("#guideFile#","read")>
        <cfset title = fileReadLine(fileObj)>
        <cfset fileClose(fileObj)>
        <cfif Left(title, 1) IS "##">
            <cfset title = Replace(title, "## ", "")>
        <cfelse>
            <cfset title = guide>
        </cfif>
        <cfset fileAppend(indexMD, "- #title# [#guide#](guides/#guide#.md)", "UTF-8", true) />
        <cfset fileCopy(guideFile, guideMD) />
        <cfset guides[guide] = title>
    </cfif>
</cfloop>

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
