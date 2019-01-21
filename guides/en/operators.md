# Operators in CFML

This is an incomplete / work in progress guide to operators in CFML.

### Equality

`EQ` _Script_ ✓ _Tags_ ✓

`IS` _Script_ ✓ _Tags_ ✓

`==` _Script_ ✓ _Tags_ ✖ CF8+

	if (animal == "cow") {
		return "mooo!";
	}

The `EQ` `IS` and `==` operators are case insensitive, so `"PETE" IS "pete"` evaluates `true`

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
`>=` _Script_ ✓ _Tags_ ✖

`LESS THAN` _Script_ ✓ _Tags_ ✓
`LT` _Script_ ✓ _Tags_ ✓
`<` _Script_ ✓ _Tags_ ✖

`LESS THAN OR EQUAL TO` _Script_ ✓ _Tags_ ✓
`LTE` _Script_ ✓ _Tags_ ✓
`<=` _Script_ ✓ _Tags_ ✖

### Concatenation 

`&` _Script_ ✓ _Tags_ ✓

	name = name & " Jr.";

`&=` _Script_ ✓ _Tags_ ✓ CF8+

	name &= " Jr.";	

Both code examples are equivilent.

## Compatibility Notes

The operators `==` `!=` `<` `<=` `>` `>=` do not work in tags such as cfif or cfset in Adobe ColdFusion (as of Version 2016). However the `==` `!=` `<` `<=` operators work from tags on Lucee, but `>` `>=` do not.
