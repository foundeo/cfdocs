# CFDocs

CFDocs is a community maintained CFML reference tool available at [cfdocs.org](http://cfdocs.org). It features:
* Hosting on Amazon CloudFront CDN for fast responses around the globe. Sponsored by [Foundeo Inc.](http://foundeo.com).
* Easy to use urls like: [cfdocs.org/hash](http:cfdocs.org/hash) just hit /tag-name or /function-name.
* Publicly maintained on [GitHub](http://github.com/foundeo/cfdocs)

## How reference data is structured

All of the tag and function documentation are defined in json files under *data/en/functionname.json* for example https://github.com/foundeo/cfdocs/blob/master/data/en/sessioninvalidate.json. 

This makes the documentation super easy to edit and allows developers to run a local version of the site "out of the box" since no database setup is required.

## Running CFDocs locally for dev or pleasure

The cfdocs.org site can run locally pretty easily, I run it on a dedicated virtual host (eg cfdocs.dev) and it doesn't need anything except CF to run (no database or anything), it utilizes a .htaccess file for url rewriting, but you could still test things by hitting /doc.cfm?name=getsafehtml if you just want to drop it in a directory somewhere.

## How to contribute

If you are interested in helping you can just copy a tag or function and write up some documentation. The documentation doesn't need to be super wordy and should not be a copy of Adobe's documentation word for word.

CFDocs.org is meant to be a quick reference so keep it short and sweet. E.g. attribute names / function arguments and one two sentence descriptions.

If you want to work on a tag or function, 

1. fork the project to your GitHub account,
2. then please (create an issue here)[https://github.com/foundeo/cfdocs/issues/], eg "Missing Docs for CF11 getSafeHTML() Function",
3. and specify that you will be working on it, (please check the list of issues before posting to avoid duplicates) 
4. once you are done you can send a pull request, and I'll merge it into the main repository.

### Not sure what you can contribute? 

We need help expanding existing tag and function documentation. Look through the reference pages till you find one needing more definitions or examples.

You can also help add the new Adobe Coldfusion tags from the Splendor release. See the list of new tags / functions here: https://wikidocs.adobe.com/wiki/display/coldfusionen/CFML+Reference+-+New+in+Splendor


