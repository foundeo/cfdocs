# duplicate

Returns a clone (or deep copy) of an object or variable, leaving no reference to the original. Use this function to duplicate complex structures, such as nested structures and queries. When you duplicate a CFC instance, the entire CFC contents is copied, including the values of the variables in the `this` scope at the time you call the `Duplicate` function. Thereafter, the two CFC instances are independent, and changes to one copy, for example by calling one of its functions, have no effect on the other copy. Note: With this function, you cannot duplicate a COM, CORBA, or JAVA object returned from the cfobject tag or the CreateObject function. If an array element or structure field is a COM, CORBA, or JAVA object, you cannot duplicate the array or structure.

```javascript
duplicate(object)
```

```javascript
returns any
```
