##CFScript syntax
Description
Encloses a code block that contains cfscript statements.

Category
Application framework tags, Other tags

Syntax
    <cfscript> 
        cfscript code here 
        </cfscript>
See also
cfinvoke, cfmessagebox, CreateObject; Extending ColdFusion Pages with CFML Scripting in the Developing ColdFusion Applications

History
_ColdFusion 11: Enhanced support like usage of custom tags._

_ColdFusion MX:_

Changed how to invoke component methods: this tag can now invoke component methods, using the CreateObject function
Changed use of reserved words: you cannot use ColdFusion reserved words within this tag
Added the try and catch statements.
Usage
Performs processing in CFScript. This tag uses ColdFusion functions, expressions, and operators. You can read and write ColdFusion variables within this tag. For a detailed description of the CFScript scripting language, including documentation of CFScript statements and the CFScript equivalents of CFML tags, see Extending ColdFusion Pages with CFML Scripting in the Developing ColdFusion Applications.
You can use this tag to enclose a series of assignment statements that would otherwise require cfset statements.

Note: If you code a cftry/cfcatch_ block within this tag using an exception's Java class name, provide the fullyqualified class name._

You cannot use some ColdFusion reserved words in this tag. You cannot put a user-defined function whose name begins with any of these strings within this tag:

cf
cf_
_cf
coldfusion
coldfusion_
_coldfusion
You cannot use the elseif construct within a cfscripttag. You can use code such as the following:
else if ( condition ) 
{ 
... 
}
Keywords
The following words are now treated as keywords:

import
finally
component
interface
pageencoding
Exception handling with the cfscript tag
To handle exceptions with this tag, use try and catch statements, which are equivalent to the cftry and cfcatch tags. For each try statement, you must have a catch statement. In the catch block, the variable exceptionVariable contains the exception type. This variable is the equivalent of the cfcatch tag built-in variable cfcatch.Type. For more information, see Extending ColdFusion Pages with CFML Scripting in the Developing ColdFusion Applications.

Invoking ColdFusion components with the cfscript tag
CFScript invokes component methods using the CreateObject function. The following example shows how to invoke a component object with the cfscript tag, using ordered arguments:

    <cfscript> 
        quote = CreateObject( "component", "nasdaq.quote" ) ; 
        <!--- Invocation using ordered arguments. --->
        res = quote.getLastTradePrice( "macr" ) ; 
    </cfscript>
The following example shows how to use an attribute collection within the cfscript tag to pass parameters when invoking a component object. An attribute collection is a structure in which each key corresponds to a parameter name and each value is the parameter value passed for the corresponding key.

    <cfscript> 
        stArgs = structNew(); 
        stArgs.zipcode = "55987"; 
    </cfscript> 
... 
    <cfinvoke
    webservice = "http://www.xmethods.net/sd/2001/TemperatureService.wsdl"
        method = "getTemp"
        argumentCollection = "#stArgs#"
        returnVariable = "aTemp" > 
        <cfoutput>The temperature at zip code 55987 is #aTemp#</cfoutput>
In this example, the structure is created in a cfscript block, but you can use any ColdFusion method to create the structure.

Consuming web services with the cfscript tag
The following example shows how to consume a web service with the cfscript tag. You use the CreateObject function to connect to the web service.

    <cfscript> 
        ws = CreateObject("webservice", 
            "http://www.xmethods.net/sd/2001/TemperatureService.wsdl"); 
            xlatstring = ws.getTemp("55987"); 
        writeoutput(xlatstring); 
    </cfscript>
For more information, see Using Web Services in the Developing ColdFusion Applications.

Script support for tags

ColdFusion traditionally allowed you to build your applications using simple tags. ColdFusion 11 allows you to write all the tags in the script format in a very generic manner. The format for the generic syntax is as follows:

    <cfscript>
    cftag1 (att1=val1, att2=val2) // The parent tag
    {
        // First child tag having attributes in the parenthesis (Optional)
        child_Tag1 (child_attr1='cv1', child_attr2='cv2')  
    {
    // Nested child tag
    child_childTag (child_child_attr1=ccv1, child_child_attr2=ccv2); 
 
    }
    // Second child of parent tag
    child_Tag2 (child2_attr1='cv1', child2_attr2='cv2');
 
    }
    </cfscript>
