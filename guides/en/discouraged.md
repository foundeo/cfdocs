# Discouraged

## The following tags/functions are discouraged to use

`array`

Lucee recommends to use the inline array notation.

`cfapplication`

Use Application.cfc instead of Application.cfm files. The Application component provides better organization and additional features. Note that if you are using Application.cfm it should contain a cfapplication tag.

`cfcol`

The use of tags that generate client side UI code is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cftable/index.html

`cfdiv`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfdiv/index.html

`cfgrid`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfgrid/index.html

`cfgridcolumn`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfgrid/index.html

`cfgridrow`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfgrid/index.html

`cfgridupdate`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfgrid/index.html

`cflayout`

The use of tags generating UI is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cfpod/index.html

`cflayoutarea`

The use of tags generating UI is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cfpod/index.html

`cfmap`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfmap/index.html

`cfmapitem`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfmap/index.html

`cfmenu`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfmenu/index.html

`cfmenuitem`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfmenu/index.html

`cfpod`

The use of tags generating UI is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cfpod/index.html

`cfprogressbar`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfprogressbar/index.html

`cfselect`

The use of tags generating UI is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cfpod/index.html

`cftable`

The use of tags that generate client side UI code is generally discouraged by the CFML community. See: http://static.raymondcamden.com/cfuitherightway/cftable/index.html 

`cftooltip`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cftooltip/index.html

`cftree`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cftree/index.html

`cftreeitem`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cftree/index.html

`cfusion_Decrypt`

The use of this function is discouraged. It is an internal function, call decrypt(string,key,"cfmx_compat","hex") instead.

`cfusion_Encrypt`

The use of this function is discouraged. It is an internal function, call encrypt(string,key,"cfmx_compat","hex") instead.

`cfwindow`

The use of tags generating UI is generally discouraged by the CFML community. See: https://static.raymondcamden.com/cfuitherightway/cfwindow/index.html

`evaluate`

In almost all cases evaluate is unnecessary (use bracket notation instead). Use of evaluate can lead to performance and security issues.

`iIf`

Use the ternary operator CF9+ instead because it does not evaluate.
Example ternary operator: `( (condition) ? valueIfTrue : valueIfFalse )`

`lsParseEuroCurrency`

Use LSParseCurrency instead

`preserveSingleQuotes`

The use of preserveSingleQuotes often (but not always) results in code that will be vulnerable to SQL Injection. Use the cfqueryparam tag instead, and you will not need to worry about single quotes.

`setVariable`

This function is no longer required in well-formed CFML pages

`sizeOf`

This function is in an early state. Do not use in production!

`urlEncodedFormat`

The continued use of this function is discouraged. It is recommended that you use EncodeForURL for all new applications.

`urlSessionFormat`

Putting session identifiers in the URL may lead to session hijacking.

`xmlFormat`

Adobe recommends using encodeForXML instead of xmlFormat.