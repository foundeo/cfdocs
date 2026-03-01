# getFunctionCalledName

 Returns the name of the variable used to call a defined function. This function can be used to return data from CFCs by simulating getters and setters.

```javascript
getFunctionCalledName()
```

```javascript
returns string
```

## getFunctionCalledName Basic Example

Show results of calling a function directly versus by reference

```javascript
void function actualFunctionName(){
    writeOutput("actualFunctionName() was called as: #getFunctionCalledName()#<br>");
}
writeOutput("<hr><h4>Calling actualFunctionName()</h4>");
actualFunctionName();
writeOutput("<hr><h4>Calling actualFunctionName() via reference</h4>");
referenceToFunction = actualFunctionName;
referenceToFunction();
```

## Getters and Setters Example

Example of using getFunctionCalledName to create dynamic getters and setters

```javascript
//callednamedemo.cfc
component
{
    variables.x1 = 1;
    variables.y1 = 2;

    function init() {
        return this;
    }

    function get() {
        var name = getFunctionCalledName();
        return variables[mid(name,4,len(name)-3)];
    }

    function set(value) {
        var name = getFunctionCalledName();
        variables[mid(name,4,len(name)-3)] = value;
    }

    this.getX1 = get;
    this.getY1 = get;
    this.setX1 = set;
    this.setY1 = set;
}

<!--- calledname.cfm --->

<cfscript>
function test() {
    return getFunctionCalledName();
}

writeOutput(test() & "<br>"); // test 
a = test;

writeOutput(variables.a() & "<br>"); // a 
o = new callednamedemo();

// shows *real* methods get(), SetX1() and getY1(), etc. 
writeDump(o);
o.setX1(10);
o.setY1(20);

writeOutput(o.getX1() & "<br>"); // 10
writeOutput(o.getY1() & "<br>") ; // 20
</cfscript>
```
