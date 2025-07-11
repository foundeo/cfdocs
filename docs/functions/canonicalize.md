# canonicalize

Canonicalize or decode the input string. Canonicalization is simply the operation of reducing a possibly encoded string down to its simplest form. This is important because attackers frequently use encoding to change their input in a way that will bypass validation filters, but still be interpreted properly by the target of the attack. Note that data encoded more than once is not something that a normal user would generate and should be regarded as an attack.

```javascript
canonicalize(input, restrictMultiple, restrictMixed)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| input | string | Yes |  | String to be encoded. |
| restrictMultiple | boolean | Yes |  | If set to true, multiple encoding is restricted. This argument can be set to true to restrict the input if multiple or nested encoding is detected. If this argument is set to true, and the given input is multiple or nested encoded using one encoding scheme an error will be thrown. |
| restrictMixed | boolean | Yes |  | If set to true, mixed encoding is restricted. This argument can be set to true to restrict the input if mixed encoding is detected. If this argument is set to true, and the given input is encoded using mixed encoding, an error will be thrown. |
| throwOnError | boolean | No | NO | CF11+ If the value of this argument is true, and if restrictMultiple or restrictMixed is true and the given input contains mixed or multiple encoded strings, an exception will be thrown.<br />If the value of this argument is false, an empty string will be returned instead of an exception. |

## Canonicalize the simple HTML entity encoded string

Canonicalize the simple HTML entity encoded string.

```javascript
<cfoutput>#canonicalize("&lt;",false,false)#</cfoutput>
```

### Expected Result: <

## Enforce multiple and mixed encoding detection

(Adobe CF11+ example with `throwOnError` parameter set to true) Enforce multiple and mixed encoding detection. Mixed encoding is detected as the data is encoded using URL and HTML entity encoding. Multiple Encoding is also detected.

```javascript
<cftry>
	<cfoutput>#canonicalize("%26lt; %26lt; %2526lt%253B %2526lt%253B %2526lt%253B",true,true, true)#</cfoutput><br/>
	<cfcatch type="any" >
		<!--- throws Error when throwOnError set to true (CF11+) when mixed or multiple encoding is detected. --->
		<cfdump var="#cfcatch#" >
	</cfcatch>
</cftry>
```

### Expected Result: Error Message: Input validation failure. The log message will contain more detailed information on the error.

## Enforce multiple and mixed encoding detection

(Adobe CF11+ example with `throwOnError` parameter set to false) Enforce multiple and mixed encoding detection. Mixed encoding is detected as the data is encoded using URL and HTML entity encoding. Multiple Encoding is also detected.

```javascript
<!--- an Empty string will be returned if the throwOnError is set to false and multiple or mixed encoding is found --->
<cfoutput>#canonicalize("%26lt; %26lt; %2526lt%253B %2526lt%253B %2526lt%253B",true,true, false)#</cfoutput>
```

### Expected Result: [Empty string]

## Enforce mixed but not multiple encoding detection returns an Empty String

Enforce mixed but not multiple encoding detection returns an Empty String.

```javascript
<cfoutput>#canonicalize("%25 %2526 %26##X3c;script&##x3e; &##37;3Cscript%25252525253e",false,true)#</cfoutput>
<!--- The following example is purely to show the error when using `throwOnError` parameter set to true (Adobe CF11+) --->
<cftry>
	<cfoutput>#canonicalize("%25 %2526 %26##X3c;script&##x3e; &##37;3Cscript%25252525253e",false,true, true)#</cfoutput><br/>
	<cfcatch type="any" >
		<!--- throws Error when throwOnError set to true. --->
		<cfdump var="#cfcatch#" >
	</cfcatch>
</cftry>
```

### Expected Result: [Empty string]

## Mixed and multiple encoding detected

Mixed encoding is detected as the data is encoded using URL and HTML entity encoding. Multiple Encoding is also detected.

```javascript
<!--- Decodes the string using both percent and HTML Entity encodings as the flags were set to false --->
<cfoutput>#canonicalize("%26lt; %26lt; %2526lt%253B %2526lt%253B %2526lt%253B",false,false)#</cfoutput><br/>
<cfoutput>#canonicalize("&##X25;3c",false,false)#</cfoutput><br/>
<cfoutput>#canonicalize("&##x25;3c",false,false)#</cfoutput>
```

### Expected Result: < < < < <
<
<

## Simple JavaScript decoding

http://www.planetpdf.com/codecuts/pdfs/tutorial/jsspec.pdf see section 2.7.5 for JS Encoding

```javascript
<cfoutput>#canonicalize("\\U003C",false,false)#</cfoutput><br/>
<cfoutput>#canonicalize("\\X3C",false,false)#</cfoutput>
```

### Expected Result: <
<
