# CFDocs

CFDocs is a community maintained CFML reference tool available at [cfdocs.org](https://cfdocs.org). It features:
* Hosting on Amazon CloudFront CDN for fast responses around the globe. Sponsored by [Foundeo Inc.](http://foundeo.com).
* Easy to use urls like: [cfdocs.org/hash](https://cfdocs.org/hash) just hit /tag-name or /function-name.
* Publicly maintained on [GitHub](https://github.com/foundeo/cfdocs)

[![CI](https://github.com/foundeo/cfdocs/actions/workflows/ci.yml/badge.svg)](https://github.com/foundeo/cfdocs/actions/workflows/ci.yml)

## How reference data is structured

All of the tag and function documentation are defined in JSON files under [*data/en/functionname.json*](https://github.com/foundeo/cfdocs/tree/master/data/en)  [function example](https://github.com/foundeo/cfdocs/blob/master/data/en/sessioninvalidate.json) [tag example](https://github.com/foundeo/cfdocs/blob/master/data/en/cfhtmltopdf.json).

This makes the documentation super easy to edit and allows developers to run a local version of the site "out of the box" since no database setup is required.

## Running CFDocs locally for dev or pleasure


### Running CFDocs Locally

The cfdocs.org site can run locally very easily thanks to CommandBox.

1. Go download [CommandBox](https://www.ortussolutions.com/products/commandbox) if you do not have it already.
2. Download this repository and extract it to a folder, or clone it from this repository. 
3. Make a copy of `.env.example` and name it `.env`. This contains required environment variables. [learn more](https://github.com/commandbox-modules/commandbox-dotenv)
4. Run `box server start` from Command Prompt or Terminal in the root directory.

CommandBox will start an embedded CFML server on port 8411, and you can browse to [http://localhost:8411/](http://localhost:8411/) to view the docs.

If you don't want to go the CommandBox route you can simply download it and unzip it to a web root and try it out (requires CF10+ or Lucee 4.5+), but you will probably spend more time trying to get it working than the 1-2 minutes it will take to download and learn how to use CommandBox.

## How to contribute

If you are interested in contributing going I suggest you fork it, see Adam Tuttle's guide: [GitHub tip for your first pull request](https://adamtuttle.codes/blog/2014/your-first-github-pull-request/)

If you are interested in helping you can just copy a tag or function and write up some documentation. The documentation doesn't need to be super wordy and should not be a copy of Adobe's documentation word for word.

CFDocs.org is meant to be a quick reference so keep it short and sweet. E.g. attribute names / function arguments and one two sentence descriptions.

#### The easy way to edit the docs

1. Browse the [data/en/](https://github.com/foundeo/cfdocs/tree/master/data/en) folder of this repository on GitHub and find the tag or function you want to edit.
2. Click the edit button (pencil)
3. Commit 
4. Send a pull request to merge your change with this repository.

#### The better way to edit the docs

1. fork the project to your GitHub account *need help? read this: [GitHub tip for your first pull request](https://adamtuttle.codes/blog/2014/your-first-github-pull-request/)*
2. clone it locally
3. make your changes
4. test it locally using CommandBox (see above)
4. once you are done you can send a pull request, and I'll merge it into the main repository.

### Not sure what you can contribute?

We need help expanding existing tag and function documentation. Look through the reference pages till you find one needing more definitions or examples. Also see:

* [Missing Descriptions](https://cfdocs.org/reports/missing-descriptions.cfm)
* [Missing Examples](https://cfdocs.org/reports/missing-examples.cfm)
* [Missing Related Links](https://cfdocs.org/reports/missing-related.cfm)
* [Missing Functions](https://cfdocs.org/reports/todo.cfm)

### JSON File Documentation

    {
        "name":"nameOfTagOrFunction",
        "type":"function|tag",
        "syntax":"Tag(arg)|<cftag attr=1>",
        "member":"item.memberFunction([args])",
        "script":"cftag(attr=1);",
        "returns":"void",
        "related":[
            "tag",
            "function"
        ],
        "description":"A short description that describes what the tag or function does.",
        "discouraged":"Only add this key if this tag/function is discouraged by the community. Displays a warning.",
        "params":[
            {"name":"funcArgNameOrTagAttributeName", "description":"What it does", "required":true, "default":"false", "type":"boolean", "values":[]}
        ],
        "engines":{
            "coldfusion":{"minimum_version":"10", "notes":"CF Specific Info Here", "docs":"http://learn.adobe.com/wiki/display/coldfusionen/function"},
            "lucee":{"minimum_version":"4.5", "notes":"Lucee Specific Info Here", "docs":"https://docs.lucee.org/reference/functions/name.html"},
            "railo":{"minimum_version":"4.1", "notes":"Railo Specific Here", "docs":"http://railodocs.org/index.cfm/function/sessionrotate"}
        },
        "links":[
            {
                "title":"Title of a blog entry that has good info about this.",
                "description":"Description of the link",
                "url":"http://www.example.com/a/b.cfm"
            }
        ],
        "examples":[
            {
                "title":"Name of the code example",
                "description":"Description of the code example",
                "code":"<cf_examplecodehere>",
                "result":"The expected output of the code example",
                "runnable":true
            }
        ]
    }


##### name

The name of the tag or function, use lowercase.

##### type

Either `function` or `tag` or `listing` a *listing* is how categories are made, they simply contain a `name`, `description`, and a list of `related` items.

##### syntax

The basic syntax of the tag or function

##### script

For tags, shows how the tag would be invoked from cfscript.

##### member

For functions, shows the available member function syntax.

##### returns

The returntype of a function. Valid options are: `any`, `array`, `binary`, `boolean`, `date`, `function`, `guid`, `numeric`, `query`, `string`, `uuid`, `variableName`, `void`, `xml`. Default value is `void`.

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

Show example code. It is very helpful to readers to use the `result` to show the expected result of the code sample when applicable. This has to be JSON, so  you can to do `\n` for newline, double quotes must be escaped `\"`. The `runnable` is a boolean that determines if the _Run Code_ button shows up next to the example.

We have an [example JSON utility](https://cfdocs.org/utilities/json/) that can be used to create the JSON by filling out a form.

Please see the [cfdocs contributor guide](CONTRIBUTING.md) for frequently asked questions.

### IDE Integration

There are several CFML code editors that utilize the cfdocs repository to provide documentation within the editor.

#### Sublime Text

Install the CFML Package for Sublime Text 3: <https://packagecontrol.io/packages/CFML> the plugin will provide inline documentation when hovering the mouse over a tag or function, or when or typing code.

#### Visual Studio Code

Install the CFML Plugin from KamasamaK: <https://marketplace.visualstudio.com/items?itemName=KamasamaK.vscode-cfml>

#### VIM

Requires the vim-shell plugin:

```
function! CFDocsSearch()
   let wordUnderCursor = expand("<cword>")
   execute 'Open https://cfdocs.org/' . wordUnderCursor
endfunction

command! -nargs=0 CFdocs :call CFDocsSearch()
```

#### CFEclipse

Hit `F1` when the cursor is on a tag or function to be taken to the cfdocs.org doc.
