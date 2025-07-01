# structIsEmpty

 Determines whether a structure contains data.

```javascript
structIsEmpty(structure)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someStruct.isEmpty()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Structure to test |

## Test to see if a struct is empty

```javascript
myStruct={};
writeOutput( structIsEmpty(myStruct) );
```

### Expected Result: true

## Test to see if a struct contains something

```javascript
myStructWithThings={ "one": "foo", "two": "bar"};
writeOutput( structIsEmpty(myStructWithThings) );
```

### Expected Result: false

## Using Member Function

CF11+ Lucee4.5+

```javascript
myStruct={};
writeOutput( myStruct.IsEmpty() );
```

### Expected Result: true
