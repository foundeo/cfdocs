# ColdFusion Closures

CF10+ A closure is an inner function. The inner function can access the variables in the outer function. You can access the inner function by accessing the outer function. See the example below.

    function helloTranslator(String helloWord) {
        return function(String name) {
            return "#helloWord#, #name#";
        };
    }

    helloInHindi = helloTranslator("Namaste");
    helloInFrench = helloTranslator("Bonjour");
    writeOutput(helloInHindi("Anna"));

    //closure is formed.
    //Prints Namaste, Anna.
    writeOutput("<br>");
    writeOutput(helloInFrench("John"));
    //Prints Bonjour, John.

In the above example, the outer function returns a closure. Using the helloHindi variable, the outer function is accessed. It sets the helloWord argument.

Using this function pointer, the closure is called. For example, helloInHindi("Anna"). Observe that even after the execution of outer function, the closure can access the variable sets by the outer function.

In this case, using closure, two new functions are created. One adds Namaste to the name. And the second one adds Bonjour to the name.
helloInHindi and helloInFrench are closures. They have the same function body; however, store different environments.

The inner function is available for execution after the outer function is returned. A closure is formed when the inner function is available for execution.

As seen in the example, even after the outer function is returned, the inner function can access the variables in the outer function. Closure retains the reference to the environment at the time it is created. For example, the value of a local variable in the outer function. It makes closure an easy to use and handy feature.

To see more details on closure, see http://jibbering.com/faq/notes/closures/.

### Closure in ColdFusion

A closure can be of the following categories:

* Defined inline without giving a name. They can be used in the following ways:
* They can be assigned to a variable, array item, struct, and variable scope. It can be returned directly from a function.

#### ColdFusion Example

    function operation(string operator) {
        return function(numeric x, numeric y) {
            if (operator == "add") {
                return x + y;
            }
            else if (operator == "subtract") {
                return x - y;
            }
        };
    }

    myval_addition = operation("add");
    myval_subtraction = operation("subtract");
    writeOutput(myval_addition(10,20));
    writeOutput("<br>");
    writeOutput(myval_subtraction(10,20));

In the above example, the outer function sets the operator. myval_addition and myval_subtraction are two closures. They process the data based on the condition sets by the outer function.

#### Defined inline as a function and tag argument

    function operation(numeric x, numeric y, function logic)
    {
        var result = logic(x,y);
        return result;
    }
    add = operation(10,20, function(numeric N1, numeric N2)
    {
        return N1+N2;
    });
    subtract = operation(10,20, function(numeric N1, numeric N2)
    {
        return N1-N2;
    });
    writeDump(add);
    writeDump(subtract);

In the above example, the function operation has an argument logic, which is a closure. While calling operation, an inline closure is passed as an argument. This anonymous closure contains the logic to process the numbers - addition or subtraction. In this case, the logic is dynamic and passed as a closure to the function.

#### You can assign a closure to a variable

    var c2 = function () {..}

Note: When assigning Closures to a variable, only script style of syntax is supported.

A closure can be used as a return type

Note: As a best practice, if the return type is a closure, provide the Function keyword with initial capitalization.

Example

    function function exampleClosure(arg1) {
        function exampleReturned(innerArg) {
            return innerArg + arg1;
        }
        /* return a reference to the inner function defined.  */
        return exampleReturned;
    }

#### Calling closure with key-value pair

    var c2 = function(arg1, arg1) {..}
    c2(arg1=1, arg2=3);

#### Closure can be assigned to a variable outside function

    hello = function (arg1) {
        writeOutput("Hello " & arg1);
    };
    hello("Mark");

#### Calling closure with argument collection

    var c2 = function(arg1, arg1) {..}
    argsColl = structNew();
    argsColl.arg1 = 1;
    argsColl.arg2 = 3;
    c2(argumentCollection = argsColl);

### Closures and functions

