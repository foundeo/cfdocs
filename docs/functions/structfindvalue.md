# structFindValue

 Searches recursively through a substructure of nested arrays,
 structures, and other elements for structures with values that
 match the search key in the value parameter.

```javascript
structFindValue(top, value [, scope])
```

```javascript
returns array
```

## Member Function Syntax

```javascript
struct.findValue( value, scope )
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| top | any | Yes |  | CFML object (a structure or an array) from which to<br /> start search. This attribute requires an object, not a<br /> name of an object. |  |
| value | string | Yes |  | String or a variable that contains one for which to search.<br /> The type must be a simple object. Arrays and structures<br /> are not supported. |  |
| scope | string | No |  | one: function returns one matching key (default)<br /> all: function returns all matching keys | /Users/garethedwards/development/github/cfdocs/docs/functions/structfindvalue.md|all |

## Find first match for a nested struct value

```javascript
myStruct = { a=2, b=4, c=8, d=10, e=12, f=12 };
myStruct.mySecondStruct = { a1=50, a2=12 };
myStruct.mySecondStruct.myThirdStruct = { b1=12, b2=65 };
myValue=StructFindValue( myStruct, "12", "one" );
WriteOutput( serializeJSON( myValue ) );
```

### Expected Result: [{"path":".E","owner":{"A":2,"B":4,"C":8,"D":10,"E":12,"F":12,"MYSECONDSTRUCT":{"A1":50,"A2":12,"MYTHIRDSTRUCT":{"B2":65,"B1":12}}},"key":"E"}]

## Find all matches for a nested struct value

```javascript
myStruct = { a=2, b=4, c=8, d=10, e=12, f=12 };
myStruct.mySecondStruct = { a1=50, a2=12 };
myStruct.mySecondStruct.myThirdStruct = { b1=12, b2=65 };
myValue=StructFindValue( myStruct, "12", "all" );
WriteOutput( serializeJSON( myValue ) );
```

### Expected Result: [{"path":".E","owner":{"A":2,"B":4,"C":8,"D":10,"E":12,"F":12,"MYSECONDSTRUCT":{"A1":50,"A2":12,"MYTHIRDSTRUCT":{"B2":65,"B1":12}}},"key":"E"},{"path":".F","owner":{"A":2,"B":4,"C":8,"D":10,"E":12,"F":12,"MYSECONDSTRUCT":{"A1":50,"A2":12,"MYTHIRDSTRUCT":{"B2":65,"B1":12}}},"key":"F"},{"path":".MYSECONDSTRUCT.A2","owner":{"A1":50,"A2":12,"MYTHIRDSTRUCT":{"B2":65,"B1":12}},"key":"A2"},{"path":".MYSECONDSTRUCT.MYTHIRDSTRUCT.B1","owner":{"B2":65,"B1":12},"key":"B1"}]

## Find first match for a nested struct value using member function

CF11+ calling the findValue member function on a struct.

```javascript
myStruct = { a=2, b=4, c=8, d=10, e=12, f=12 };
myStruct.mySecondStruct = { a1=50, a2=12 };
myStruct.mySecondStruct.myThirdStruct = { b1=12, b2=65 };
myValue=myStruct.findValue( "12", "one" );
WriteOutput( serializeJSON( myValue ) );
```

### Expected Result: [{"path":".E","owner":{"A":2,"B":4,"C":8,"D":10,"E":12,"F":12,"MYSECONDSTRUCT":{"A1":50,"A2":12,"MYTHIRDSTRUCT":{"B2":65,"B1":12}}},"key":"E"}]
