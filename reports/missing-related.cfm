<cfscript>
// request.cacheControlMaxAge = 60 * 20;  // cache for 20 min
page = {};
page['name'] = "Missing Related links";
page['node'] = "related";
page['description'] = "Out of {total} tags and functions, {complete} have related links, {percent}% complete.";
</cfscript>

<cfinclude template="missing-layout.cfm">
