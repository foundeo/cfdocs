# Error handling

## onError function

Your application's onError function can be defined to handle errors gracefully and to log/alert important ones. The method is called when an error is thrown.

```cfml
// log to a folder defined e.g. in onApplicationStart
void function onError(e) {
    local.id = CreateUUID();
    local.logfile = this.errorFolder & "/" & local.id & ".html";
    writeDump(var=arguments.e,output=local.logfile,format="html");
    writeOutput("<h1>Sorry an Error has occurred</h2>");
}
```

## Status codes

Using an onError handler will stop the application setting a 500 status code that is normally sent with a system error. Sometimes you will still want to set these status codes, in which case you will need to use 

```cfml
cfheader(statuscode = 500);
```

You can also set other status codes such as 404 not found or 400 bad request. 

## Custom error pages

There is a function cferror that allows you to set custom templates for different types of errors. If you are using onError, it's usually better not to use this and include a template according to the error type.

A missing page error has an error type of `missinginclude`.

```cfml
switch(e.type) {
    case "missingInclude":
        cfheader(statuscode = 404);
        include(template="/_errors/404.cfm");
        break;
    default:
        cfheader(statuscode = 500);
        include(template="/_errors/500.cfm");
        break;
}
```

You might want to do a redirect here instead, in which case you would use `location`, usually with a 301 status to indicate the page has permanently moved.

```cfml
location("mypage.cfm", "false", "301");
```

## Throwing errors

With an `onError` function in place you can deliberately throw your own errors to ensure they are handled correctly.

```cfml
if (!isValid("integer",url.id)) {
   throw(message="Invalid page ID",type="badrequest");
}
```

This allows you to specify your own error type. In the example a custom value of `badrequest` is used. In the on error handler you might choose to ignore this type of error so as not to flood your alerting with errors.

If you want to include extra information in the throw statement, you can use the `errorcode`,`detail`, and `extendedinfo` arguments to `throw`.

### Using extendedinfo for debugging

`extendedinfo` is a text string, but it's common practice to use it as a JSON serialized store of debug information.

```cfml
local.extendedinfo = {"myobj"=local.myobj};
throw(
    extendedinfo = SerializeJSON(local.extendedinfo),
    message      = "Error", 
    detail       = "Further info",
    errorcode    = "xxx"     
);
```

You can then use your application.onError to deserialize this field and handle the result.

## Try / Catch / Finally

Where a function is likely to be error prone, such as an http connection, you should wrap it in a try-catch-block.

The catch method will run if an error is thrown. Note that cfhttp requires a setting to throw an error if it fails, otherwise the status code can be inspected and errors thrown manually.

```cfml
try {
    cfhttp(url=webaddr,throwonerror=1,result=myres);
}
catch (any e) {
   // handle likely connection issue.
}
```

### Rethrowing an error

Often after checking the details of an error you will want to pass it back to the error handling system. This is known as "rethrowing" an error. In cfscript, you use the `object` argument to do this:

```cfml
try {
    // something
}
catch (any e) {
    if (some_condition) {
        // carry on regardless
    }
    else {
        throw(object=e);
    }
}
```

### Using finally

A finally clause in a try/catch block will run whether an error is thrown or not. This is useful for cleaning things up, especially when using file handles.

```cfml

var fileObject = fileOpen("/path/to/file.txt");

try
{
    while (!fileIsEOF(fileObj)) {
        line = fileReadLine(fileObj);
        // logic for each line
    }
}

catch(any e)
{
    // raise some sort of flag but don't throw!
}

finally
{
    fileClose(fileObject);
}
```

## HTTP request response

In the age of REST-API usage error responses need to be returned in JSON format. A typical response would include an http status and details of the error.

```cfml
errors = [];
if (!isValid("integer", Form.age)) {
    arrayAppend(errors,'Your value for "age" must be numeric!');
}
if (len(Form.name) < 8) {
    arrayAppend(errors,'Your value for "name" is too short. Type 8 letters at least!');
}

if (arrayLen(errors)) {
    statuscode = 400;
    message = errors;
}
else {
    statuscode = 300;
    message = 'OK';
}

cfheader(statuscode = statuscode);
writeOutput(serializeJSON({'status': statusCode, 'msg': message}));
```

A logic clause in your application.onError can be used to determine whether a request is a JSON request and return the error in a suitable format.

When using this approach, you can use the status code to indicate a range of client errors such as 401 to indicate a login is required or 400 to indicate a validation failure as in the last example.

```cfml
if (request.prc.isAjaxRequest) {
     local.statuscode = e.type eq "validation" ? 400 : 500;
     cfheader(statuscode = local.statuscode);
     writeOutput(serializeJSON({'status': local.statuscode, 'msg': e.message}));
}
else {
    // normal output
}
```    


   
