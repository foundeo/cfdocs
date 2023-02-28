# Operators in CFML

This is an incomplete / work in progress guide to operators in CFML.

### Equality

`EQ` _Script_ ✓ _Tags_ ✓

`IS` _Script_ ✓ _Tags_ ✓

`==` _Script_ ✓ _Tags_ ✖ CF8+

    if (animal == "cow") {
        return "mooo!";
    }

The `EQ`, `IS`, and `==` operators are case insensitive, so `"PETE" IS "pete"` evaluates to `true`.

### Inequality

`NEQ` _Script_ ✓ _Tags_ ✓

`IS NOT` _Script_ ✓ _Tags_ ✓

`!=` _Script_ ✓ _Tags_ ✖ CF8+

    if (true != false) {
        return "sanity";
    }

### Negation

`NOT` _Script_ ✓ _Tags_ ✓

`!` _Script_ ✓ _Tags_ ✓ CF8+

    if ( !isLocalHost(cgi.remote_addr) ) {
        throw("sorry localhost only");
    }

### Comparison

`GREATER THAN` _Script_ ✓ _Tags_ ✓
`GT` _Script_ ✓ _Tags_ ✓
`>` _Script_ ✓ _Tags_ ✖

`GREATER THAN OR EQUAL TO` _Script_ ✓ _Tags_ ✓
`GTE` _Script_ ✓ _Tags_ ✓
`GE` _Script_ ✓ _Tags_ ✓
`>=` _Script_ ✓ _Tags_ ✖

`LESS THAN` _Script_ ✓ _Tags_ ✓
`LT` _Script_ ✓ _Tags_ ✓
`<` _Script_ ✓ _Tags_ ✖

`LESS THAN OR EQUAL TO` _Script_ ✓ _Tags_ ✓
`LTE` _Script_ ✓ _Tags_ ✓
`LE` _Script_ ✓ _Tags_ ✓
`<=` _Script_ ✓ _Tags_ ✖

`CONTAINS` _Script_ ✓ _Tags_ ✓
`DOES NOT CONTAIN` _Script_ ✓ _Tags_ ✓

Lucee supports the following shorthand for the `CONTAINS` and `DOES NOT CONTAIN` operators.

`CT` _Script_ ✓ _Tags_ ✓
`NCT` _Script_ ✓ _Tags_ ✓

### Concatenation

`&` _Script_ ✓ _Tags_ ✓

    name = name & " Jr.";

`&=` _Script_ ✓ _Tags_ ✓ CF8+

    name &= " Jr.";

Both code examples are equivalent.

## Compatibility Notes

The operators `==`, `!=`, `<`, `<=`, `>`, and `>=` do not work in tags such as cfif or cfset in Adobe ColdFusion (as of Version 2016). However the `==`, `!=`, `<`, and `<=` operators work from tags on Lucee, but `>` and `>=` do not.
