# arraySort

Sorts array elements.

```javascript
arraySort(array, sortType [, sortOrder [, localeSensitive ]])
or
arraySort(array, callback)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.sort(sortType [, sortOrder, localeSensitive ])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | Name of an array |
| sortType | string | Yes |  | numeric: sorts numbers<br /> text: sorts text alphabetically, taking case into account<br /> (also known as case-sensitive). All letters of one case<br /> precede the first letter of the other case:<br /> - aabzABZ, if sort_order = "asc" (ascending sort)<br /> - ZBAzbaa, if sort_order = "desc" (descending sort)<br /><br /> textnocase: sorts text alphabetically, without regard to<br /> case (also known as case-insensitive). A letter in varying<br /> cases precedes the next letter:<br /> - aAaBbBzzZ, in an ascending sort; preserves original<br /> intra-letter order<br /> - ZzzBbBaAa, in a descending sort; reverses original<br /> intra-letter order |
| sortOrder | string | No | asc | asc: ascending sort order. Default.<br /> - aabzABZ or aAaBbBzzZ, depending on value of sort_type,<br /> for letters<br /> - from smaller to larger, for numbers<br /><br /> desc: descending sort order.<br /> - ZBAzbaa or ZzzBbBaAa, depending on value of sort_type,<br /> for letters<br /> - from larger to smaller, for numbers |
| callback | function | No |  | CF10+ A function that uses two elements of an array. `function(element1, element2)`. Returns whether the first is less than (-1), equal to (0) or greater than (1) the second one (like the compare functions). |
| localeSensitive | boolean | No | false | CF10+ Specify if you wish to do a locale sensitive sorting. |

## Simple example for arraySort function

Uses the arraySort() function to get the sorted array and which sorted by type numeric

```javascript
someArray = [10,20,-99,46,50];
arraySort(someArray, "numeric", "desc");
writeOutput( serializeJSON(someArray) );
```

### Expected Result: [50,46,20,10,-99]

## Simple example with member function

CF11+ Lucee4.5+

```javascript
someArray = ["COLDFUSION","coldfusion","adobe","LucEE","RAILO"];
someArray.sort("text","desc");
writeOutput( serializeJSON(someArray) );
```

### Expected Result: ["coldfusion","adobe","RAILO","LucEE","COLDFUSION"]

## Simple example with callback function

Uses the callback function

```javascript
someArray = [
    {name="testemployee", age="32"},
    {name="employeetest", age="36"}
];
arraySort(
    someArray,
    function (e1, e2){
        return compare(e1.name, e2.name);
    }
);
writeOutput( serializeJSON(someArray) );
```

### Expected Result: [{"NAME":"employeetest","AGE":"36"},{"NAME":"testemployee","AGE":"32"}]

## Script member syntax: sort array of structs by multiple keys

Takes an array of structs and sorts by multiple different keys, similar to the way a query allows.

```javascript
arrayOfStructs = [
	{
		"userId": 1,
		"firstName": "John",
		"lastName": "Doe",
		"departmentName": "Sales",
		"active": 1
	},
	{
		"userId": 2,
		"firstName": "Jane",
		"lastName": "Smith",
		"departmentName": "Marketing",
		"active": 1
	},
	{
		"userId": 3,
		"firstName": "Alice",
		"lastName": "Johnson",
		"departmentName": "Sales",
		"active": 0
	},
	{
		"userId": 4,
		"firstName": "Bob",
		"lastName": "Brown",
		"departmentName": "Sales",
		"active": 1
	},
	{
		"userId": 5,
		"firstName": "Charlie",
		"lastName": "Davis",
		"departmentName": "Marketing",
		"active": 0
	}
];
arrayOfStructs.sort((user1,user2) => {
	if (user1.active != user2.active) {
		return user2.active - user1.active;
	}
	if (user1.departmentName == user2.departmentName || user1.active == 0) {
		if (user1.lastName == user2.lastName) {
			return user1.firstName.compare(user2.firstName);
		}
		return user1.lastName.compare(user2.lastName);
	}
	return user1.departmentName.compare(user2.departmentName);
});
writeDump(arrayOfStructs);
```

### Expected Result: Sorts by active employees, then by their last name and finally by their first name