Note that the attributes of a tag must be enclosed within a parenthesis and also the attributes must be comma-separated.

Consider the following example:

    <cfform name='myForm' action=''>
        <cfgrid name="myGrid" query='userNameQuery'>
            <cfgridcolumn name='firstName' id='firstName' type='string' />
            <cfgridcolumn name='lastName' id='lastName' type='string' />
        </cfgrid>
    </cfform>
You have been used to writing ColdFusion code as mentioned in the above example. To give you more control, invoking tags inside the ColdFusion script block is now supported.

So, now you can write your code in the following manner:

    <cfscript>
    cfform (name='myForm', acton='')
    {
        cfgrid (name="myGrid", query='userNameQuery')
        {
            cfgridcolumn (name='firstName', id='firstName', type='string');
            cfgridcolumn (name='lastName', id='LastName', type='string');
        }
    }
    </cfscript>
The script support is not available for the following tags:

    <cfscript>
        <cfoutput> (use writeOutput() instead)
        <cfdump> (use writeDump() instead)
        <cfinvoke> (use invoke() instead)
        <cfinvokeargument>
    <cfobject> (use createObject instead)
Note : Though the script equivalents of the above tags might work, they are not supported.

Using custom tags in scripts

Custom tags can also be used  in <cfscript> blocks just like normal ColdFusion tags. For instance, 

If there is a custom tag named cf_happybirthday to generate a birthday message which is used in the tag syntax like:

    <cf_happybirthday name="Ted Cantor" birthDate="December 5, 1987">
The same can be written in the script syntax as : 

    cf_happybirthday (name="Ted Cantor", birthDate="December 5, 1987");
Also, script support for cfimport-based prefix custom tag is supported. You can use prefix-based custom tag in script blocks as follows:

    <cfscript>
    cfimport(taglib=" ../importFolder/", prefix="myTags");
    myTags:customTag();
    </cfscript>
In the above example, customTag is a CFM file under the importFolder directory.

Example

    <p>This simple example shows variable declaration and manipulation. 
    <cfif IsDefined("form.myValue")> 
    <cfif IsNumeric(form.myValue)> 
    <cfset x = form.myValue> 
    <cfscript> 
    y = x; 
    z = 2 * y; 
    StringVar = form.myString; 
    </cfscript> 
    <cfoutput> <p>twice #x# is #z#. 
    <p>Your string value was: <b><I>#StringVar#</i></b> </cfoutput> 
    <cfelse>...
    
    Additional Information:
    Community has different opinions on using Tag vs Script
* Using MVC Tags on View, Script on Controller and Model
* Script syntax is cleaner
* Closer to other ECMA script languages
* Lots of tag syntax is more characters
* I am more comfortable with Tags
* Documentation is lacking for Script (check cfdocs.org)
* Tags were superior for SQL integration (talk about this later)
* Newer features such as Closures are script based
<strong>Do what is best for you but try to be consistent!!!</strong>

There are some tags that have multiple implementations
These implementations are due to old syntax or dual syntax (CF9 cfc’s)
    <cfscript> 
    //CF9 syntax
    thread action=“run” name=“testName” {
	   thread.test = “CFML”;
    }
       //CF11 syntax
       cfthread( action=“run” name=“testName”){
	   thread.test = “CFML”;
    }
    <cfscript>
    
_For Loop_
    for (i=1; i <=5; i++) {
        // all statements in the block are looped over
        result = i * 2;
        writeOutput(result);
    }
_While Loop_
    while (condition) {
        // statements
    }

_If/elseif/else example:_
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
    
_Query Loop_
    q = queryNew("id,data", "integer,varchar", [  [11, "aa"], [22, "bb"], [33, "cc"]  ] );
    for (row in q){
      writeOutput("#q.currentRow#:#row.id#:#row.data#;"); 
      //result:   1:11:aa;2:22:bb;3:33:cc;
      }
OR
    cfloop(query=q, group="fk"){
        writeOutput("<strong>#fk#</strong>");
    }
    
<strong>Resources:</strong>
CFChef GitHub: https://github.com/cfchef/cfml-tag-to-script-conversions/blob/master/README.md#general
Adam Cameron GitHub: https://github.com/adamcameron/cfscript/blob/master/cfscript.md#database
Pete Freitag Cheat sheet: http://www.petefreitag.com/cheatsheets/coldfusion/cfscript/




