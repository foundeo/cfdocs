# Discouraged

##The following tags/functions are discouraged to use

`cfgrid`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfgrid/index.html

`cfprogressbar`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfprogressbar/index.html

`cfmenu`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfmenu/index.html

`cfusion_Decrypt`

The use of this function is discouraged. It is an internal function, call decrypt(string,key,"cfmx_compat","hex") instead.

`cftreeitem`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cftree/index.html

`cftable`

The use of tags that generate client side UI code is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cftable/index.html 

`cfmenuitem`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfmenu/index.html

`cflayoutarea`

The use of tags generating UI is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cfpod/index.html

`cflayout`

The use of tags generating UI is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cfpod/index.html

`xmlFormat`

Adobe recommends using encodeForXML instead of xmlFormat.

`setVariable`

This function is no longer required in well-formed CFML pages

`urlSessionFormat`

Putting session identifiers in the URL may lead to session hijacking.

`sizeOf`

This function is in an early state. Do not use in production!

`cfwindow`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfwindow/index.html

`array`

Lucee recommends to use the inline array notation.

`cfgridrow`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfgrid/index.html

`cftree`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cftree/index.html

`cfselect`

The use of tags generating UI is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cfpod/index.html

`cfgridcolumn`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfgrid/index.html

`cfpod`

The use of tags generating UI is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cfpod/index.html

`lsParseEuroCurrency`

Use LSParseCurrency instead

`cfusion_Encrypt`

The use of this function is discouraged. It is an internal function, call encrypt(string,key,"cfmx_compat","hex") instead.

`cfmap`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfmap/index.html

`iIf`

Use the ternary operator CF9+ instead because it does not evaluate.
Example ternary operator: `( (condition) ? valueIfTrue : valueIfFalse )`

`cfcol`

The use of tags that generate client side UI code is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cftable/index.html

`cfdiv`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfdiv/index.html

`urlEncodedFormat`

The continued use of this function is discouraged. It is recommended that you use EncodeForURL for all new applications.

`cfapplication`

Use Application.cfc instead of Application.cfm files. The Application component provides better organization and additional features. Note that if you are using Application.cfm it should contain a cfapplication tag.

`cfgridupdate`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfgrid/index.html

`preserveSingleQuotes`

The use of preserveSingleQuotes often (but not always) results in code that will be vulnerable to SQL Injection. Use the cfqueryparam tag instead, and you will not need to worry about single quotes.

`cftooltip`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cftooltip/index.html

`evaluate`

In almost all cases evaluate is unnecessary (use bracket notation instead). Use of evaluate can lead to performance and security issues.

`cfmapitem`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfmap/index.html