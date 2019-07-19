# For Loops in CFML / CFScript

There are several different types of for loops. For more info please see the docs for cfloop.

## Types of loops
### Basic for loop

The following for loop has been supported since the initial version of cfscript.

	array = [3,2,1];

	for (i=1; i <= arrayLen(array);i=i+1) {
		writeOutput(array[i]);
	}

The above would output `321`

### For In Loop (over a structure)

	struct = {a=1,b=2};
	for (key in struct) {
		writeOutput(key);
	}
	
The above outputs `AB`

### For In Loop (over an array) CF9.0.1+

	cars = ["Ford","Dodge"];
	for (car in cars) {
		writeOutput(car);
	}
	
The above example would output `FordDodge`

Lists are not supported by default. If you have a list instead of an array, you have to use a basic for loop or you can simply convert the list to an array using `listToArray()`.

For in support for native java arrays was added in CF10+

### For In Loop (over a query) CF10+

	for (row in query) {
		writeOutput(query.currentrow);
	}

### Query Loop (with grouping) CF10+

	q = queryNew("pk,fk,data", "integer,integer,varchar",[ 
		[1, 10, "aa"], 
		[2, 20, "bb"], 
		[3, 20, "cc"], 
		[4, 30, "dd"], 
		[5, 30, "ee"], 
		[6, 30, "ff"] 
	]); 
	cfloop(query=q, group="fk"){ 
	    writeOutput("<strong>#fk#</strong><br />"); 
	    cfloop(){ 
		writeOutput("&emsp;#pk#:#data#<br />"); 
	    } 
	    writeOutput("<hr>"); 
	}
	
### File Loop

	filePath = getCurrentTemplatePath(); 
	cfloop(file=filePath, index="chars", characters=16, charset="UTF-8"){ 
		writeOutput(chars); // outputs the contents of this file 
 	}
	
### Date Time Loop
	
	from = now(); 
	to   = dateAdd("d", 7, from); 
	for(date=from; dateCompare(date, to, "d") <= 0; date = dateAdd("d", 1, date)){ 
		writeOutput(dateTimeFormat(date, "yyyy-mm-dd HH:nn:sstt") & "<br>"); 
	}
	
## Additional statements
### `continue`

	cars = ["Ford","Dodge"];
	for (car in cars) {
		if(car is "Ford") {
			continue;
		}
		writeOutput(car);
	}
	
### `break`

	cars = ["Ford","Dodge"];
	for (car in cars) {
		if(car is "Ford") {
			break;
		}
		writeOutput(car);
	}