A closure retains a copy of variables visible at the time of its creation. The global variables (like ColdFusion specific scopes) and the local variables (including declaring or outer function's local and arguments scope) are retained at the time of a closure creation. Functions are static.

The following details the scope of closure based on the way they are defined:

#### Scenario where closure is defined

##### In a CFC function

Closure argument scope, enclosing function local scope and argument scope, this scope, variable scope, and super

##### In a CFM function

Closure argument scope, enclosing function local scope and argument scope, this scope, variable scope, and super

##### As function argument

Closure argument scope, variable scope, and this scope and super scope (if defined in CFC component).

Scope Chain:

* Closure's local scope
* Closure's arguments scope
* Outer function's local scope if available
* Owner function's local scope if available
* ColdFusion built-in scope

Note: A closure cannot call any user-defined function, because the function's context is not retained, though the closure's context is retained. It gives erroneous results. For example, when a closure is cached, it can be properly called for later use, while a function cannot.

### The isClosure Function

CF10+ added the `isClosure` function which returns true if a variable is a closure, false otherwise.

#### Modifications to the function isCustomFunction

Though closure is a function object, it is not considered as a custom function.
The function now returns:

True: If name can be called as a custom function.
False: If name can be called as a closure.
Usage scenarios
The following scenario explains how you can effectively use ColdFusion closures.

## Example - filtering of arrays using closures

The following example filters employees based on location, age, and designation. A single function is used for filtering. The filtering logic is provided to the function as closures. That's filtering logic changes dynamically.

Create the `employee.cfc` file that defines the variables.

    /**
     * @name employee
     * @displayname ColdFusion Closure Example
     * @output false
     * @accessors true
     */
    component
    {
        property string Name;
        property numeric Age;
        property string designation;
        property string location;
        property string status;
    }

Create the employee array. This CFC also contains the `filterArray()` function. A closure, `filter`, is an argument of the function. While accessing this function, the filtering logic is passed as a closure.

    // filter.cfc
    component {
        //Filter the array based on the logic provided by the closure.
        function filterArray(array a, function filter) {
            resultArray = arrayNew(1);
            for (i=1; i <= arrayLen(a); i++) {
                if (filter(a[i]))
                    arrayAppend(resultArray,a[i]);
            }
            return resultArray;
        }

        function getEmployee() {
            //Create the employee array.
            empArray = arrayNew(1);
            arrayAppend(empArray,new employee(Name="Ryan", Age=24, designation="Manager", location="US"));
            arrayAppend(empArray,new employee(Name="Ben", Age=34, designation="Sr Manager", location="US"));
            arrayAppend(empArray,new employee(Name="Den", Age=24, designation="Software Engineer", location="US"));
            arrayAppend(empArray,new employee(Name="Ran", Age=28, designation="Manager", location="IND"));
            arrayAppend(empArray,new employee(Name="Ramesh", Age=31, designation="Software Engineer", location="IND"));
            return empArray;
        }
    }

Create the CFM page that accesses the {{filterArray()}}function with a closure which provides the filtering logic. The {{filterArray()}}function is used to filter the employee data in three ways: location, age, and designation. Each time the function is accessed, the filtering logic is changed in the closure.

    <!---arrayFilter.cfm--->
    <cfset filteredArray = arrayNew(1)>
    <cfset componentArray = [3,6,8,2,4,7,9]>
    <cfscript>
    obj = createObject("component", "filter");
    // Filters employees from India
    filteredArray = obj.filterArray(obj.getEmployee(), function(a)
    {
        if (a.getLocation() == "IND") {
            return 1;
        }
        else {
            return 0;
        }
    });
    writeDump(filteredArray);
    //Filters employees from India whose age is above thirty
    filteredArray = obj.filterArray(obj.getEmployee(), closure(a)
    {
        if ((a.getLocation() == "IND") && (a.getAge() > 30)) {
            return 1;
        }
        else {
            return 0;
        }
    });
    writeDump(filteredArray);
    // Filters employees who are managers
    filteredArray = obj.filterArray( obj.getEmployee(), function(a)
    {
        if ((a.getdesignation() contains "Manager")) {
            return 1;
        }
        else {
            return 0;
        }
    });
    writeDump(filteredArray);
    </cfscript>

### Other Closure Examples

JavaScript example:

    function outerFunction() {
        var a = 3;
        return function innerFunction(b) {
            var c = a + b;
            return c;
        }
    }

(1) `var foo = outerFunction()`
(2) `var result = foo(2);`
(3) `console.log(result); //5`

We have an outer function with a nested function which accepts a parameter `b`

(1) When you invoke the outer you get the inner returned later.
(2) Notice the outer function was called but the a still has its value and is used in the return function (innerFunction).
(3) That is why the result Is 5!

https://web.archive.org/web/20170508020042/taha-sh.com/blog/understanding-closures-in-javascript

## ColdFusion built in Functions that use Closures

### CF10 Closure Functions

* [arrayEach](/arrayeach)
* [structEach](/structeach)
* [arrayFilter](/arrayfilter)
* [structFilter](/structfilter)
* [listFilter](/listfilter)
* [arrayFind](/arrayfind)
* [arrayFindAll](/arrayfindall)
* [arrayFindAllNoCase](/arrayfindallnocase)
* [arrayFindNoCase](/arrayfindnocase)
* [arraySort](/arraysort)

### CF11 Closure Functions

* [isClosure](/isclosure)
* [listEach](/listeach)
* [arrayReduce](/arrayreduce)
* [structReduce](/structreduce)
* [listReduce](/listreduce)
* [arrayMap](/arraymap)
* [structMap](/structmap)
* [listMap](/listmap)

### CF2016 Closure Functions

* [queryEach](/queryeach)
* [queryFilter](/queryfilter)
* [queryMap](/querymap)
* [structNew](/structnew) (Update 3)
* [queryReduce](/queryreduce)
* [replace](/replace)
* [listSort](/listsort)
* [querySort](/querysort)
* [structSort](/structsort)
* [structToSorted](/structtosorted) (Update 3)

### CF2018 Closure Functions

* [arrayEvery](/arrayevery)
* [queryEvery](/queryevery)
* [structEvery](/structevery)
* [replaceNoCase](/replacenocase)
* [arraySome](/arraysome)
* [querySome](/querysome)
* [structSome](/structsome)
* [runAsync](/runasync)

### CF2021 Closure Functions

* [stringEach](/stringeach)
* [stringEvery](/stringevery)
* [stringFilter](/stringfilter)
* [stringMap](/stringmap)
* [stringReduce](/stringreduce)
* [arrayReduceRight](/arrayreduceright)
* [listReduceRight](/listreduceright)
* [stringReduceRight](/stringreduceright)
* [stringSome](/stringsome)
