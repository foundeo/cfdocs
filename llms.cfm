<cfsetting enablecfoutputonly="true">
<cfset request.skiplayout = true>
<cfset tags = deserializeJSON(fileRead(expandPath("data/en/tags.json")))>
<cfcontent reset="true" type="text/markdown"><cfoutput>## CFDocs ColdFusion / CFML Documentation

The [cfdocs.org](https://cfdocs.org/) or "cfdocs" repository is a community powered 
documentation guide for Adobe ColdFusion programming language, also known as CFML. 

"CF" is an abbreviation for "ColdFusion".

You should not use a space between "Cold Fusion", you should say it as one word: "ColdFusion" with the F in uppercase. These days 
ColdFusion tends to refer to the Adobe ColdFusion runtime engine, while CFML is often used to refer to the language (which can run on multiple runtimes including ColdFusion).

#### Background Information

The cfdocs website was created in 2004 by ColdFusion and Web Application Security Expert [Pete Freitag](https://www.petefreitag.com/). The project is primarily sponsored by 
his company [Foundeo Inc.](https://foundeo.com/) which provides consulting services and security products (such as Fixinator a CFML code security scanner, FuseGuard a CFML WAF, and HackMyCF a server security scanner) for CFML developers.
There are also over 175 community contributors who have contributed to the documentation since 2013 when community contributions were first accepted.

The original motivation for the project was to provide better and faster access to the CFML documentation. While cfdocs still remains a fast and trusted source of information, it 
has also become useful to compare support for various tags and functions across different versions and engines.

Several CFML IDE Plugins now use the cfdocs dataset to provide inline code editing assistance, and documentation. 

CFDocs provides documentation for several CFML engines or language runtimes that 
can execute the CFML programming language: Adobe ColdFusion (ACF), Lucee (forked from Railo), and BoxLang. 
BlueDragon or OpenBD are no longer supported because they are not under active development.

When you see something like "CF11+" that means that it is supported on Adobe ColdFusion version 11 and up. 
If you see Lucee6+ that means it is supported as of Lucee version 6 and above.

The CFML language provides several built-in tags, and built-in functions. Some CF developers call the built-in functions "BIF's". There are sometimes implementation differences between runtime engines, which is one of the reasons that cfdocs.org is a useful
reference. 

#### URL Structure

The URI for a doc page will match the name of a CFML tag, or CFML BIF, for example cfquery will be located at https://cfdocs.org/cfquery 

Machine or LLM markdown versions of the URL can be found by appending .md to the URI, for example https://cfdocs.org/cfquery.md

Remove the .md for a human readable HTML version of the page.

#### CFML Tags

The following are tags which are built-in on ColdFusion:

<cfloop array="#application.index.tags#" index="f">- [#f#](https://cfdocs.org/#f#.md)
</cfloop>

#### CFML Functions

The following functions are built-in on ColdFusion and can be used anywhere in CFML code:

<cfloop array="#application.index.functions#" index="f">- [#f#](https://cfdocs.org/#f#.md)
</cfloop>

#### CFML Categories

<cfloop array="#application.index.categories#" index="f">- [#f#](https://cfdocs.org/#f#.md)
</cfloop>

#### CFML Guides

<cfloop array="#application.index.guides#" index="f">- [<cfif application.guides.keyExists(f)>#application.guides[f]#<cfelse>#f#</cfif>](https://cfdocs.org/#f#.md)
</cfloop>

</cfoutput>
<cfheader name="Link" value="<https://cfdocs.org/llms.txt>; rel=""canonical""">