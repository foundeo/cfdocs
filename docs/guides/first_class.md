# Built in ColdFusion Functions as First Class Citizens

The ColdFusion built-in functions will be treated as ‘first-class’ functions so that any built-in function can be passed as an argument.

For instance, this is valid:

    function convertCaseForArray(array array, function convertor)
    {
        for (var i=1; i <= arrayLen(array); i++) {
            array[i] = convertor(array[i]);
        } 
        return array;
    }

    // lCase built-in function is being passed as callback.
    resultantArray = convertCaseForArray(['One', 'Two','Three'], lCase);

    writeDump(resultantArray);

Now, you can treat the built-in CFML functions  like uCase() as objects, being able to assign them to variables, and pass them as arguments.

Another example, this is where `lCase` and `uCase` are being returned from a function" (NOTE: This example only works with CF11-CF2021.)

    function convertArray(array array, string caseTo) {
        caseConverterFunction = getConvertFunction(caseTo);
        for (var i=1; i <= arrayLen(array); i++) {
            array[i] = caseConverterFunction(array[i]);
        }
        return array;
    }
    
    function getConvertFunction(string caseType) {
        if (caseType == 'lower') return lCase;
        return uCase;
    }
    
    results = {
        "lower" = convertArray(['One', 'Two', 'Three'], 'lower'),
        "upper" = convertArray(['One', 'Two', 'Three'], 'upper')
    };
    
    writeDump(results);

_lower array: one, two, three
_upper array: ONE, TWO, THREE
