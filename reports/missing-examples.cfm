<cfset data = {related=[], name="Missing Examples", type="listing", description=""}>


<cfset hasExample = 0>
<cfloop array="#application.index.functions#" index="i">
    <cfset d = DeserializeJSON( FileRead(ExpandPath("../data/en/#LCase(i)#.json")))>
    <cfif NOT StructKeyExists(d, "examples") OR NOT IsArray(d.examples) OR NOT ArrayLen(d.examples)>
        <cfif StructKeyExists(d, "params") AND ArrayLen(d.params) GT 1>
            <cfif NOT StructKeyExists(d.params[1], "description") OR NOT Len(d.params[1].description) OR d.params[1].description contains "No Help">
                <cfset arrayAppend(data.related, i)>
            </cfif>
        </cfif>
    <cfelse>
        <cfset hasExample = hasExample+1>
    </cfif>
</cfloop>
<cfloop array="#application.index.tags#" index="i">
    <cfset d = DeserializeJSON( FileRead(ExpandPath("../data/en/#LCase(i)#.json")))>
    <cfif NOT StructKeyExists(d, "examples") OR NOT IsArray(d.examples) OR NOT ArrayLen(d.examples)>
        <cfif StructKeyExists(d, "params") AND ArrayLen(d.params) GT 1>
            <cfset arrayAppend(data.related, i)>
        </cfif>
    <cfelse>
        <cfset hasExample = hasExample+1>
    </cfif>
</cfloop>
<cfset total = ArrayLen(application.index.tags) + ArrayLen(application.index.functions)>
<cfset percentExamples = NumberFormat ( (hasExample/total) * 100 , "_.__")>
<cfset data.description = "Out of #total# tags and functions, #hasExample# have examples, #percentExamples#%. Here are #ArrayLen(data.related)# good ones to start with.">
<cfset url.name = "todo">
<cfinclude template="../views/doc.cfm">
