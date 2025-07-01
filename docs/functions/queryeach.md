# queryEach

Iterates over query rows and passes each row per iteration to a callback function

```javascript
queryEach(query, function(row [, currentRow] [, query] ){} [, parallel] [, maxThreads])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
query.each(function(row [, currentRow] [, query] ){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | query to loop over |
| callback | any | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| parallel | boolean | No |  | Lucee4.5+ Executes closures parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ Maximum number of threads executed
If `parallel` argument is set to false it will be ignored |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| row | struct | No | A struct with all of the columns for the current iteration
| currentRow | numeric | No | The value for the current iteration
| query | query | No | A reference of the original struct

## Iterate over query rows instead of cfloop()

ACF2016+ and Lucee5+

```javascript
<cfscript>
    news = queryNew("id,title",
    	"integer,varchar", [{
    		"id": 1,
    		"title": "Dewey defeats Truman"
    	}, {
    		"id": 2,
    		"title": "Man walks on Moon"
    	}]
    );
    function newsRow(row) {
        writeOutput("<tr>");
            writeOutput("<td>#row.id#</td>");
            writeOutput("<td>#row.title#</td>");
        writeOutput("</tr>");
    }
</cfscript>
<table>
    <cfscript>
        queryEach(news,newsRow);
    </cfscript>
</table>
```

### Expected Result: 1 Dewey defeats Truman
2 Man walks on Moon

## Iterate over query rows instead of cfloop()

Lucee5+

```javascript
<cfscript>
    news = queryNew("id,title",
    	"integer,varchar", [{
    		"id": 1,
    		"title": "Dewey defeats Truman"
    	}, {
    		"id": 2,
    		"title": "Man walks on Moon"
    	}]
    );
    function newsRow(row) {
        writeOutput("<tr>");
            writeOutput("<td>#row.id#</td>");
            writeOutput("<td>#row.title#</td>");
        writeOutput("</tr>");
    }
</cfscript>
<table>
    <cfoutput>#queryEach(news,newsRow)#</cfoutput>
</table>
```

### Expected Result: 1 Dewey defeats Truman
2 Man walks on Moon
