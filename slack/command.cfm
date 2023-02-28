<cftry>
    <cfparam name="text" default="">
    <cfset text = lcase(reReplace(text, "[^a-zA-Z0-9-]", "", "ALL"))>
    <cfset text = trim(text)>
    <cfset is_function = false>
    <cfset is_tag = false>
    <cfset response = { "response_type": "in_channel", "text": "Sorry I didn't find a matching doc." }>
    <cfif arrayFind(application.index.functions, text)>
        <cfset is_function = true>
    <cfelseif arrayFind(application.index.tags, text)>
        <cfset is_tag = true>
    <cfelseif arrayFind(application.index.tags, "cf" & text)>
        <cfset is_tag = true>
        <cfset text = "cf" & text>
    <cfelseif arrayFind(application.index.guides, text)>
        <!--- todo --->
    <cfelseif arrayFind(application.index.categories, text)>
        <!--- todo --->
    </cfif>
    <cfif is_function OR is_tag>
        <cfset file_path = application.data_path & "en/#text#.json">
        <cfif FileExists(file_path)>
            <cfset data = DeserializeJSON( FileRead(file_path))>
            <cfset response = { "response_type": "in_channel", "blocks": [] }>
            <cfif data.keyExists("name") AND len(data.name)>
                <cfset arrayAppend(response.blocks, buildBlock(type="header", text=data.name, text_type="plain_text"))>
            </cfif>
            <cfif data.keyExists("description") AND len(data.description)>
                <cfset arrayAppend(response.blocks, buildBlock(type="section", text=data.description))>
            </cfif>
            <cfif data.keyExists("syntax") AND len(data.syntax)>
                <cfset arrayAppend(response.blocks, buildBlock(type="section", text="`" & data.syntax & "`"))>
            </cfif>
            <cfif data.keyExists("params") AND isArray(data.params) AND arrayLen(data.params) GT 0>
                <cfif is_tag>
                    <cfset arrayAppend(response.blocks, buildBlock(type="header", text="Attributes", text_type="plain_text"))>
                <cfelse>
                    <cfset arrayAppend(response.blocks, buildBlock(type="header", text="Arguments", text_type="plain_text"))>
                </cfif>
                <cfloop array="#data.params#" index="param">
                    <cfset arrayAppend(response.blocks, buildBlock(type="divider"))>
                    <cfset type_line = "">
                    <cfif param.keyExists("name")>
                        <cfset type_line &= "*`#param.name#`* ">
                    </cfif>
                    <cfif param.keyExists("required") AND isBoolean(param.required) AND param.required>
                        <cfset type_line &= "*required* ">
                    </cfif>
                    <cfif param.keyExists("type") AND len(param.type)>
                        <cfset type_line &= "_#param.type#_ ">
                    </cfif>
                    <cfif param.keyExists("default") AND len(param.default)>
                        <cfset type_line &= "default: _#param.default#_">
                    </cfif>
                    <cfset arrayAppend(response.blocks, buildBlock(type="section", text=type_line))>
                    <cfif param.keyExists("description") AND len(param.description)>
                        <cfset arrayAppend(response.blocks, buildBlock(type="section", text=param.description))>
                    </cfif>
                </cfloop>
                <cfset arrayAppend(response.blocks, buildBlock(type="divider"))>
                <cfset arrayAppend(response.blocks, {"type":"context", "elements":[{"type":"mrkdwn", "text":"Data via <cfdocs.org>, built with :heart: by <foundeo.com> and the awesome CFML community"}]})>
                <cfset arrayAppend(response.blocks, 
                    {
                        "type": "section",
                        "text": {
                            "type": "plain_text",
                            "text": " "
                        },
                        "accessory": {
                            "type": "button",
                            "text": {
                                "type": "plain_text",
                                "text": "View Docs"
                            },
                            "value": "doc_link_btn",
                            "url": "https://cfdocs.org/#text#",
                            "action_id": "button-action"
                        }
                    }
                )>
            </cfif>
        </cfif>


    </cfif>
    <cfcontent reset="true" type="application/json"><cfoutput>#serializeJSON(response)#</cfoutput><cfabort>
    <cfcatch>
        <cfcontent reset="true" type="application/json"><cfoutput>{"text": "Sorry, I am getting an error: #jsStringFormat(cfcatch.message)#"}</cfoutput>
    </cfcatch>
</cftry>
<cffunction name="buildBlock" returntype="struct">
    <cfargument name="type" default="section">
    <cfargument name="text" default="">
    <cfargument name="text_type" default="mrkdwn">
    <cfset var block = {"type":arguments.type, "text":{"type":arguments.text_type, "text":arguments.text}}>
    <cfif arguments.type IS "divider">
        <cfreturn {"type": "divider"}>
    </cfif>
    <cfreturn block>
</cffunction>