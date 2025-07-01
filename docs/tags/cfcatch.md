# cfcatch

Used inside a cftry tag. Together, they catch and process
 exceptions in CFML pages. Exceptions are events that
 disrupt the normal flow of instructions in a CFML page,
 such as failed database operations, missing include files, and
 developer-specified events.

### Syntax

```html
<cfcatch>
```

### Script Syntax

```javascript
catch (any e) { }
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| type | string | No | any | `application`: catches application exceptions
`database`: catches database exceptions
`template`: catches ColdFusion page exceptions
`security`: catches security exceptions
`object`: catches object exceptions
`missingInclude`: catches missing include file exceptions
`expression`: catches expression exceptions
`lock`: catches lock exceptions
`custom_type`: catches the specified custom exception type that is defined in a cfthrow tag
 `java.lang.Exception`: catches Java object exceptions
 `searchengine`: catches Verity search engine exceptions
 `any`: catches all exception types | /Users/garethedwards/development/github/cfdocs/docs/tags/cfcatch.md|any |

## A simple try/catch script based example

Create a divide by zero error and then catch it.

```html
try {
    x = 5/0;
}
catch (any e) {
    writeOutput("Error: " & e.message);
}
```

### Expected Result: Error: Division by zero.

## A simple try/catch tag based example

Create a divide by zero error and then catch it.

```html
<cftry>
    <cfset x = 5/0 />
    <cfcatch type="any">
        Error: <cfoutput>#cfcatch.message#</cfoutput>
    </cfcatch>
</cftry>
```

### Expected Result: Error: Division by zero.
