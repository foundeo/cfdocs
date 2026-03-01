# replaceListNoCase

Replaces occurrences of the elements from a delimited list in a string with corresponding elements from another delimited list. The search is case-insensitive.

```javascript
replaceListNoCase(string, list1, list2, includeEmptyFields)
replaceListNoCase(string, list1, list2, delimiter, includeEmptyFields)
replaceListNoCase(string, list1, list2, delimiterList1, delimiterList2, includeEmptyFields)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | A string, or a variable that contains one, within which to replace substring |
| list1 | string | Yes |  | List of substrings for which to search |
| list2 | string | Yes |  | List of replacement substrings |
| delimiter | string | No | , | Common delimiter for both search and replacement. |
| delimiterList1 | string | No | , | Delimiter for search. |
| delimiterList2 | string | No | , | Delimiter for replacement. |
| includeEmptyFields | boolean | No | false | When true, zero-length list elements are preserved. |

## Tag Example

```javascript
<cfset myString = "My test string" />
<cfset mySubstring1 = "Test, String" />
<cfset mySubString2 = "Replaced, Sentence" />
<cfoutput>#replaceListNoCase(myString, mySubstring1, mySubString2)#</cfoutput>
```

### Expected Result: My Replaced Sentence
