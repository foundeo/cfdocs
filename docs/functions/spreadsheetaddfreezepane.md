# spreadsheetAddFreezePane

Adds freeze pane (non-scrollable columns/rows) to spreadsheet

```javascript
spreadsheetAddFreezePane(spreadsheetObj, column, row [, endColumn] [, endRow])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | Spreadsheet variable name |
| freezeColumn | numeric | Yes |  | Amount of columns from left which should be freeze |
| freezeRow | numeric | Yes |  | Amount of rows from top which should be freeze |
| hideColumn | numeric | No |  | Amount of columns which should be hidden under/behind freeze columns (Scrolls left to first unhidden column). |
| hideRow | numeric | No |  | Amount of rows which should be hidden under/behind freeze rows (Scrolls down to first unhidden row). |
