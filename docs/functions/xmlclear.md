# xmlClear

Clears a given XML node from an XML document

```javascript
xmlClear(node)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| node | xml | Yes |  | The XML node to clear |

## Clear an XML node (Script syntax)

Clears a single node in a simple XML document

```javascript
xmlData = xmlParse('<root><item id="1">Item 1</item><item id="2">Item 2</item><item id="3">Item 3</item></root>');
xmlClear(xmlData.root.item[2]);
writeOutput(xmlData.toString());
```

### Expected Result: <?xml version="1.0" encoding="UTF-8"?>
<root><item id="1">Item 1</item><item/><item id="3">Item 3</item></root>
