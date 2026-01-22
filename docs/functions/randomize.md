# randomize

 Seeds the pseudo-random number generator with an
 integer number, ensuring repeatable number patterns.

```javascript
randomize(number [, algorithm])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| number | numeric | Yes |  |  |  |
| algorithm | string | No | CFMX_COMPAT | The algorithm to use to generated the random number. | /Users/garethedwards/development/github/cfdocs/docs/functions/randomize.md|IBMSecureRandom |

## Tag Example

The following example calls the Randomize function to seed the random number generator and generates 10 random numbers.

```javascript
<cfset randomize(12345)> <!--- if one was to remove this line, the random numbers are different every time ---> 
 <cfloop index="i" from="1" to="10"> 
 <cfoutput>#rand()#</cfoutput> 
 </cfloop>
```
