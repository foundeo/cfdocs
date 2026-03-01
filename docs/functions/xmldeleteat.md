# xmlDeleteAt

Removes a node from an XML document by specifying the position

```javascript
xmlDeleteAt(xmlObject, position)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| xmlObject | xml | Yes |  | The XML object |
| position | numeric | Yes |  | The position of the child node to be deleted |

## Delete a specified XML node (Script syntax)

Deletes a single node in a simple XML document

```javascript
xmlData = xmlParse('<root><item id="1">Item 1</item><item id="2">Item 2</item><item id="3">Item 3</item></root>');
xmlDeleteAt(xmlData.root.item, 1);
writeOutput(xmlData.toString());
```

### Expected Result: <?xml version="1.0" encoding="UTF-8"?>
<root><item id="2">Item 2</item><item/><item id="3">Item 3</item></root>
