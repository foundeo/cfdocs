# cfgridupdate

Used within a cfgrid tag. Updates data sources directly from
 edited grid data. This tag provides a direct interface with
 your data source.

 This tag applies delete row actions first, then insert row
 actions, then update row actions. If it encounters an error,
 it stops processing rows.

### Syntax

```html
<cfgridupdate grid="" datasource="" tablename="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfgridupdate(grid="", datasource="", tablename="");
```
