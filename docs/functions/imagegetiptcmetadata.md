# imageGetIPTCMetadata

 Retrieves the International Press Telecommunications Council (IPTC )headers in a ColdFusion image as a structure.

```javascript
imageGetIPTCMetadata(name)
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
someImage.getIPTCMetadata()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The image on which this operation is performed. |

## Using getIPTCMetadata member function

CF11+ Extract the IPTC meta data from IPTC image (https://code.google.com/p/metadata-extractor/wiki/SampleOutput)

```javascript
imgObj = imageRead("http://sample-images.metadata-extractor.googlecode.com/git/FujiFilm%20FinePixS1Pro%20(1).jpg");
x = imgObj.getIPTCMetadata();
writeDump(x);
```
