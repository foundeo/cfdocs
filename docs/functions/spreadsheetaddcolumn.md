# spreadsheetAddColumn

 Adds a column or column data to an Excel spreadsheet object.

```javascript
spreadsheetAddColumn(spreadsheetObj, data, startrow, startcolumn, insert [, insert])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| data | string | Yes |  | No Help Available |
| startrow | numeric | Yes |  | No Help Available |
| startcolumn | numeric | Yes |  | No Help Available |
| insert | boolean | Yes |  | No Help Available |
| insert | boolean | No |  | No Help Available |

## Tag Example

```javascript
<cfscript>
mySheet = SpreadsheetNew( "Test" );
writeDump( mySheet );
SpreadsheetAddColumn( mySheet, "MySingleColumn" ); // Add a row of data: a single value for the single column
mySingleColumnValue = "As you can see, this sentence contains commas, which force the value to be split over 3 columns instead of one.";
SpreadsheetAddRow( mySheet, mySingleColumnValue );
writeDump( mySheet );
</cfscript>
```
