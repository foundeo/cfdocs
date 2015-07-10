<cfset data = {related=[], name="Missing Examples", type="listing", description=""}>


<cfset hasExample = 0>
<cfloop array="#application.index.functions#" index="i">
    <cfset d = DeserializeJSON( FileRead(ExpandPath("../data/en/#LCase(i)#.json")))>
    <cfif NOT StructKeyExists(d, "examples") OR NOT IsArray(d.examples) OR NOT ArrayLen(d.examples)>
        <cfset arrayAppend(data.related, i)>
    <cfelse>
        <cfset hasExample = hasExample+1>
    </cfif>
</cfloop>
<cfloop array="#application.index.tags#" index="i">
    <cfset d = DeserializeJSON( FileRead(ExpandPath("../data/en/#LCase(i)#.json")))>
    <cfif NOT StructKeyExists(d, "examples") OR NOT IsArray(d.examples) OR NOT ArrayLen(d.examples)>
        <cfset arrayAppend(data.related, i)>
    <cfelse>
        <cfset hasExample = hasExample+1>
    </cfif>
</cfloop>
<cfset total = ArrayLen(application.index.tags) + ArrayLen(application.index.functions)>
<cfset percentExamples = NumberFormat ( (hasExample/total) * 100 , "_.__")>
<cfset data.description = "Out of #total# tags and functions, #hasExample# have examples, #percentExamples#%. Those that do not have examples are listed below.">
<cfset url.name = "todo">
<cfinclude template="../views/doc.cfm">
