<cfscript>
// request.cacheControlMaxAge = 60 * 20;  // cache for 20 min
page = {};
page['name'] = "Missing Description";
page['node'] = "description";
page['description'] = "Out of {total} tags and functions, {complete} have descriptions, {percent}% complete.";
</cfscript>

<cfinclude template="missing-layout.cfm">
