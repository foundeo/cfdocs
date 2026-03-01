# spreadsheetAddRow

Adds a row to an Excel spreadsheet object.

```javascript
spreadsheetAddRow(spreadsheetObj, data [, row] [, column] [, insert] [, datatype])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | The spreadsheet |
| data | string | Yes |  | A comma separated list of cell values. |
| row | numeric | No |  | Row number at which to insert, if omitted appended. |
| column | numeric | No | 1 | Column number at which to insert data. |
| insert | boolean | No | true | When true appends data to spreadsheetObj, when false attempts to update rows. |
| datatype | array | No |  | CF11+ List of datatype expressions with values such as `STRING` `NUMERIC` or `DATE`. For example use `DATE:1;NUMERIC:2-2;STRING |

## Add a row to SpreadSheet

```javascript
<!--- Make a new spreadsheet object --->
<cfset s = spreadsheetNew()>
<!--- Add header row --->
<cfset spreadsheetAddRow(s,"Name,Beers,Vegetables,Fruits,Meats")>
<cfdump var="#s#" />
```
