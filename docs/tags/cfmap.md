# cfmap

Embeds a Google map within a ColdFusion web page

### Syntax

```html
<cfmap>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfmap();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| width | string | No |  | Map width, in pixels. |
| centerlongitude | numeric | No |  | The longitude value for the location, in degrees |
| centeraddress | string | No |  | The address of the location, which is set as the center of the map. |
| continuouszoom | boolean | No |  | Whether to provide zoom control that enables smooth zooming for the map |
| type | string | No |  | Type of the Google map |
| title | string | No |  | Title of the panel |
| zoomcontrol | string | No |  | Whether to enable zoom control |
| tip | string | No |  | A short description of the center location that appears as a tool tip. |
| overview | boolean | No |  | Whether to add an Overview panel to the map |
| hideborder | boolean | No |  | Whether to hide border for surrounding panel |
| doubleclickzoom | boolean | No |  | Whether to enable double-click zoom |
| key | string | No |  | The API key of the map. |
| collapsible | boolean | No |  | Whether to provide a collapsible property for the surrounding panel |
| zoomlevel | numeric | No |  | Specifies the starting zoom value |
| height | string | No |  | Height of the map, in pixels |
| centerlatitude | numeric | No |  | The latitude value for the location, in degrees. |
| onload | string | No |  | Custom JavaScript function that runs after the map loads.. |
| typecontrol | string | No |  | What type of typecontrol to provide. Basic includes "map, satellite, hybrid" and Advanced includes "map, satellite, hybrid, earth, terrain" |
| displayscale | boolean | No |  | Whether to enable scale control |
| name | string | No |  | Name of the map. |
| scrollwheelzoom | boolean | No | YES | Whether to enable mouse wheel zooming control |
| markerBind | string | No |  | Uses a bind expression to fetch markup to be displayed in the infowindow opened when the marker is clicked. This is mutually exclusive with the markerwindowtext attribute. This is inherited by all cfmapitem tags |
| showMarkerWindow | boolean | No | YES | When true, the marker infowindow is shown. By default, this is false. This is inherited by all cfmapitem tags. |
| markerWindowContent | string | No |  | Static inner HTML markup to be displayed in the infowindow opened when the marker is clicked. This is mutually exclusive with the markerbind attribute |
| markerIcon | string | No |  | Location of the icon to use for the marker. |
| markerColor | string | No |  | marker color in hexadecimal value. |
| onError | string | No |  | The JavaScript function to run when there is a Google map API error.
The JavaScript function is passed with two parameters, Google map status code and error message. |
| showCenterMarker | boolean | No | YES | Whether to display the marker icon that identifies the map center |
| showScale | boolean | No | YES | Whether to show scale control |
