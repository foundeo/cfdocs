<cfset funcList = getFunctionList()>

<cfset data = {related=[], name="Missing Functions", type="listing"}>
<cfloop list="#StructKeyList(funcList)#" index="f">
    <cfif NOT ArrayFindNoCase(application.index.functions, f)>
        <cfset ArrayAppend(data.related, f)>
    </cfif>
</cfloop>
<cfset percentLeft = NumberFormat ( (arrayLen(data.related)/arrayLen(application.index.functions)) * 100 , "_.__")>
<cfset data.description = "We have docs for #arrayLen(application.index.functions)# functions, but we still need to add documentation for the following #arrayLen(data.related)# functions (#percentLeft#%).">
<cfset url.name = "todo">
<cfinclude template="../views/doc.cfm">
