# structNew

Creates a new, empty structure. The shorthand syntax for an empty unordered struct is `{}`. You can also use the syntax `{"key":"value"}` to initialize it with values. The shorthand syntax for an ordered struct is `[:]` or `[=]`. The shorthand for a case-sensitive struct is `${}`.The shorthand for a ordered and casesensitive struct is `$[=]`.
NOTE: To preserve the case of the struct key, place quotes around it, otherwise it will be converted to uppercase.

```javascript
structNew([type[[,sortType][,sortOrder][,localeSensitive]|[,callback]]])
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | No |  | CF2016+ Lucee4.5+ If set to `ordered` the order in which elements are added to the structure will be maintained. In Lucee `linked` can be used in place of `ordered`.
CF2021+ If set to `casesensitive` the keys will remain case-sensitive. Additionally, `ordered-casesensitive` can be used to create an ordered case-sensitive struct. |
| sortType | string | No |  | CF2016u3+ Sort types are text or numeric. |
| sortOrder | string | No | asc | CF2016u3+ The order of the sort (ascending or descending). |
| localeSensitive | boolean | No | false | CF2016u3+ Specify if you wish to do a locale sensitive sorting. |
| callback | function | No |  | CF2016u3+ A comparator function used to sort new data entered into the structure. Returns 1, 0 or -1. |

## New struct using literal notation

Creates an unordered struct.

```javascript
unordered = { a=1, c=3, b=2 };
writeDump( unordered );
```

## New struct using function

Creates an unordered struct.

```javascript
unordered = structNew();
unordered.a = 1;
unordered.b = 2;
unordered.c = 3;
writeDump( unordered );
```

## New ordered struct using literal notation

CF2016+ Creates an ordered struct. Note the square brackets.

```javascript
ordered = [ a=1, b=2, c=3 ];
writeDump( ordered );
```

## New ordered struct using function

CF2016+ Lucee4.5+ Creates an ordered struct.

```javascript
ordered = structNew( "ordered" );
ordered.a = 1;
ordered.b = 2;
ordered.c = 3;
writeDump( ordered );
```

## New ordered struct using literal notation

CF2016+ Lucee5+ Creates an ordered struct.

```javascript
ordered = [:];
ordered.a = 1;
ordered.b = 2;
ordered.c = 3;
writeDump( ordered );
```

## New case-sensitive struct using function

CF2021+ Creates a case-sensitive struct.

```javascript
casesensitive = structNew( "casesensitive" );
casesensitive.a = 1;
casesensitive.B = 2;
casesensitive.c = 3;
writeDump( casesensitive );
```

## New case-sensitive struct using literal notation

CF2021+ Creates a case-sensitive struct.

```javascript
casesensitive = ${a=1, B=2, c=3};
writeDump( casesensitive );
```

## New ordered and case-sensitive struct using function

CF2021+ Creates a case-sensitive struct.

```javascript
someStruct = structNew( "ordered-casesensitive" );
someStruct.c = 3;
someStruct.B = 2;
someStruct.a = 1;
writeDump( someStruct );
```

## New ordered and case-sensitive struct using literal notation

CF2021+ Creates an ordered and case-sensitive struct.

```javascript
someStruct = $[c=3, B=2, a=1];
writeDump( someStruct );
```
