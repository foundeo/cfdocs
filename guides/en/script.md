# CFScript Syntax Guide

The CFScript syntax provides a way of writing CFML code without using tags. CFScript can either be in a script based component (CFC) or inside the cfscript tag.



## Exception handling with the cfscript tag

To handle exceptions use try and catch statements, which are equivalent to the cftry and cfcatch tags. For each try statement, you must have a catch statement. 


## Script support for tags

CF11+ ColdFusion 11 allows you to invoke nearlly all the builtin tags in a generic manner. 

    <cfscript>
    cfexampletag (attrib=1, attr2=2) // The parent tag
    {
        // First child tag having attributes in the parenthesis (Optional)
        cfexamplechild (child_attr1='cv1', child_attr2='cv2')  
        {
            // Nested child tag
            cfexamplegrandchild (name="bob"); 
 
        }
        // Second child of parent tag
        cfexampleotherchild (child2_attr1='cv1', child2_attr2='cv2');
 
    }
    </cfscript>

Note that the attributes of a tag must be enclosed within a parenthesis and also the attributes must be comma-separated.

### The script support is not available for the following tags:

    <cfscript> (infinite loop :)
    <cfoutput> (use writeOutput() instead)
    <cfdump> (use writeDump() instead)
    <cfinvoke> (use invoke() instead)
    <cfinvokeargument>
    <cfobject> (use createObject instead)


### Using custom tags in scripts

Custom tags can also be used  in cfscript blocks just like builtin ColdFusion tags. This practice is not recommended, use a component instead of a custom tag. But if you really must, you can invoke a custom tag like this:

    cf_myCustomTag(myArg="x", otherArg="y");


### There are some tags that have multiple implementations

These implementations are due to old syntax or dual syntax (CF9 cfc’s)
    
    <cfscript> 
    //CF9 syntax
    thread action="run" name="testName" {
	   thread.test = "CFML";
    }
    //CF11 syntax
    cfthread( action="run" name="testName"){
	   thread.test = "CFML";
    }
    <cfscript>

## Examples of CFScript
    
### For Loop

    for (i=1; i <=5; i++) {
        // all statements in the block are looped over
        result = i * 2;
        writeOutput(result);
    }

### While Loop
    while (condition) {
        // statements
    }

### If / else if / else 
    <cfscript>
    count = 10; 
    if (count > 20) { 
        writeOutput(count); 
    } else if (count == 8) { 
        writeOutput(count); 
    } else { 
        writeOutput(count); 
    }
    </cfscript>
    
### Query Loop

    q = queryNew("id,data", "integer,varchar", [  [11, "aa"], [22, "bb"], [33, "cc"]  ] );
    for (row in q){
        writeOutput("#q.currentRow#:#row.id#:#row.data#;"); 
        //result:   1:11:aa;2:22:bb;3:33:cc;
    }

OR for CF11+

    cfloop(query=q, group="fk"){
        writeOutput("<strong>#fk#</strong>");
    }
    

<strong>Resources:</strong>
Tony Junkes GitHub: https://github.com/tonyjunkes/cfml-tags-to-cfscript/blob/master/README.md#general
Adam Cameron GitHub: https://github.com/adamcameron/cfscript/blob/master/cfscript.md#database
Pete Freitag Cheat sheet: http://www.petefreitag.com/cheatsheets/coldfusion/cfscript/
Steve Walker CF Tag and Script Equivilents: http://www.cfuser.com/cf-tag-and-script-equivalents/




