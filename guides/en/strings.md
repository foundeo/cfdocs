# Strings

## Slicing / Sub-strings via array notation

CF2018 added support to slice `arrays`, allowing you to extract element from the array depending on a start and stop position, with an optional step value.

CF2018 Update 5 extended this functionality to `strings`.

You can now reference a sub-string via array notation with positional ranges (beginning at 1).

    string[start:stop:step]

You can use this like

    myString = "This is my string. I love CFDocs!";
    writeOutput(myString[1]); // Returns T // First character from start of string.
    writeOutput(myString[-1]); // Returns ! // First character from end of string.
    writeOutput(myString[20:28]); // Returns I love CF
    writeOutput(myString[20:50]); // Returns Error : Cannot access array element at position 50. -- This will not wrap.
    writeOutput(myString[-20,-10]); // Returns ring. I lov
    writeOutput(myString[1,-10]); // Returns This is my string. I lov
    writeOutput(myString[1:]); // Returns This is my string. I love CFDocs! // Full string from position 1 to end.
    writeOutput(myString[:10]); // Returns This is my  // String from position 1 to position 10.
    writeOutput(myString[5:25:5]); // Returns yiI  // Every 5th character from position 5 to 25.
    writeOutput(myString[::2]); // Returns Ti sm tig oeCDc!  // Every other character in the string.

_**Note:** The `start` value must occur **before** the `stop` value within the string._
