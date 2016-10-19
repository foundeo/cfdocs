<cfscript>
// request.cacheControlMaxAge = 60 * 20;  // cache for 20 min
page = {};
page['name'] = "Missing Examples";
page['node'] = "examples";
page['description'] = "Out of {total} tags and functions, {complete} have examples, {percent}% complete.";
</cfscript>

<cfinclude template="missing-layout.cfm">
