# Contributor Guide for CFDocs

### Should I use tabs or spaces?

Tabs.

### For boolean values should I use `yes`/`no` or `true`/`false`

Use `true`/`false`

### Where can I find documentation about the JSON file format used?

The main README has that documented: https://github.com/foundeo/cfdocs#json-file-documentation

### What version of CF should the cfdocs CFML code work on?

It should run on Adobe ColdFusion 10+ or Lucee 4.5+ please make sure any changes 
made to the codebase work on these platforms. Sadly that means you can't use member
functions at this time.

### How are my contributions licensed?

Please see the [LICENSE](LICENSE) file.

### Can I copy code examples from other sources?

No - any examples or code submitted must be your own work.

### My contribution is not showing up on cfdocs.org

The main site is cached by Amazon CloudFront for performance, so changes
do not show up right away. Most pages are cached for 24 hours.

If you are not showing up on the leaderboard after 24 hours you might need to 
try this: http://contribution-checker.herokuapp.com/

