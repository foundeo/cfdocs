# spreadsheetFormatCellRange

Formats the cells within the given range.

```javascript
spreadsheetFormatCellRange (spreadsheetObj, format, startRow, startColumn, endRow, endColumn)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | any | Yes |  | The Excel spreadsheet object for which you want to format the cells. |
| format | struct | Yes |  | A structure that contains format information. |
| startRow | numeric | Yes |  | The number of the first row to format. |
| startColumn | numeric | Yes |  | The number of the first column to format. |
| endRow | numeric | Yes |  | The number of the last row to format. |
| endColumn | numeric | Yes |  | The number of the last column to format. |

## Tag Syntax

Checking to see if the region is present in the cache

```javascript
<!--- Get the spreadsheet data as a query. ---> 
 <cfquery 
     name='courses' datasource='cfdocexamples' 
     cachedwithin='#createTimespan(0, 6, 0, 0)#'> 
     SELECT CORNUMBER,DEPT_ID,CORLEVEL,COURSE_ID,CORNAME,CORDESC,LASTUPDATE 
     FROM COURSELIST 
 </cfquery> 
 <cfscript> 
     ///We need an absolute path, so get the current directory path. 
     theFile=getDirectoryFromPath(getCurrentTemplatePath()) & 'courses.xls'; 
     //Create a new Excel spreadsheet object and add the query data.    
 theSheet = spreadsheetNew('CourseData'); 
     spreadsheetAddRows(theSheet,courses); 
     // Define a format for the column. 
     format1=structNew() 
     format1.font='Courier'; 
     format1.fontsize='10'; 
     format1.color='dark_blue;'; 
     format1.italic='true'; 
     format1.bold='true'; 
     format1.alignment='left'; 
     spreadsheetFormatCellRange(theSheet,format1, 3,4,30,10); 
 </cfscript> 
 <!--- Write the spreadsheet to a file, replacing any existing file. ---> 
 <cfspreadsheet action='write' filename='#theFile#' name='theSheet' sheet=1 sheetname='courses' overwrite=true>
```
