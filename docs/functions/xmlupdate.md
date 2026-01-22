# xmlUpdate

Updates a part of an XML document (elements, attributes, or nodes) with a new value.

```javascript
xmlUpdate(node, xpath, value)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| node | xml | Yes |  | The XML node in which to update a value |
| xpath | string | Yes |  | XPath expression to locate the XML fragment to update |
| value | string | Yes |  | The new value |

## Update a specified node (Script syntax)

Updates the text node of root in a simple XML document

```javascript
xmlData = xmlParse('<root><item id="1">Item 1</item><item id="2">Item 2</item><item id="3">Item 3</item></root>');
xmlUpdate(xmlData.root, "xmlText", "hello world!");
writeOutput(xmlData.toString());
```

### Expected Result: <?xml version="1.0" encoding="UTF-8"?>
<root><item id="1">Item 1</item><item id="2">Item 2</item><item id="3">Item 3</item>hello world!</root>
