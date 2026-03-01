# spreadsheetGetColumnCount

Returns the number of columns in a given spreadsheet.

```javascript
spreadsheetAddRow(spreadsheetObj, [sheet])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | any | Yes |  | The spreadsheet object |
| sheet | string | No |  | The sheet name or sheet number |

## Get Column Count

```javascript
s = spreadsheetNew();
spreadsheetAddRow(s,"Name,Beers,Vegetables,Fruits,Meats");
writeOutput( spreadsheetGetColumnCount( s ) );
```

### Expected Result: 5
