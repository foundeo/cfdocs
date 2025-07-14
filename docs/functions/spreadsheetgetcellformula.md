# spreadsheetGetCellFormula

 Gets the formula for a for an Excel spreadsheet object cell, or all formulas for the object.

```javascript
spreadsheetGetCellFormula(spreadsheetObj, row, column)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| row | numeric | Yes |  | No Help Available |
| column | numeric | Yes |  | No Help Available |

## Script Example

```javascript
<cfset q = queryNew("Name,Beers,Vegetables,Fruits,Meats", "cf_sql_varchar,cf_sql_integer,cf_sql_integer,cf_sql_integer,cf_sql_integer")> 
  <cfset queryAddRow(q)> 
  <cfset querySetCell(q, "Name", "John")> 
  <cfset querySetCell(q, "Beers", "1")> 
  <cfset querySetCell(q, "Vegetables", "1")> 
  <cfset querySetCell(q, "Fruits", "1")> 
  <cfset querySetCell(q, "Meats", "1")> 
  <cfset mySheet =   SpreadsheetNew( "Test"  ) /> 
  <!--- Make a spreadsheet object ---> 
  <cfset s = spreadsheetNew()> 
  <!--- Add header row ---> 
  <cfset spreadsheetAddRow(s, "Name,Beers,Vegetables,Fruits,Meats")> 
  <!--- Add query ---> 
   <cfscript> 
   theFormula=SpreadsheetGetCellFormula(s,1,1); 
 </cfscript> 
 <cfoutput> 
 Row,Column: #theFormula# 
 </cfoutput>
```

## Example for getting cell formula

Example of getting Excel spreadsheet cell value and formula

```javascript
<cfscript>
columnsList = "Name,Employed,Sales,Earnings,Some Value";
employees = [
    { "Name": "Robert","Employed":"Y","Sales":1,"Earnings":500 },
    { "Name": "Wilma","Employed":"Y","Sales":15,"Earnings":5500 },
    { "Name": "Eric","Employed":"Y","Sales":3,"Earnings":1200 },
    { "Name": "Fred","Employed":"Y","Sales":1,"Earnings":500 },
    { "Name": "Dillan","Employed":"Y","Sales":15,"Earnings":5500 },
    { "Name": "Dana","Employed":"Y","Sales":3,"Earnings":1200 },
    { "Name": "Sandy","Employed":"Y","Sales":1,"Earnings":500 },
    { "Name": "Ellen","Employed":"Y","Sales":15,"Earnings":5500 },
    { "Name": "Richard","Employed":"Y","Sales":3,"Earnings":1200 }
];

// create a spreadsheet
s = SpreadsheetNew("Example");
// add the header row
spreadsheetAddRow(s, columnsList);
// Add some employee data
employees.each(function(record,row){
    spreadsheetAddRow(s, "", row + 1);
    // Add the row data by column name
    ListToArray(columnsList).each(function(columnName,col){
        if(structKeyExists(record,columnName)){
            SpreadsheetSetCellValue(s, record[columnName], row + 1, col);
        }
    });
});
// Capture the number of rows plus the header row
numRows = ArrayLen(employees) + 1;

// Create some random data in the 5th column
for (i=2; i<= numRows; i=i+1)
    SpreadsheetSetCellValue(s,i,i,5);
// add a totals row
spreadsheetAddRow(s, "", numRows + 1);

// Set the formula for the cell in the last row, column 3 to be the sum of
// 'Sales'
SpreadsheetSetCellFormula(s,"SUM(#Chr(64+3)#2:#Chr(64+3)#10)",numRows+1,3);
// Set the formula for the cell in the last row, column 4 to be the sum of
// 'Earnings'
SpreadsheetSetCellFormula(s,"SUM(#Chr(64+4)#2:#Chr(64+4)#10)",numRows+1,4);
// Set the formula for the cell in the last row, column 5 to be the sum of
// 'Some Value'
SpreadsheetSetCellFormula(s,"SUM(#Chr(64+5)#2:#Chr(64+5)#10)",numRows+1,5);

for (i=3; i<= 5; i=i+1){
    //Get the formula from last row column i ex: ($E11)
    formulaValue=SpreadsheetGetCellFormula(s,numRows+1,i);
    //Get the value from last row column i ex: ($E11)
    cellValue=SpreadsheetGetCellValue(s,numRows+1,i);
    writeOutput("Total: " & cellValue & "<br>");
    writeOutput("formula: " & formulaValue & "<hr>" );
}
writedump(var=s,label="Example");
</cfscript>
```

### Expected Result: Total: 57 formula: SUM(C2:C10) Total: 21600 formula: SUM(D2:D10) Total: 54 formula: SUM(E2:E10)
