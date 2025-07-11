# cfparam

Tests for a parameter's existence, tests its data type, and, if
 a default value is not assigned, optionally provides one.

### Syntax

```html
<cfparam name="">
```

### Script Syntax

```javascript
cfparam(name="", default="", pattern="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name of parameter to test (such as "client.email" or<br /> "cookie.backgroundColor"). If omitted, and if the<br /> parameter does not exist, an error is thrown. |
| type | string | No | Any | The valid format for the data; one of the following.<br /> * any: any type of value.<br /> * array: an array of values.<br /> * binary: a binary value.<br /> * boolean: a Boolean value: yes, no, true, false, or a number.<br /> * creditcard: a 13-16 digit number conforming to the mod10 algorithm.<br /> * date or time: a date-time value.<br /> * email: a valid e-mail address.<br /> * eurodate: a date-time value. Any date part must be in the format dd/mm/yy, The format can use /, -, or . characters as delimiters.<br /> * float or numeric: a numeric value.<br /> * guid: a Universally Unique Identifier of the form "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" where 'X' is a hexadecimal number.<br /> * numeric: a numeric value<br /> * integer: an integer.<br /> * query: a query object.<br /> * range: a numeric range, specified by the min and max attributes.<br /> * regex or regular_expression: matches input against pattern attribute.<br /> * ssn or social_security_number: a U.S. social security number.<br /> * string: a string value or single character.<br /> * struct: a structure.<br /> * telephone: a standard U.S. telephone number.<br /> * URL: an http, https, ftp, file, mailto, or news URL.<br /> * UUID: a ColdFusion Universally Unique Identifier, formatted 'XXXXXXXX-XXXX-XXXX-XXXXXXXXXXXXXXX', where 'X' is a hexadecimal number. See CreateUUID.<br /> * USdate: a U.S. date of the format mm/dd/yy, with 1-2 digit days and months, 1-4 digit years.<br /> * variableName: a string formatted according to ColdFusion variable naming conventions.<br /> * xml: XML objects and XML strings.<br /> * zipcode: U.S., 5- or 9-digit format ZIP codes. |
| default | any | No |  | Value to set parameter to if it does not exist. Any<br /> expression used for the default attribute is evaluated,<br /> even if the parameter exists.<br /> The result is not assigned if the parameter exists,<br /> but if the expression has side effects, they still occur. |
| max | numeric | No |  | The maximum valid value; used only for range validation. |
| min | numeric | No |  | The minimum valid value; used only for range validation. |
| pattern | string | No |  | A regular expression that the parameter must match;<br /> used only for regex or regular_expression validation. |

## cfparam in CFML

A very basic CFML cfparam example

```html
<cfparam name="userID" default="0"/>
```

## cfparam in cfscript

A very basic cfscript cfparam example

```html
cfparam(name="userID", default=0);
param userID=0;
```

## Tag syntax using a regex

Throws an error if the value is not one of a list of possible values

```html
<cfparam name="sortdir" default="ASC" type="regex" pattern="ASC|DESC"/>
```

## param shorthand in cfscript

Three ways to use the param shorthand inside of a cfscript tag

```html
param someVar; //declare the param
param someVar=5; //declare the param with a default value
param numeric someVar=3.1415; //declare the param with adefault value and set the type
```
