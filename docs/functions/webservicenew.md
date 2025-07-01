# webserviceNew

Creates a web service proxy object, a reference to a remote webservice. This function is a replacement for `createObject("webservice",...)`.

```javascript
webserviceNew(url)
```

```javascript
returns function
```

## Member Function Syntax

```javascript

```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| url | string | Yes |  | URL of the Webservice |
| arguments | struct | No |  | Additional arguments
(URL params are not allowed in url itself and must be set here) |

## Get country data from a webspace

Get country by country code and output country name

```javascript
ws = webserviceNew('http://www.webservicex.net/country.asmx?wsdl');
country = ws.GetCountryByCountryCode('us');
writeOutput(XMLParse(country).NewDataSet.Table.name.XmlText);
```

### Expected Result: United States
