# rand

 Generates a pseudo-random number in the range 0 - 1.

```javascript
rand([algorithm])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| algorithm | string | No | CFMX_COMPAT | The algorithm to use to generated the random number. | /Users/garethedwards/development/github/cfdocs/docs/functions/rand.md|IBMSecureRandom |

## simple example Using rand()

To generate a random number between 0 to 1

```javascript
writeOutput( rand() );
```

## simple example Using rand() with algorithm

To generate a random number between 0 to 1 by using CFMX_COMPAT algorithm

```javascript
writeOutput( rand('CFMX_COMPAT') );
```
