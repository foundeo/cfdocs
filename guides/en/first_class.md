# Built in ColdFusion Functions as First Class Citizens

The ColdFusion built-in functions will be treated as ‘first-class’ functions so that any built-in function can be passed as an argument.

For instance, this is valid:

    <cfscript>
    function convertCaseForArray(Array array, function convertor)
    {
        for (var i=1; i <= arrayLen(array); i++){
            array[i] = convertor(array[i]);
        } 
        return array;
    }

    // lcase built-in function is being passed as callback.
    resultantArray = convertCaseForArray(['One', 'Two','Three'], lcase); 

    writedump(resultantArray);
    </cfscript>

Now, you can treat the built-in CFML functions  like ucase() as objects, being able to assign them to variables, and pass them as arguments.

Another example, this is where lcase and ucase are being returned from a function" (NOTE: This example only works with CF11-CF2021.)

    <cfscript>
    function convertArray(array array, string caseTo){
        caseConverterFunction = getConvertFunction(caseTo);
        for (var i=1; i <= arrayLen(array); i++){
            array[i] = caseConverterFunction(array[i]);
        }
        return array;
    }
    
    function getConvertFunction(string caseType){
        if (caseType == 'lower') return lcase;
        return ucase;
    }
    
    results = {
        "lower" = convertArray(['One', 'Two', 'Three'], 'lower'),
        "upper" = convertArray(['One', 'Two', 'Three'], 'upper')
    };
    
    writedump(results);
    </cfscript>

_lower array: one, two, three
_upper array: ONE, TWO, THREE
