# isSpreadsheetFile

Checks if the input is a spreadsheet file or not

```javascript
isSpreadsheetFile(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | string | Yes |  | A file path |

## Simple isSpreadsheetFile example

Here we have simple example to check if the given file is a spreadsheet or not.

```javascript
<form method="post" enctype="multipart/form-data">
	<input type="file" name="myfile" />
	<input type="submit" name="submit" value="submit">
</form>
<cfif structKeyExists(form, "submit")>
	<cfif isSpreadsheetFile(form.myfile)>
		<cffile action="upload" destination="#getTempDirectory()#" filefield="form.myfile" nameconflict="makeunique">
	</cfif>
</cfif>
```
