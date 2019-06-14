<cfscript>
// request.cacheControlMaxAge = 60 * 20;  // cache for 20 min
page = {};
page['name'] = "Missing Version Number";
page['node'] = "version";
page['description'] = "Out of {total} tags and functions, {complete} have version numbers, {percent}% complete.";
</cfscript>

<cfinclude template="missing-layout.cfm">
