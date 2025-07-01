# listEach

Iterates over every element of a List object and can call a UDF function, passed as the second argument.

```javascript
listEach(String str, UDFMethod function [, String delim, boolean includeEmptyFields]);
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| str | string | Yes |  | An input list object. |
| function | function | Yes |  | UDF or closure object. |
| delim | string | Yes |  | A list delimiter to be used. The default value is comma (,). |
| includeEmptyFields | boolean | No | false | Boolean. Whether to allow empty fields. Default is false. |

## List Loop using listEach

Using a semicolon delimiter.

```javascript
list = "a;b;c";
listEach(list, function(element,index,list) {
    writeOutput("#index#:#element#;");
}, ";");
```

### Expected Result: 1:a;2:b;3:c;

## Member Function Example

List Loop list.listEach()

```javascript
list = "a;b;c";
list.listEach(function(element,index,list) { 
    writeOutput("#index#:#element#;");
}, ";");
```

### Expected Result: 1:a;2:b;3:c;

## Example using a Closure

Example 1

```javascript
empArray = ["john", "pete", "bob"]; 
 listS = "'john', 'pete', 'bob'"; 
 arrayEach(empArray, xclosure); 
 listEach(listS, xclosure); 
 function xclosure(empname, index) {  
    writeOutput(empName & " at index: " & index); 
 }
```

### Expected Result: john at index: 1pete at index: 2bob at index: 3'john' at index: 1 'pete' at index: 2 'bob' at index: 3

## Another Closure Example

Example 2

```javascript
cityList = "Pittsburgh, Raleigh, Miami, Las Vegas"; 
 function printCity(String city) { 
    writeOutput("Current city: " & city); 
 } 
 listEach(cityList ,printCity);
```

### Expected Result: Current city: PittsburghCurrent city: RaleighCurrent city: MiamiCurrent city: Las Vegas
