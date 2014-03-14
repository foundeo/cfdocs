# CFDocs

This CFML documentation reference features are:
* Hosted on Amazon CloudFront CDN for fast responses around the globe. Sponsored by [Foundeo Inc.](http://foundeo.com).
* Easy urls like: cfdocs.org/hash just hit /tag-name or /function-name.
* Publicly maintained on GitHub [GitHub](http://github.com/foundeo/cfdocs)

## How Reference Data is Structured

All of the tags and function documentation is defined in json files under data/en/functionname.json for example https://github.com/foundeo/cfdocs/blob/master/data/en/sessioninvalidate.json so if you are interested in helping you can just copy a tag or a function and then write up some documentation (please don't copy the adobe documentation word for word). The documentation doesn't need to be super wordy, the site is meant to be a quick reference (attribute names / function arguments and one two sentence descriptions).

## Running CFDocs Locally for Dev or Pleasure

The cfdocs.org site can run locally pretty easily, I run it on a dedicated virtual host (eg cfdocs.dev) and it doesn't need anything except CF to run (no database or anything), it utilizes a .htaccess file for url rewriting, but you could still test things by hitting /doc.cfm?name=getsafehtml if you just want to drop it in a directory somewhere.

## How to Contribute

If you want to work on a tag or function, 
1. fork the project to your GitHub account,
1. then please (create an issue here)[https://github.com/foundeo/cfdocs/issues/], eg "Missing Docs for CF11 getSafeHTML() Function",
2. and specify that you will be working on it, (please check the list of issues before posting to avoid duplicates) 
3. once you are done you can send a pull request, and I'll merge it into the main repository.

### Not sure what you can contribute? 
We need help expanding existing tag and function documentation. Look through the reference pages till you find one needing more definitions or examples.
You can also help add the new Adobe Coldfusion tags from the Splendor release. See the list of new tags / functions here: https://wikidocs.adobe.com/wiki/display/coldfusionen/CFML+Reference+-+New+in+Splendor


