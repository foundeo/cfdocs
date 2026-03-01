# xmlSearch

Get XML values according to given xPath query

```javascript
xmlSearch(xmlNode, xpath [, params])
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| xmlNode | xml | Yes |  | An XML document object |
| xpath | string | Yes |  | xPath expression |
| params | struct | No |  | CF10+ A struct with key value pairs to be used a variables within the xPath Expression |

## Read specific properties from XML collection

XPath extracts 'name' property from every user given in the XML collection

```javascript
<cfsavecontent variable="xmlstring">
    <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
    <users>
        <user id="1">
            <name>Me</name>
        </user>
        <user id="2">
            <name>You</name>
            <address>
                <street>Long Road</street>
            </address>
        </user>
    </users>
</cfsavecontent>
<cfscript>
    xml = XMLParse(xmlstring);
    result = xmlSearch(xml,'users//name');
    userlist = '';
    for(i = 1; i <= ArrayLen(result); i++) {
        userlist = ListAppend(userlist,result[i].XmlText);
    }
    writeOutput(userlist);
</cfscript>
```

### Expected Result: Me,You
