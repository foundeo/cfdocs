# Contributor Guide for CFDocs

### I want to help but I'm not sure what needs to be done

1. Look at our [list of Tags / Functions Missing Descriptions](https://cfdocs.org/reports/missing-descriptions.cfm) and add a description.
2. Look at our [list of Tags / Functions without Examples](https://cfdocs.org/reports/missing-examples.cfm) and add some examples. You can use [this utility](https://cfdocs.org/utilities/json/) to format the examples into the correct JSON format.
3. Look at our [list of Tags / Functions without Related Links](https://cfdocs.org/reports/missing-related.cfm) and add a link to a related blog entry or article.
4. Look at our [GitHub Open Issues](https://github.com/foundeo/cfdocs/issues) and fix something.

### Where can I find documentation about the JSON file format used?

It's documented in the [main README](https://github.com/foundeo/cfdocs#json-file-documentation).

### How do I add a new tag or function

All of the tags and functions are defined in a JSON file located in the [data/en](https://github.com/foundeo/cfdocs/tree/master/data/en) folder. 

1. Check the [data/en](https://github.com/foundeo/cfdocs/tree/master/data/en) folder to make sure no one else has already added it
2. Check the open [Pull Requests](https://github.com/foundeo/cfdocs/pulls) to make sure someone else has not already submitted it.
3. Create a new JSON file, take a look at an existing [function](https://github.com/foundeo/cfdocs/edit/master/data/en/arraylen.json) or [tag](https://github.com/foundeo/cfdocs/edit/master/data/en/cfcase.json) and use the [JSON format documentation](https://github.com/foundeo/cfdocs#json-file-documentation) for reference. Make sure there are links to official documentation (if there is no official documentation, explain this in the pull request comment)
4. Name it in all lowercase (eg `awesomefunction.json` or `cfawesome.json`) 
5. Locate the new file in the [data/en](https://github.com/foundeo/cfdocs/tree/master/data/en) folder
6. Create a pull request 

### What version of CF should the cfdocs CFML code work on?

It should run on Adobe ColdFusion 2016+ or Lucee 5+ please make sure any changes 
made to the codebase work on these platforms.

### Should I use tabs or spaces?

Tabs.

### For boolean values should I use `yes`/`no` or `true`/`false` or `1`/`0`?

Use `true`/`false`

### Should I use implicit or explicit notation for arrays and structs?

Example:

	arr = []; // implicit
	// is the same as
	arr = arrayNew(1);

	unorderedStruct = {};
	orderedStruct = [:];
	// is the same as
	unorderedStruct = structNew();
	orderedStruct = structNew('ordered');


Use implicit.

### How are my contributions licensed?

Please see the [LICENSE](https://github.com/foundeo/cfdocs/blob/master/LICENSE) file.

### Can I copy code examples from other sources?

No - any examples or code submitted must be your own work.

### My contribution is not showing up on cfdocs.org

The main site is cached by Amazon CloudFront for performance, so changes
do not show up right away. Most pages are cached for 24 hours.

If you are not showing up on the leaderboard after 24 hours you might need to 
try this: http://contribution-checker.herokuapp.com/
