<cfset dataPath = ExpandPath("../data") />
<cfset guidesPath = ExpandPath("../guides") />
<cfset docsPath = ExpandPath("../docs") />
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
    <cfset catMD = "#docsCategoriesPath#/#LCase(cat)#.md" />
    <cfif fileExists(catFile)>
        <cfset categories[cat] = {name="", items=[]}>
        <cfset catData = DeserializeJSON( FileRead(catFile))>
        <cfset categories[cat].name = catData.name>
        <cfset categories[cat].items = catData.related>

        <cfset fileAppend(indexMD, "- #catData.name# [#cat#](categories/#LCase(cat)#.md)", "UTF-8", true) />
        <cfset fileAppend(catMD, "## #catData.name#", "UTF-8", true) />

        <cfset fileAppend(catMD, "", "UTF-8", true) />
        <cfloop array="#catData.related#" index="rel">
            <cfset relFile = "#dataPath#/en/#rel#.json" />
            <cfif fileExists(relFile)>
                <cfset relContent = FileRead(relFile)>
                <cfset relData = DeserializeJSON(relContent)>
                <cfset relMD = "#docsPath#/#LCase(relData.type)#s/#rel#.md" />
                <cfset fileAppend(catMD, "- #relData.name# [#rel#](../#LCase(relData.type)#s/#LCase(rel)#.md)", "UTF-8", true) />

                <cfif NOT FileExists(relMD)>
                    <cfset fileAppend(relMD, "## #relData.name#", "UTF-8", true) />

                    <cfif Len(Trim(relData.description)) GT 0>
                        <cfset fileAppend(relMD, "", "UTF-8", true) />
                        <cfset fileAppend(relMD, "#relData.description#", "UTF-8", true) />
                    </cfif>
                    <cfif StructKeyExists(relData, "syntax") AND Len(relData.syntax)>
                        <cfif CompareNOCase(relData.type,"tag") EQ 0>
                            <cfset fileAppend(relMD, "", "UTF-8", true) />
                            <cfset fileAppend(relMD, "###### Syntax", "UTF-8", true) />
                            <cfset fileAppend(relMD, "", "UTF-8", true) />
                            <cfset fileAppend(relMD, "```html", "UTF-8", true) />
                            <cfset fileAppend(relMD, "#Trim(relData.syntax)#", "UTF-8", true) />
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
                                <cfset fileAppend(relMD, "###### #Trim(relData.scriptTitle)#", "UTF-8", true) />
                                <cfset fileAppend(relMD, "", "UTF-8", true) />
                                <cfset fileAppend(relMD, "```javascript", "UTF-8", true) />
                                <cfset fileAppend(relMD, "#relData.script#", "UTF-8", true) />
                                <cfset fileAppend(relMD, "```", "UTF-8", true) />
                            </cfif>
                        <cfelse>
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
                                <cfset fileAppend(relMD, "", "UTF-8", true) />
                                <cfset fileAppend(relMD, "#### Member Function Syntax", "UTF-8", true) />
                                <cfset fileAppend(relMD, "", "UTF-8", true) />
                                <cfset fileAppend(relMD, "```javascript", "UTF-8", true) />
                                <cfset fileAppend(relMD, "#Trim(relData.member)#", "UTF-8", true) />
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

                     <cfif StructKeyExists(relData, "params") AND ArrayLen(relData.params)>
                        
                        <cfif CompareNOCase(relData.type,"tag") EQ 0>
                            <cfset fileAppend(relMD, "", "UTF-8", true) />
                             <cfset fileAppend(relMD, "#### Attribute Reference", "UTF-8", true) />
                        <cfelseif CompareNOCase(relData.type,"function") EQ 0>
                            <cfset fileAppend(relMD, "", "UTF-8", true) />
                            <cfset fileAppend(relMD, "#### Argument Reference", "UTF-8", true) />
                        <cfelseif Len(Trim(relData.name)) GT 0>
                            <cfset fileAppend(relMD, "", "UTF-8", true) />
                            <cfset fileAppend(relMD, "#### #Trim(relData.name)#", "UTF-8", true) />
                        </cfif>

                        <cfset fileAppend(relMD, "", "UTF-8", true) />
                        <!--- <cfset fileAppend(relMD, "###### #Trim(p.name)#", "UTF-8", true) />
                        <cfset fileAppend(relMD, "", "UTF-8", true) /> --->
                        <cfset hasCallbackParms = false />
                        <cfset hasValues = false />

                        <cfloop array="#relData.params#" index="p">
                            <cfif structKeyExists(p, "callback_params") AND isArray(p.callback_params) and not arrayIsEmpty(p.callback_params)>
                                <cfset hasCallbackParms = true />
                            </cfif>
                        </cfloop>

                        <cfif structKeyExists(p, "values") AND isArray(p.values) AND arrayLen(p.values)>
                            <cfif uCase(arrayToList(p.values)) IS NOT "YES,NO">
                                <cfloop array="#p.values#" index="i">
                                    <cfset hasValues = true />
                                </cfloop>
                            </cfif>
                        </cfif>
                        
                        <cfif hasValues>
                            <cfset fileAppend(relMD, "| Name | Type | Required | Default | Description | Values |", "UTF-8", true) />
                            <cfset fileAppend(relMD, "| --- | --- | --- | --- | --- | --- |", "UTF-8", true) />
                        <cfelse>
                            <cfset fileAppend(relMD, "| Name | Type | Required | Default | Description |", "UTF-8", true) />
                            <cfset fileAppend(relMD, "| --- | --- | --- | --- | --- |", "UTF-8", true) />
                        </cfif>
                        
                        <cfloop array="#relData.params#" index="p">

                            <cfset tempName = Trim(p.name) />
                            <cfset tempType = "" />
                            <cfset tempRequired = "No" />
                            <cfset tempDefault = "" />
                            <cfset tempDescription = "" />
                            <cfset tempValues = "" />
                            <cfset tempCallbackParams = "" />

                            <cfif structKeyExists(p, "type") and len(trim(p.type))>
                                <cfset tempType = p.type />
                            </cfif>

                            <cfif isBoolean(p.required) AND p.required>
                                <cfset tempRequired = "Yes" />
                            </cfif>

                            <cfif structKeyExists(p, "default") and len( trim( p.default ) )>
                                <cfset tempDefault = Trim(p.default) />
                            </cfif>

                            <cfif Len(Trim(p.description)) GT 0>
                                <cfset tempDescription = Trim(p.description) />
                            </cfif>

                            <cfif structKeyExists(p, "values") AND isArray(p.values) AND arrayLen(p.values)>
                                <cfif uCase(arrayToList(p.values)) IS NOT "YES,NO">
                                    <cfset tempValues = "" />
                                    <cfloop array="#p.values#" index="i">
                                         <cfset tempValues = ListAppend(relMD, "#Trim(i)#", "|") />
                                    </cfloop>
                                </cfif>
                            </cfif>

                            <cfif hasValues>
                                <cfset fileAppend(relMD, "| #tempName# | #tempType# | #tempRequired# | #tempDefault# | #tempDescription# | #tempValues# |", "UTF-8", true) />
                            <cfelse>
                                <cfset fileAppend(relMD, "| #tempName# | #tempType# | #tempRequired# | #tempDefault# | #tempDescription# |", "UTF-8", true) />
                            </cfif>
                            
                            
                        </cfloop>

                        <cfif hasCallbackParms>
                            <cfloop array="#relData.params#" index="p">

                                <cfif structKeyExists(p, "callback_params") AND isArray(p.callback_params) and not arrayIsEmpty(p.callback_params)>
                                        
                                    <cfset fileAppend(relMD, "", "UTF-8", true) />
                                    <cfset fileAppend(relMD, "###### #Trim(p.name)# ( callback arguments )", "UTF-8", true) />

                                    <cfset fileAppend(relMD, "| Name | Type | Required | Description |", "UTF-8", true) />
                                    <cfset fileAppend(relMD, "| --- | --- | --- | --- |", "UTF-8", true) />

                                
                                        
                                    <cfloop array="#p.callback_params#" index="i">
                                        <cfset tempCallbackName = "#i.name#" />
                                        <cfset tempCallbackRequired = "Yes" />
                                        <cfset tempCallbackType = "" />
                                        <cfset tempCallbackDescription = "" />
                                        <cfif structKeyExists(i, 'required') AND Len(Trim(i.required))>
                                            <cfset tempCallbackRequired = "No" />
                                        </cfif>
                                        <cfif structKeyExists(i, 'type') AND Len(Trim(i.type))>
                                            <cfset tempCallbackType = "#Trim(i.type)#">
                                        </cfif>
                                        <cfif structKeyExists(i, 'description') AND Len(Trim(i.description))>
                                            <cfset tempCallbackDescription = "#Trim(i.description)#">
                                        </cfif>
                                        <cfset fileAppend(relMD, "| #tempCallbackName# | #tempCallbackType# | #tempCallbackRequired# | #tempCallbackDescription# |", "UTF-8", true) />
                                    </cfloop>
                                </cfif>

                            </cfloop>
                        </cfif>
                    </cfif>

                    <cfif StructKeyExists(relData, "examples") AND IsArray(relData.examples) AND ArrayLen(relData.examples)>
                        <cfset request.hasExamples = true>
                        <cfset example_index = 0>
                        <cfloop array="#relData.examples#" index="ex">
                            <cfset example_index = example_index + 1>
                            <cfset fileAppend(relMD, "", "UTF-8", true) />
                            <cfset fileAppend(relMD, "#### #Trim(ex.title)#", "UTF-8", true) />

                            <cfif Len(Trim(ex.description)) GT 0>
                                <cfset fileAppend(relMD, "", "UTF-8", true) />
                                <cfset fileAppend(relMD, "#Trim(ex.description)#", "UTF-8", true) />
                            </cfif>

                            <cfset fileAppend(relMD, "", "UTF-8", true) />
                            <cfset fileAppend(relMD, "```#((CompareNOCase(relData.type,"tag") EQ 0) ? 'html' : 'javascript')#", "UTF-8", true) />
                            <cfset fileAppend(relMD, "#Trim(ex.code)#", "UTF-8", true) />
                            <cfset fileAppend(relMD, "```", "UTF-8", true) />
                            <cfif StructKeyExists(ex, "result") AND Len(Trim(ex.result))>
                                <cfset fileAppend(relMD, "", "UTF-8", true) />
                                <cfset fileAppend(relMD, "###### Expected Result: #Trim(ex.result)#", "UTF-8", true) />
                            </cfif>
                        </cfloop>
                    </cfif>
                    
                    <!--- 
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

                       

                        <cfif StructKeyExists(data, "engines")>
                            <cfset compatibilityData = "">
                            <cfloop index="i" list="#StructKeyList(data.engines)#">
                                <cfif (StructKeyExists(data.engines[i], "notes") AND Len(data.engines[i].notes)) OR ( StructKeyExists(data.engines[i], "deprecated") AND Len(data.engines[i].deprecated) )>
                                    <cfsavecontent variable="compatibilityData">
                                        #compatibilityData#
                                        <div class="row">
                                            <div class="col-sm-2 text-right">
                                                <h4>
                                                    <cfif i IS "coldfusion">ColdFusion<cfelseif i IS "railo">Railo<cfelseif i IS "openbd">OpenBD<cfelseif i IS "lucee">Lucee<cfelseif i IS "boxlang">BoxLang</cfif>:
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
                    </div> --->
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
    <cfset guideMD = "#docsGuidesPath#/#LCase(guide)#.md" />
    <cfif fileExists(guideFile)>
       <cfset fileObj = fileOpen("#guideFile#","read")>
        <cfset title = fileReadLine(fileObj)>
        <cfset fileClose(fileObj)>
        <cfif Left(title, 1) IS "##">
            <cfset title = Replace(title, "## ", "")>
        <cfelse>
            <cfset title = guide>
        </cfif>
        <cfset fileAppend(indexMD, "- #title# [#guide#](../guides/#LCase(guide)#.md)", "UTF-8", true) />
        <cfset fileCopy(guideFile, guideMD) />
        <cfset guides[guide] = title>
    </cfif>
</cfloop>

<!--- // TryCF Editor Scripts --->
<cffunction name="replaceScript" output="false">
	<cfargument name="name" type="string" required="true">
	<cfargument name="mode" type="string" required="true">
	<cfargument name="syntax" type="string">

	<cfset var result = "">

	<cfif CompareNOCase(ARGUMENTS.mode,"cf") EQ 0>
		<cfset result = ReplaceNoCase(ARGUMENTS.name, "cf", "") & ";">
	<cfelseif CompareNOCase(ARGUMENTS.mode,"other") EQ 0>
		<!--- add cfscript syntax --->
		<cfset result = ReReplace(ARGUMENTS.syntax, "[<\r\n]", "", "ALL")>
		<cfset result = ReplaceNoCase(result, ARGUMENTS.name, ARGUMENTS.name & "(")>
		<cfset result = Replace(result, "( ", "(")>
		<!--- replace double quote followed by a space with a ,[space] --->
		<cfset result = ReReplace(result, """ ", """, ", "ALL")>
		<cfset result = ReReplace(result, ",? ?>", ");")>
	</cfif>
	<cfreturn result>
</cffunction>
