# Contributor Guide for CFDocs

### I want to help but I'm not sure what needs to be done

1. Look at our [list of Tags / Functions Missing Descriptions](https://cfdocs.org/reports/missing-descriptions.cfm) and add a description.
2. Look at our [list of Tags / Functions without Examples](https://cfdocs.org/reports/missing-examples.cfm) and add some examples. You can use [this utility](https://cfdocs.org/utilities/json/) to format the examples into the correct JSON format.
3. Look at our [list of Tags / Functions without Related Links](https://cfdocs.org/reports/missing-related.cfm) and add a link to a related blog entry or article.
4. Look at our [GitHub Open Issues](https://github.com/foundeo/cfdocs/issues) and fix something.

### Where can I find documentation about the JSON file format used?

It's documented in the [main README](https://github.com/foundeo/cfdocs#json-file-documentation).

### What version of CF should the cfdocs CFML code work on?

It should run on Adobe ColdFusion 10+ or Lucee 4.5+ please make sure any changes 
made to the codebase work on these platforms. Sadly that means you can't use member
functions at this time.

### Should I use tabs or spaces?

Tabs.

### For boolean values should I use `yes`/`no` or `true`/`false` or `1`/`0`?

Use `true`/`false`

### Should I use implicit or explicit notation for arrays and structs?

Example:
```
arr = []; // implicit
// is the same as
arr = arrayNew(1);

unorderedStruct = {}:
orderedStruct = [:];
// is the same as
unorderedStruct = structNew():
orderedStruct = structNew('ordered');
```

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
