# replace

Replaces occurrences of substring1 in a string with obj, in a specified scope. The search is case-sensitive. Function returns original string with replacements made.

```javascript
replace(string, substring1, obj [, scope])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.replace(substring1, obj[, scope])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | String to search |
| substring1 | string | Yes |  | Substring to find within string |
| obj | any | Yes |  | String to replace substring1 with. As of CF2016+ you can also pass a callback function in this argument `function(transform, position, original)`. |
| scope | string | No | one | * one: replace the first occurrence
 * all: replace all occurrences |
| start | numeric | No | 1 | CF2021+ Position to start searching in the string. |

## Replace uppercase 'U' with lowercase 'u'

Replace in Script Syntax

```javascript
getVal = replace("ColdFUsion", "U", "u");
writeDump(getVal);
```

### Expected Result: ColdFusion

## Replace uppercase 'O' with lowercase 'o', but only once

Something similar in Tag Syntax

```javascript
<cfset getVal1 = replace("COldFusiOn", "O", "o", "ONE") />
<cfdump var = #getVal1# />
```

### Expected Result: ColdFusiOn

## Example using Callback Function

In CF2016+ you can pass in a callback function to the third argument of the `replace` function

```javascript
public function upCase(pattern, position, orig) {
    return uCase(pattern);
}
result = replace("A man a plan a canal.","an", upCase , "ALL");
writeOutput(result);
```

### Expected Result: A mAN a plAN a cANal.

## Example with start argument (Replace lowercase 'o' with uppercase 'O' from the third position)

In CF2021+ you can pass position to start searching in the string

```javascript
getRes = replace("Love ColdFusion", "o", "O","ALL","3");
writeOutput(getRes);
```

### Expected Result: Love COldFusiOn
