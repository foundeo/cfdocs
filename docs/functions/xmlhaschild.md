# xmlHasChild

Checks if the XML document object has a child node

```javascript
xmlHasChild(xmlObject [, childName])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| xmlObject | xml | Yes |  | The XML document object to be checked for child nodes |
| childName | string | No |  | The name of the child node to check if it exists. If not provided, the root is checked. |

## Check for children (Script syntax)

Checks the existence of children for two separate nodes in a simple XML document

```javascript
xmlData = xmlParse('<root><item id="1">Item 1</item><item id="2">Item 2</item><item id="3">Item 3</item></root>');
writeOutput(xmlHasChild(xmlData, "root"));
writeOutput(" " & xmlHasChild(xmlData, "item"));
```

### Expected Result: YES NO
