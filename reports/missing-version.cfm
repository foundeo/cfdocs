<cfset request.cacheControlMaxAge = 60 * 20><!--- cache for 20 min ---> 
<cfset data = {related=[], name="Missing Version Number", type="listing", description=""}>


<cfset hasVersion = 0>
<cfloop array="#application.index.functions#" index="i">
    <cfset filePath = ExpandPath("../data/en/#LCase(i)#.json")>
    <cfif FileExists(filePath)>
        <cfset d = DeserializeJSON( FileRead(filePath) )>
        <cfif structKeyExists(d, "engines") AND structKeyExists(d.engines, "coldfusion")>
            <cfif NOT structKeyExists(d.engines.coldfusion, "minimum_version") OR NOT Len(d.engines.coldfusion.minimum_version)>
                <cfset arrayAppend(data.related, i)>
            </cfif>
        <cfelse>
            <cfset hasVersion = hasVersion+1>
        </cfif>
    </cfif>
</cfloop>
<cfloop array="#application.index.tags#" index="i">
    <cfset filePath = ExpandPath("../data/en/#LCase(i)#.json")>
    <cfif fileExists(filePath)>
        <cfset d = DeserializeJSON( FileRead(filePath))>
        <cfif structKeyExists(d, "engines") AND structKeyExists(d.engines, "coldfusion")>
            <cfif NOT structKeyExists(d.engines.coldfusion, "minimum_version") OR NOT Len(d.engines.coldfusion.minimum_version)>
                <cfset arrayAppend(data.related, i)>
            </cfif>
        <cfelse>
            <cfset hasVersion = hasVersion+1>
        </cfif>
    </cfif>
</cfloop>
<cfset total = ArrayLen(application.index.tags) + ArrayLen(application.index.functions)>
<cfset percentHas = NumberFormat ( (hasVersion/total) * 100 , "_.__")>
<cfset data.description = "Out of #total# tags and functions, #hasVersion# have minimum_version set, #percentHas#%. Here the #ArrayLen(data.related)# tags and functions that do not specify a minimum version:">
<cfset request.gitFilePath = "/edit/master/reports/missing-examples.cfm">
<cfinclude template="../views/doc.cfm">
