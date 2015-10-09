# CFDocs 

CFDocs is a community maintained CFML reference tool available at [cfdocs.org](http://cfdocs.org). It features:
* Hosting on Amazon CloudFront CDN for fast responses around the globe. Sponsored by [Foundeo Inc.](http://foundeo.com).
* Easy to use urls like: [cfdocs.org/hash](http:cfdocs.org/hash) just hit /tag-name or /function-name.
* Publicly maintained on [GitHub](http://github.com/foundeo/cfdocs)

[![Build Status](https://travis-ci.org/foundeo/cfdocs.svg?branch=master)](https://travis-ci.org/foundeo/cfdocs)


## How reference data is structured

All of the tag and function documentation are defined in json files under [*data/en/functionname.json*](https://github.com/foundeo/cfdocs/tree/master/data/en)  [function example](https://github.com/foundeo/cfdocs/blob/master/data/en/sessioninvalidate.json) [tag example](https://github.com/foundeo/cfdocs/blob/master/data/en/cfhtmltopdf.json).

This makes the documentation super easy to edit and allows developers to run a local version of the site "out of the box" since no database setup is required.

## Running CFDocs locally for dev or pleasure

The cfdocs.org site can run locally pretty easily, it doesn't need anything except CF 10+ or Lucee to run (no database or anything), it utilizes a .htaccess file for url rewriting, but you could still test things by hitting /doc.cfm?name=getsafehtml if you just want to drop it in a directory somewhere.

### Running locally with CommandBox (EASIEST WAY)!

1. Go download [CommandBox](https://www.ortussolutions.com/products/commandbox) if you have not already.
2. Download this repository and extract it to a folder, or clone it from this repository. If you are going to be making changes to the docs I would suggest you fork it, see Adam Tuttle's guide: [GitHub tip for your first pull request](http://fusiongrokker.com/post/github-tip-for-your-first-pull-request)
3. Run `box recipe server-start.boxr` from Command Prompt or Terminal in the root directory.

CommandBox will start an embedded CFML server on port 8411, and you can browse to [http://localhost:8411/](http://localhost:8411/) to view the docs.

Note: To restart the server, don't use `server restart`, instead use `server stop` and then `recipe server-start.boxr` due to a [bug](https://ortussolutions.atlassian.net/browse/COMMANDBOX-245) in CommandBox the rewrite rules will not be added when the server restarts.

## How to contribute

If you are interested in helping you can just copy a tag or function and write up some documentation. The documentation doesn't need to be super wordy and should not be a copy of Adobe's documentation word for word.

CFDocs.org is meant to be a quick reference so keep it short and sweet. E.g. attribute names / function arguments and one two sentence descriptions.

#### The easy way to edit the docs

1. Browse the [data/en/](https://github.com/foundeo/cfdocs/tree/master/data/en) folder of this repository on github and find the tag or function you want to edit.
2. Click the edit button (pencil)
3. Commit / Send a pull request.

#### The better way to edit the docs

1. fork the project to your GitHub account *need help? read this: [GitHub tip for your first pull request](http://fusiongrokker.com/post/github-tip-for-your-first-pull-request)*
2. clone it locally
3. make your changes
4. test it locally using commandbox (see above)
4. once you are done you can send a pull request, and I'll merge it into the main repository.

### Not sure what you can contribute?

We need help expanding existing tag and function documentation. Look through the reference pages till you find one needing more definitions or examples. Also see:

* [List of Tags and Functions that do not have examples](http://cfdocs.org/reports/missing-examples.cfm)
* [Missing Functions](http://cfdocs.org/reports/todo.cfm)

### JSON File Documentation

    {
    	"name":"NameOfTagOrFunction",
    	"type":"function|tag",
    	"syntax":"Tag(arg)|<cftag attr=1>",
        "member":"item.memberFunction([args])",
        "script":"cftag(attr=1);",
    	"returns":"void",
    	"related":["tag","function"],
    	"description":"A short description that describes what the tag or function does.",
        "discouraged":"Only add this key if this tag/function is discouraged by the community.",
    	"params": [
            {"name":"funcArgNameOrTagAttributeName","description":"What it does","required":true,"default":"false","type":"boolean","values":["true","false"]}
    	],
    	"engines": {
    		"coldfusion": {"minimum_version":"10", "notes":"CF Specific Info Here", "docs":"http://learn.adobe.com/wiki/display/coldfusionen/function"},
    		"railo": {"minimum_version":"4.1", "notes":"Railo Specific Here", "docs":"http://railodocs.org/index.cfm/function/sessionrotate"},
            "lucee": {"minimum_version":"4.5", "notes":"Lucee Specific Info Here", "docs":"http://docs.lucee.org/reference/functions/name.html"}
    	},
    	"links": [
    		{
    			"title":"Title of a blog entry that has good info about this.",
    			"description":"Description of the link",
    			"url":"http:\/\/www.example.com\/a\/b.cfm"
    		}
    	],
        "examples": [
            {
    			"title": "Name of the code example",
    			"description": "Description of the code example",
    			"code": "<cf_examplecodehere>",
    			"result": "The expected output of the code example"
            }
        ]

    }


##### name

The name of the tag or function, use lowercase.

##### type

Either `function` or `tag` or `listing` a *listing* is how categories are made, they simply contain a `name`, `description`, and a list of `related`

##### syntax

The basic syntax of the tag or function

##### script

For tags, shows how the tag would be invoked from cfscript.

##### member

For functions, shows the available member function syntax.

##### returns

The returntype of a function.

##### related

An array of tag or function names that are related to this item.

##### description

A short description of the item.

##### discouraged

If this key exists and has content a warning is displayed stating that the tag or function is discouraged by the CFML community.

##### params

Array of structures containing information about the attributes of a tag, or arguments of a function.

##### engines

CFML engine implementation specific info goes here, for example if it was added in CF10 and Railo 4.1 you can add that in `minimum_version` if something was changed in CF11, you can add notes about what changed. The `docs` key should point to a url for vendor documentation.

##### links

Use this to link to blog entries or other useful related content.

##### examples

Show example code. It is very helpful to readers to use the `result` to show the expected result of the code sample when applicable. This has to be JSON, so  you can to do `\n` for newline, double quotes must be escaped `\"`.
