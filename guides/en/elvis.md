# Elvis Operator

CF11+ The Elvis Operator added in ColdFusion 11

## Ternary Operator

It works like a Ternary Operator; it's a decision making operator that requires three operands: condition, true statement, and false statement that are combined using a question mark (?) and a colon (:):

    ((condition) ? trueStatement : falseStatement)

The way it works is that the condition is evaluated. If it is true, then the true statement executed; if it is false, then the false statement executes.

## Elvis Operator

Before Elvis we had `isDefined()`, `structKeyExists()`, and `if` statements to do these kind of evaluations.

The Elvis operator is primarily used to assign the ‘right default’ for a variable or an expression
Or it is a short-hand way to do parameterization. It will allow us to set a value if the variable is Null

For instance,

    myDisplayName = userName ?: "Anonymous";

In the above example, if userName is defined, it will be assigned to the myDisplayName variable. If the userName is not defined, the value "Anonymous" will be assigned to the myDisplayName variable.

See the following example:

    employeeName = getEmployeeName(ID) ?: "Joe";

In the above example, if getEmployeeName(ID) does not return any value, the value "Joe" will be assigned to the employeeName variable.

Similarly, you can use this operator for Struct:

    securityNumber = securityStruct['Joe'] ?: "";

NB: In CF if the value tested === false, then the expression on the right will be evaluated. [See Adobe bug](https://tracker.adobe.com/#/view/CF-4198933). Lucee behaves as expected.

## Examples

Examples which are all the same:

    if (!isNull(local.testVar)) {
        value = local.newTest;
    } else {
        value = "test Item";
    }

    value = (local.testVar ?: "test Item");

    value = (!isNull(local.testVar) ? local.newTest : "test Item");

Three types of usage for the Elvis Operator:

    result = firstOperand ?: secondOperand; // binary
    result = (local.myVar ?: "default value");

OR

    result = firstOperand ?: secondOperand; // binary
    result = isNumeric(17) ? "it's numeric" : "no it isn't"; // "it's numeric"

OR

    result = firstOperand ? secondOperand : thirdOperand; // ternary
    result = isNumeric("nineteen") ? "it's numeric" : "no it isn't"; // "no it isn't"

Nesting examples for `if`/`elseif`/`else`. Note: It's not advisable to nest it because of poor readability, but useful in some rare situations.

    result = stage1.firstOperand ? stage1.secondOperand : stage2.firstOperand ? stage2.secondOperand : stage1.thirdOperand;
    value = "nineteen";
    result = isNumeric(value) ? "it's numeric" : (reFind("[A-Za-z]",value) > 0) ? "it's alphabetic" : "it's neither"; // "it's alphabetic"
