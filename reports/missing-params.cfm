<cfscript>
// request.cacheControlMaxAge = 60 * 20;  // cache for 20 min
page = {};
page['name'] = "Missing Params";
page['node'] = "params";
page['description'] = "Out of {total} tags and functions, {complete} have params, {percent}% complete.";
</cfscript>

<cfinclude template="missing-layout.cfm">
