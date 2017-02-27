# TestBox Quick Reference

[TestBox](https://www.ortussolutions.com/products/testbox) is a framework for writing and running tests in CFML. It supports both BDD (Behavior Driven Development) and xUnit style test cases. For full documentation, checkout the [TestBox Book](http://testbox.ortusbooks.com/)

## BDD Example Test Suite 

	component extends="testbox.system.BaseSpec" {
		function run() {
			describe("A sweet suite", function() {
				it("contains spec with an awesome expectation", function() {
					expect( true ).toBeTrue(); 
				});
			});
		}
	}

## Expectation Reference

See the [`testbox.system.Expectation`](http://apidocs.ortussolutions.com/testbox/2.3.0/index.html?testbox/system/Expectation.html) class for a full list of expectations. The `message` argument is optional in all cases. Here are some common expectations:

	//assert value==expected, not case sensitive
	expect(value).toBe(expected, message);

	//assert value==expected, case sensitive
	expect(value).toBeWithCase(expected, message);

	//assert value is true
	expect(value).toBeTrue(message);

	//assert value is false
	expect(value).toBeFalse(message);

	//assert string, array, struct, query is empty
	expect(value).toBeEmpty(message);

	//assert value is null
	expect(value).toBeNull(message);

	//assert struct has key, does not search nested structures
	expect(value).toHaveKey(key, message);

	//assert struct has key, search nested structures
	expect(value).toHaveDeepKey(key, message);

	//assert string, array, struct or query has a given length
	expect(value).toHaveLength(length, message);



Here are some more:

	//assert value is greater than target
	expect(value).toBeGT(target, message);

	//assert value is greater than or equal to target
	expect(value).toBeGTE(target, message);
	
	//assert value is less than target
	expect(value).toBeLT(target, message);

	//assert value is less than or equal to target
	expect(value).toBeLTE(target, message);

	//assert that the needle is included in string or array, not case sensitive
	expect(value).toInclude(needle, message);

	//assert that the needle is included in string or array, case sensitive
	expect(value).toIncludeWithCase(needle, message);

	//assert value between min and max
	expect(value).toBeBetween(min, max, message);

	//assert that the value is within +/- a passed delta and optional datepart
	expect(value).toBeCloseTo(expected, delta, datePart, message);

	//assert value is of CFML type using isValid function.
	expect(value).toBeTypeOf(type, message);

	//assert value an instance of named object type.
	expect(value).toBeInstanceOf(typeName, message);

	//assert value to match regex, not case sensitive.
	expect(value).toMatch(regex, message);

	//assert function throws exception, optionally specify type or regex.
	expect( function(){ x=1/0; } ).toThrow(type, regex, message);

You can prefix any of the expectations with `not`, to negate its meaning, for example

	expect(5).notToBe(6);

You can also chain expectations:

	expect(5).notToBe(6).toBeGT(0).toBeLT(10);

## xUnit Style Example Test

	component displayName="My Sweet Suite" extends="testbox.system.BaseSpec" {

		function testSomething() {
			var something = true;
			$assert.isTrue(something);
			$assert.notIsEmpty(something);
		}

	}
