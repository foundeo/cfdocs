# For Loops in CFML / CFScript

There are several different types of for loops. For more info please see the docs for cfloop.

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

For in support for native java arrays was added in CF10+

### For In Loop (over a query) CF10+

	for (row in query) {
		writeOutput(row.currentrow);
	}