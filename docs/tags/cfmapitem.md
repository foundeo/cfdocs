# cfmapitem

This tag creates markers on the map.

### Syntax

```html
<cfmapitem>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfmapitem();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| longitude | string | No |  | The longitude value for the marker, in degrees. |
| address | string | No |  | The address of the location to set the map marker. |
| tip | string | No |  | A short description of the marker location that appears as a tool tip. |
| latitude | string | No |  | The latitude value for the marker, in degrees. |
| name | string | No |  | The name of the map. |
| showMarkerWindow | boolean | No | YES | When true, the marker infowindow is shown. By default, this is false. This is inherited by all cfmapitem tags. |
| markerWindowContent | string | No |  | Static inner HTML markup to be displayed in the infowindow opened when the marker is clicked. This is mutually exclusive with the markerbind attribute |
| markerIcon | string | No |  | Location of an image file to use as the marker icon. The attributes markericon and markercolor are mutually exclusive. |
| markerColor | string | No |  | Indicates the color of the marker. |
