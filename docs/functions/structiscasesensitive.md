# structIsCaseSensitive

Determines whether a struct is case-sensitive.

```javascript
structIsCaseSensitive(inputStruct)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
inputStruct.isCaseSensitive
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| inputStruct | struct | Yes |  | The struct that needs to be checked for case sensitivity. |

## Full Function with Explicit CaseSensitive

Show when the struct is explicitly set to casesensitive.

```javascript
myStruct1=StructNew("casesensitive");
myStruct1.elem1="elEmOne";
myStruct1.elEm2="eLemtwO";
myStruct1.elem3="elemthree";
writeOutPut(StructIsCaseSensitive(myStruct1));
```

### Expected Result: YES

## Member Function with Explicit CaseSensitive

Show when the struct is explicitly set to casesensitive.

```javascript
myStruct1=StructNew("casesensitive");
myStruct1.elem1="elEmOne";
myStruct1.elEm2="eLemtwO";
myStruct1.elem3="elemthree";
writeOutPut(myStruct1.isCaseSensitive());
```

### Expected Result: YES

## Full Function with Implicit Struct Creation and Default Case Sensitivity

Show when the struct is implicitly created.

```javascript
myStruct4 = {"elem1":"elEmOne","elEm2":"eLemtwO","elem3":"elemthree"}
writeOutPut(StructIsCaseSensitive(myStruct4));
```

### Expected Result: NO
