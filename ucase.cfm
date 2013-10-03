<!--- handles requests which contain ucase --->
<cfparam name="url.uri" default="">
<cfheader name="Location" value="http://cfdocs.org/#ReReplace(LCase(url.uri), "[^a-z0-9_.-]", "", "ALL")#">
<cfheader statuscode="301" statustext="Moved Permanently">