<cfset request.cacheControlMaxAge = 60 * 20><!--- cache for 20 min ---> 
<cfset data = {related=[], name="Missing Examples", type="listing", description=""}>


<cfset hasExample = 0>
<cfloop array="#application.index.functions#" index="i">
    <cfset filePath = ExpandPath("../data/en/#LCase(i)#.json")>
    <cfif FileExists(filePath)>
        <cfset d = DeserializeJSON( FileRead(filePath) )>
        <cfif NOT StructKeyExists(d, "examples") OR NOT IsArray(d.examples) OR NOT ArrayLen(d.examples)>
            <cfif StructKeyExists(d, "params") AND ArrayLen(d.params) GT 1>
                <cfif NOT StructKeyExists(d.params[1], "description") OR NOT Len(d.params[1].description) OR d.params[1].description contains "No Help">
                    <cfset arrayAppend(data.related, i)>
                </cfif>
            </cfif>
        <cfelse>
            <cfset hasExample = hasExample+1>
        </cfif>
    </cfif>
</cfloop>
<cfloop array="#application.index.tags#" index="i">
    <cfset filePath = ExpandPath("../data/en/#LCase(i)#.json")>
    <cfif fileExists(filePath)>
        <cfset d = DeserializeJSON( FileRead(filePath))>
        <cfif NOT StructKeyExists(d, "examples") OR NOT IsArray(d.examples) OR NOT ArrayLen(d.examples)>
            <cfif StructKeyExists(d, "params") AND ArrayLen(d.params) GT 1>
                <cfset arrayAppend(data.related, i)>
            </cfif>
        <cfelse>
            <cfset hasExample = hasExample+1>
        </cfif>
    </cfif>
</cfloop>
<cfset total = ArrayLen(application.index.tags) + ArrayLen(application.index.functions)>
<cfset percentExamples = NumberFormat ( (hasExample/total) * 100 , "_.__")>
<cfset data.description = "Out of #total# tags and functions, #hasExample# have examples, #percentExamples#%. Here are #ArrayLen(data.related)# good ones to start with.">
<cfset url.name = "missing-examples">
<cfset request.gitFilePath = "/edit/master/reports/" & url.name & ".cfm">
<cfinclude template="../views/doc.cfm">
