# spreadsheetAddimage

 Adds an image to an Excel spreadsheet object.

```javascript
spreadsheetAddimage(spreadsheetObj, imagefilepath, anchor)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| imagefilepath | string | Yes |  | No Help Available |
| anchor | string | Yes |  | No Help Available |

## Tag Example

The following example creates a PNG format chart, puts it in a new spreadsheet as rows 5-12 and column 5-10, and saves the sheet to disk.

```javascript
<cfchart format="png" name="image_var"> 
     <cfchartseries type="line"> 
         <cfchartdata item="Point1" value="-50"> 
         <cfchartdata item="Point2" value="-25"> 
         <cfchartdata item="Point3" value="1"> 
 </cfchartseries> 
 </cfchart> 
 <cfset sObj = SpreadsheetNew()> 
 <cfset SpreadsheetAddRow(sObj, "")> 
 <cfset SpreadsheetAddImage(sObj,image_var,"png","1,1,7,6")> 
 <cfheader name="Content-Disposition" value="inline; filename=testFile.xls"> 
 <cfcontent type="application/vnd.msexcel" variable="#SpreadSheetReadBinary(sObj)#">
```
