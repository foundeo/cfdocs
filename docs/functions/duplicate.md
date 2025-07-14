# duplicate

Returns a clone (or deep copy) of an object or variable, leaving no reference to the original. Use this function to duplicate complex structures, such as nested structures and queries. When you duplicate a CFC instance, the entire CFC contents is copied, including the values of the variables in the `this` scope at the time you call the `Duplicate` function. Thereafter, the two CFC instances are independent, and changes to one copy, for example by calling one of its functions, have no effect on the other copy. Note: With this function, you cannot duplicate a COM, CORBA, or JAVA object returned from the cfobject tag or the CreateObject function. If an array element or structure field is a COM, CORBA, or JAVA object, you cannot duplicate the array or structure.

```javascript
duplicate(object)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| object | any | Yes |  | Name of the object to duplicate. |
| deepcopy | boolean | No | true | Lucee Only. If set to `true` (default) the child elements are also cloned. If `false`, child elements retain a reference to their corresponding element in the original object. Note: deeply cloned elements that are not native Lucee objects (i.e. Java objects) may change data type when they can be converted to a native CFML object. |

## Changing a struct compared to changing its copy

`myNewStruct` holds a reference to `myStruct` so if you change `myNewStruct`, `myStruct` is changed accordingly as well, because they are the same struct just assigned to two variables.
In comparison `myOtherNewStruct` is a copy so if you change `myOtherNewStruct`, `myStruct` stays untouched because with the duplicate, a new, unique structure with the same key-value pairs is created thus they do not share the same reference

```javascript
myStruct = {'foo': 'Lorem ipsum', 'bar': 'baz'};

myNewStruct = myStruct;
myOtherNewStruct = duplicate(myStruct);

myNewStruct.foo = 'ahmet sun';
myOtherNewStruct.foo = 'dolor sit';

writeOutput(myStruct.foo&' → '&myNewStruct.foo&' → '&myOtherNewStruct.foo);
```

### Expected Result: ahmet sun → ahmet sun → dolor sit
