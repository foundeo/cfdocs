# Strings

## Slicing / Sub-strings via array notation

CF2018 added support to slice `arrays`, allowing you to extract element from the array depending on a start and stop position, with an optional step value.

CF2018 Update 5 extended this functionality to `strings`. 

You can now reference a sub-string via array notation with positional ranges (beginning at 1).

    string[start:stop:step]

You can use this like

    myString = "This is my string. I love CFDocs!" ;
    writeoutput(myString[1]); // Returns T // First character from start of string.
    writeoutput(myString[-1]); // Returns ! // First character from end of string.
    writeoutput(myString[20:28]); // Returns I love CF
    writeoutput(myString[20:50]); // Returns Error : Cannot access array element at position 50. -- This will not wrap.
    writeoutput(myString[-20,-10]); // Returns ring. I lov
    writeoutput(myString[1,-10]); // Returns This is my string. I lov
    writeoutput(myString[1:]); // Returns This is my string. I love CFDocs! // Full string from position 1 to end.
    writeoutput(myString[:10]); // Returns This is my  // String from position 1 to position 10.
    writeoutput(myString[5:25:5]); // Returns yiI  // Every 5th character from position 5 to 25.
    writeoutput(myString[::2]); // Returns Ti sm tig oeCDc!  // Every other character in the string.

_**Note:** The `start` value must occur **before** the `stop` value within the string._



