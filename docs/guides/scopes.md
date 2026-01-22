# Scopes

Scopes are regions of a program or application in which a variable exists. Variables with the same name in different scopes are different variables.

## Variables Scope

see [Variables Scope](/variables-scope)

## CGI Scope

see [CGI Scope](/cgi-scope)

## Application Scope

see Application Scope

## Form Scope

If you submitted a HTML form to the server, all named form fields will available in form scope. Let's say we have

    <input type="text" name="username" />

then you can access it via

    <cfset username = Form.username>

## URL Scope

Every URL param can be accessed via the URL Scope like this:

    /?view=userlist&page=2&start=u&group=admin&mode=full

According to this URL given output could be the following:

    <cfoutput>
        You're looking at #URL.view#'s page #URL.page# in #URL.mode# mode
        <cfif structKeyExists(URL,'start')>
            Start with letter: #URL.start#
        </cfif>
    </cfoutput>

## Server Scope

See [Server Scope](/server-scope)
