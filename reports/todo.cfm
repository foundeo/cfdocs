<cfset funcList = getFunctionList()>

<cfset data = {related=[], name="Missing Functions", type="listing", description="These functions need to be implemented."}>
<cfloop list="#StructKeyList(funcList)#" index="f">
    <cfif NOT ArrayFindNoCase(application.index.functions, f)>
        <cfset ArrayAppend(data.related, f)>
    </cfif>
</cfloop>
<cfset url.name = "todo">
<cfinclude template="../views/doc.cfm">
