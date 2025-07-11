# invoke

Invokes an object method and returns the result of the invoked method.

```javascript
invoke(instance, methodName [, arguments])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| instance | string | Yes |  | Name or instance of a CFC or an instance of a Java, .NET, COM or CORBA object to instantiate. For a CFC, it can be an empty string when invoking a method within the same ColdFusion page or component. |
| methodname | string | Yes |  | The name of the method (or operation for webservice) to invoke. |
| arguments | any | No |  | An array of positional arguments or a struct of named arguments to pass into the method. |

## Invoke a Java Method

Invokes the size method on a new HashMap object, which should return 0

```javascript
invoke(createObject("java", "java.util.HashMap"), "size")
```

### Expected Result: 0

## Invoke a method on a component

Invokes the method named 'test' on the component Test.cfc with one parameter

```javascript
obj = createObject("component", "Test");
invoke(obj, "test", {parameter="Test Data"});
```

## Invoke a method on a webservice with one argument

Invokes the method named 'test' on the webservice Test.cfc with one argument

```javascript
obj = createObject("webservice", "https://example.com/test.cfc?wsdl");
invoke(obj, "test", {argument1="Test Data"});
```

## Invoke a method on a webservice with multiple arguments

Invokes the method named 'test' on the webservice Test.cfc with multiple arguments

```javascript
obj = createObject("webservice", "https://example.com/test.cfc?wsdl");
invoke(obj, "test", {argument1="Test Data", argument2="More Data", argument3="Still More Data"});
```
