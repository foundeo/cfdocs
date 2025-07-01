# cfsprydataset

Creates a Spry data set; can use bind parameters to get data from ColdFusion AJAX controls 
 to populate the data set.

### Syntax

```html
<cfsprydataset bind="" name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfsprydataset(bind="", name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| bind | string | Yes |  | A bind expression that returns XML data to populate <br /> the Spry data set. The bind expression can specify a <br /> CFC function or URL and can include bind parameters <br /> that represent the values of ColdFusion controls. For <br /> detailed information on specifying bind expressions, <br /> see HTML form data binding in cfinput. |
| name | string | Yes |  | The name of the Spry data set. |
| onbinderror | string | No |  | The name of a JavaScript function to execute if <br /> evaluating the bind expression results in an error. The <br /> function must take two attributes: an HTTP status <br /> code and a message. <br /> If you omit this attribute, and have specified a global <br /> error handler (by using the <br /> ColdFusion.setGlobalErrorHandler function), the <br /> handler displays the error message; otherwise a <br /> default error pop-up displays. |
| options | string | No |  | A JavaScript object containing options to pass to the <br /> data set. |
| type | string | No |  | Specifies data set type, corresponding to the format of <br /> the data that is returned by the bind expression. |
| xpath | string | No |  | Valid for XML type data sets only. An XPath <br /> expression that extracts data from the XML returned <br /> by the bind expression. The data set contains only the <br /> data that matches the xpath expression. |
