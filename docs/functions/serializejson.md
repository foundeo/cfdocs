# serializeJSON

Converts a ColdFusion value into a JSON (JavaScript Object Notation) string.

```javascript
serializeJSON(data[, queryFormat[, useSecureJSONPrefix[, useCustomSerializer]]])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
someVar.toJSON([queryFormat[, useSecureJSONPrefix[, useCustomSerializer]]])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| data | any | Yes |  | A serializable ColdFusion data value |
| queryFormat | any | No | row | This specifies how to serialize ColdFusion queries. Prior to CF11+, this would only accept Boolean values. If it is a Boolean, the false value is equivalent to 'row' and true is 'column'. |
| useSecureJSONPrefix | boolean | No | false | CF11+ When Prefix Serialized JSON is enabled in the ColdFusion Administrator, then by default this function inserts the secure JSON prefix at the beginning of the JSON. |
| useCustomSerializer | boolean | No | true | CF11+ Use custom serializer if defined. See: https://helpx.adobe.com/coldfusion/developing-applications/changes-in-coldfusion/restful-web-services-in-coldfusion.html |

## Serialize a Struct

Serialize a CF Struct into a JSON representation

```javascript
person = {name="Pete Freitag", company="Foundeo"};
writeOutput( serializeJSON(person) );
```

### Expected Result: {"COMPANY":"Foundeo","NAME":"Pete Freitag"}

## Serialize a Struct with Member Syntax

Serialize a CF Struct into a JSON representation using toJSON

```javascript
person = {name="Pete Freitag", company="Foundeo"};
writeOutput( person.toJSON() );
```

### Expected Result: {"COMPANY":"Foundeo","NAME":"Pete Freitag"}

## Lower Case Keys

Same as above but they variable names are case-sensitive by quoting them.

```javascript
person = {"name"="Pete Freitag", "company"="Foundeo"};
writeOutput( serializeJSON(person) );
```

### Expected Result: {"company":"Foundeo","name":"Pete Freitag"}

## ACF Possible Issues

Adobe ColdFusion may incorrectly serializes some strings if they can be automatically converted into other types, like numbers or booleans. One workaround is to use a CFC with cfproperty to specify types. Another workaround is to prepend chr(2) to the value and it will be forced to a string, however that is an unofficial / undocumented workaround.

```javascript
person = { "phone"="123456789", "firstname"="no","lastname"="yes" };
writeOutput( serializeJson(person) );
```

### Expected Result: {"phone":123456789,"firstname":false,"lastname":true}

## Using setMetadata to force types

As of CF2016.0.2+ you can call `setMetadata()` as a member function on a struct to force a type

```javascript
myStruct = {"zip"="00123"};
myStruct.setMetadata( { "zip": "string" } );
writeOutput(serializeJSON(myStruct));
```

### Expected Result: {"zip":"00123"}

## Serialize a Query as an array of structs

Serialize a CF Query into a JSON representation of an array of structs

```javascript
news = queryNew("id,title",
    "integer,varchar",
    [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
writeOutput(serializeJSON(news, "struct"));
```

### Expected Result: [{"ID":1,"TITLE":"Dewey defeats Truman"},{"ID":2,"TITLE":"Man walks on Moon"}]
