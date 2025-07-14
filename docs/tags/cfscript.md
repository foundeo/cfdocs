# cfscript

Encloses a code block that contains cfscript statements.

 You cannot use some CFML reserved words in this tag. You
 cannot put a user-defined function whose name begins with any
 of these strings within this tag:
 cf,cf_,_cf,CFML,CFML_,_CFML

### Syntax

```html
<cfscript>
```

## Script Syntax

```html
<cfscript> 
 x = y = 1; 
 writeDump(x); 
 </cfscript>
```

## semi-colons are optional (CF2018+)

CF2018+ Optional to use semicolons at the end of a statement.

```html
<cfscript> 
 a = 5 
 b = 10 
 writeDump(a+b) 
 </cfscript>
```

### Expected Result: 15
