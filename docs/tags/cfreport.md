# cfreport

Used to do either of the following:
 - Execute a report definition created with the ColdFusion
 Report Builder, displaying it in PDF, FlashPaper, or Excel
 format. You can optionally save this report to a file.
 - Run a predefined Crystal Reports report. Applies only to
 Windows systems. Uses the CFCRYSTAL.exe file to generate
 reports. Sets parameters in the Crystal Reports engine
 according to its attribute values.

### Syntax

```html
<cfreport>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfreport();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| template | string | No |  | Specifies the path to the report definition file,
 relative to the web root. |
| format | string | No |  | Specifies the output format. |
| name | string | No |  | The name of the ColdFusion variable that will hold
 the report output. You cannot specify both name and
 filename. |
| filename | string | No |  | The filename to contain the report. You cannot
 specify both name and filename. |
| query | string | No |  | The name of the query that contains input data for
 the report. If you omit this parameter, the report
 definition obtains data from the internal SQL or from
 cfreportparam items. |
| overwrite | boolean | No | NO | Specifies whether to overwrite files that have the
 same name as that specified in the filename attribute.
 Default: false |
| encryption | string | No | none | Specifies whether the output is encrypted. PDF format only.
 Default: none |
| ownerpassword | string | No |  | Specifies an owner password. PDF format only. |
| userpassword | string | No |  | Specifies a user password. PDF format only. |
| permissions | string | No |  | Specifies one or more permissions. PDF format only.
 Separate multiple permissions with a comma. |
| datasource | string | No |  | Name of registered or native data source. |
| type | string | No | standard | * standard (not valid for Crystal Reports 8.0)
 * netscape
 * microsoft |
| timeout | numeric | No |  | Maximum time, in seconds, in which a connection must be
 made to a Crystal Report. |
| report | string | No |  | Report path. Store Crystal Reports files in the same
 directories as CFML page files. |
| orderby | string | No |  | Orders results according to your specifications. |
| username | string | No |  | Username required for entry into database from which report
 is created. Overrides default settings for data source in
 CFML Administrator. |
| password | string | No |  | Password that corresponds to username required for database
 access. Overrides default settings for data source in
 CFML Administrator. |
| formula | string | No |  | One or more named formulas. Terminate each formula with a
 semicolon. Use the format:

 formula = "formulaname1='formula1';formulaname2='formula2';"

 If you use a semicolon in a formula, you must escape it by
 typing it twice (;;). For example:

 formula = "Name1 = 'Val_1a;;Val_1b';Name2 = 'Val2';" |
| resourceTimespan | variableName | No |  | Life span of the resource directory. Used only with format=HTML |
| style | string | No |  | Style in CSS format that overrides a style defined in the Report Builder report at run time. |
