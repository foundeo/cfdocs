# For Loops in CFML / CFScript

There are several different types of for loops. For more info please see the docs for cfloop.

### Basic for loop

The following for loop has been supported since the initial version of cfscript.

	array = [3,2,1];

	for (i=1; i LTE ArrayLen(array);i=i+1) {
		WriteOutput(array[i]);
	}

The above would output `321`

### For In Loop (over a structure)

	struct = {a=1,b=2};
	for (key in struct) {
		WriteOutput(key);
	}
	
The above outputs `AB`

### For In Loop (over an array) CF9.0.1+

	cars = ["Ford","Dodge"];
	for (car in cars) {
		WriteOutput(car);
	}
	
The above example would output `FordDodge`
