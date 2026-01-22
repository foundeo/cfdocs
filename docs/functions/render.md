# render

Executes CFML/Lucee code that you provide as a string.

```javascript
render(CFML[, dialect ])
```

```javascript
returns void
```

## Member Function Syntax

```javascript

```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| CFML | string | Yes |  | String to evaluate including some CFML/Lucee code | /Users/garethedwards/development/github/cfdocs/docs/functions/render.md| |
| dialect | string | No | current template's dialect | The dialect you want details for | /Users/garethedwards/development/github/cfdocs/docs/functions/render.md|Lucee |

## Execute replace using render

Description of the code example

```javascript
str = 'hello world';
savecontent variable="changed"{
render("#replace(str,'world','universe')#!");
}
writeOutput(str);
writeOutput(changed);
```

### Expected Result: hello worldhello universe!
