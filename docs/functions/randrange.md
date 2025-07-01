# randRange

Generates a random integer between two specified numbers.
 Requests for random integers that are greater than 100,000,000
 result in non-random numbers, to prevent overflow during
 internal computations.

```javascript
randRange(number1, number2 [, algorithm])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| number1 | numeric | Yes |  |  |  |
| number2 | numeric | Yes |  |  |  |
| algorithm | string | No | CFMX_COMPAT | CF7+ The algorithm to use to generated the random number. | /Users/garethedwards/development/github/cfdocs/docs/functions/randrange.md|NativePRNGNonBlocking |

## Tag Example

The following example calls the Randomize function to seed the random number generator and generates 10 random numbers.

```javascript
<cfset r = randomize(7, "SHA1PRNG")> 
 <cfset local.myInt = 1 /> 
 <cfset local.myInt2 = 999 /> 
<!--- Generate and display the random number. ---> 
 <cfoutput><p><b> 
 RandRange returned: #randRange(local.myInt, local.myInt2, "SHA1PRNG")# 
 </cfoutput></b></p>
```

## Script Example

```javascript
<cfscript> 
 bytes = []; 
 bytecount = 32; 
 arrayResize( bytes, byteCount ); 
 for (  i = 1 ; i <= byteCount ; i++ ) { 
  bytes[ i ] = randRange( -128, 127, "SHA1PRNG" ); 
         } 
 </cfscript> 
 <cfdump var="#bytes#" />
```
