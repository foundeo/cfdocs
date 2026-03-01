# replaceList

Replaces occurrences of the elements from a delimited list
 in a string with corresponding elements from another delimited
 list. The search is case-sensitive.

```javascript
replaceList(String, list1, list2 [, includeEmptyFields])
replaceList(String, list1, list2, delimiter [, includeEmptyFields])
replaceList(String, list1, list2, delimiterList1, delimiterList2 [, includeEmptyFields])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  | A string, or a variable that contains one, within which to replace substring |
| list1 | string | Yes |  | List of substrings for which to search |
| list2 | string | Yes |  | List of replacement substrings |
| delimiter | string | No | , | Common delimiter for both search and replacement. |
| delimiterList1 | string | No | , | Delimiter for search. |
| delimiterList2 | string | No | , | Delimiter for replacement. |
| includeEmptyFields | boolean | No | false | When true, zero-length list elements are preserved. |

## Tag Example

```javascript
<cfoutput>#replaceList("My Test String", "Test, String", "Replaced, Sentence")#</cfoutput>
```

### Expected Result: My Replaced Sentence
