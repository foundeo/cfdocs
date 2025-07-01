# structAppend

Appends one structure to another.

```javascript
structAppend(destStruct, sourceStruct [, overwriteFlag])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
destStruct.append(sourceStruct [, overwriteFlag])
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| destStruct | struct | Yes |  | Structure to append. |
| sourceStruct | struct | Yes |  | Structure that contains the data to append to destStruct |
| overwriteFlag | boolean | No | YES | Whether values in sourceStruct should overwrite corresponding values in
 destStruct or not. |

## Append options to config struct (without overwrite flag)

```javascript
config = {a:0, b:0};
options= {b:1, c:1};
structAppend(config, options, false);
writeOutput( serializeJSON( config ) );
```

### Expected Result: {"A":0,"B":0,"C":1}

## Append options to config struct (same, but using member function)

```javascript
config = {a:0, b:0};
options= {b:1, c:1};
config.append(options, false);
writeOutput( serializeJSON( config ) );
```

### Expected Result: {"A":0,"B":0,"C":1}

## Append options to config struct (with overwrite flag)

```javascript
config = {a:0, b:0};
options= {b:1, c:1};
structAppend(config, options);
writeOutput( serializeJSON( config ) );
```

### Expected Result: {"A":0,"B":1,"C":1}

## Creating a request context from form and url scopes

Demonstrates how to construct a Request Context (rc) that combines the values of the form and url scopes

```javascript
rc = {};
structAppend( rc, form );
structAppend( rc, url );
writeOutput( serializeJSON( rc ) );
```

## Polyfill for earlier versions

In older ColdFusion version where this function is not supported yet, you can fall back to a native java method to achieve the same behavior except that it does not have the `overwriteFlag`.

```javascript
config = {a:0, b:0};
options= {b:1, c:1};
config.putAll(options);
writeOutput( serializeJSON( config ) );
```

### Expected Result: {"A":0,"B":0,"C":1}
