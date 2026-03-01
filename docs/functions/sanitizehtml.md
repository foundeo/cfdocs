# sanitizeHtml

Sanitizes unsafe HTML to protect against XSS attacks

```javascript
sanitizeHtml(string [, policy ])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.sanitizeHTML( policy )
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| string | string | Yes |  | The string to sanitize |  |
| policy | string | No |  | Either a org.owasp.html.PolicyFactory or a list of built in policies which allow and sanitize the named element types (see list below).  If omitted then all of the built-in policies are applied. | /Users/garethedwards/development/github/cfdocs/docs/functions/sanitizehtml.md|TABLES |

## Using default built-in policies

Sanitize a string using built-in policies

```javascript
unsafe = '<p>a <strong>link</strong> <a href="https://www.example.com" onClick="doSomethingBad()">test</a></p>';
result = sanitizeHtml( unsafe );
dump(result);
```

## Specifying a list of built-in policies to exclude certain elements

Only allow sanitized link and block elements

```javascript
unsafe = '<p>a <strong>link</strong> <a href="https://www.example.com" onClick="doSomethingBad()">test</a></p>';
result = sanitizeHtml( unsafe,"LINKS,BLOCKS" );
dump(result);
```

## Member function version

Only allow sanitized link and block elements

```javascript
unsafe = '<p>a <strong>link</strong> <a href="https://www.example.com" onClick="doSomethingBad()">test</a></p>';
result = unsafe.sanitizeHtml( "LINKS,BLOCKS" );
dump(result);
```
