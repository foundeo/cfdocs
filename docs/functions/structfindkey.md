# structFindKey

 Searches recursively through a substructure of nested arrays,
 structures, and other elements, for structures whose keys
 match the search key in the value parameter.

```javascript
structFindKey(top, value, scope)
```

```javascript
returns array
```

## Member Function Syntax

```javascript
struct.findKey( value, scope )
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| top | any | Yes |  | CFML object (structure or array) from which to start
 search. This attribute requires an object, not a name of
 an object. |  |
| value | string | Yes |  | String or a variable that contains one for which to search. |  |
| scope | string | Yes |  | * one: returns one matching key. Default.
 * all: returns all matching keys | /Users/garethedwards/development/github/cfdocs/docs/functions/structfindkey.md|all |

## Find first match for a nested struct key

```javascript
Beatles = {
  person1: { id: 1, firstName: 'John', lastName: 'Lennon' },
  person2: { id: 2, firstName: 'Paul', lastName: 'McCartney' },
  person3: { id: 3, firstName: 'George', lastName: 'Harrison' },
  person5: { id: 5, firstName: 'Abbey', lastName: 'Road' },
  person4: { id: 4, firstName: 'Ringo', lastName: 'Starr' }
};
myKey = structFindKey( Beatles, 'lastName', 'one' );
writeOutput( serializeJSON( myKey ) );
```

### Expected Result: [{"path":".PERSON3.LASTNAME","owner":{"LASTNAME":"Harrison","FIRSTNAME":"George","ID":3},"value":"Harrison"}]

## Find all matches of a nested struct key

```javascript
Beatles = {
  person1: { id: 1, firstName: 'John', lastName: 'Lennon' },
  person2: { id: 2, firstName: 'Paul', lastName: 'McCartney' },
  person3: { id: 3, firstName: 'George', lastName: 'Harrison' },
  person4: { id: 4, firstName: 'Ringo', lastName: 'Starr' }
};
myKey = structFindKey( Beatles, 'lastName', 'all' );
writeOutput( serializeJSON( myKey ) );
```

### Expected Result: [{"path":".PERSON3.LASTNAME","owner":{"LASTNAME":"Harrison","FIRSTNAME":"George","ID":3},"value":"Harrison"},{"path":".PERSON1.LASTNAME","owner":{"LASTNAME":"Lennon","FIRSTNAME":"John","ID":1},"value":"Lennon"},{"path":".PERSON2.LASTNAME","owner":{"LASTNAME":"McCartney","FIRSTNAME":"Paul","ID":2},"value":"McCartney"},{"path":".PERSON4.LASTNAME","owner":{"LASTNAME":"Starr","FIRSTNAME":"Ringo","ID":4},"value":"Starr"}]

## Find first match for a nested struct key using member function

CF11+ calling the findKey member function on a struct.

```javascript
Beatles = {
  person1: { id: 1, firstName: 'John', lastName: 'Lennon' },
  person2: { id: 2, firstName: 'Paul', lastName: 'McCartney' },
  person3: { id: 3, firstName: 'George', lastName: 'Harrison' },
  person5: { id: 5, firstName: 'Abbey', lastName: 'Road' },
  person4: { id: 4, firstName: 'Ringo', lastName: 'Starr' }
};
myKey = Beatles.findKey( 'lastName', 'one' );
writeOutput( serializeJSON( myKey ) );
```

### Expected Result: [{"path":".PERSON3.LASTNAME","owner":{"LASTNAME":"Harrison","FIRSTNAME":"George","ID":3},"value":"Harrison"}]
