# spreadsheetNew

 Creates a ColdFusion spreadsheet object, which represents a single sheet of an Excel document.

```javascript
spreadsheetNew([sheetname] [, xmlFormat])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| sheetname | string | No |  | String value to be used as the sheet name. |
| xmlFormat | boolean | No | false | Boolean value to indicate the use of Excels xlsx format. |

## Create xlsx sheet

xlsx files with and with out sheet name

```javascript
xlsxSheet1 = spreadsheetNew("xlsx sheet",true);
xlsxSheet2 = spreadsheetNew(true);
writeDump(xlsxSheet1);
writeDump(xlsxSheet2);
```

## Create xls sheet

xls files with and with out sheet name

```javascript
xlsSheet1 = spreadsheetNew("xls sheet");
xlsSheet2 = spreadsheetNew();
writeDump(xlsSheet1);
writeDump(xlsSheet2);
```
