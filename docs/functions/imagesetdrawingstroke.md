# imageSetDrawingStroke

 Sets the drawing stroke for points and lines in subsequent ColdFusion images.

```javascript
imageSetDrawingStroke(name [, attributecollection])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.setDrawingStroke(attributecollection)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The ColdFusion image on which this operation is performed. |
| attributecollection | struct | No |  | The structure used to specify the line attributes<br /><br />width: Pen width, which is measured perpendicularly to the pen trajectory.<br /><br />endcaps: Decoration applied to the ends of unclosed subpaths and dash segments. Subpaths that start and end on the same point are considered unclosed if they do not have a close segment: (butt,round,square)<br /><br />lineJoins: Type of line joins: (bevel,miter,join)<br /><br />miterLimit: The limit to trim a line join that has a mitered join decoration. (Use only when lineJoins = 'miter'.) A line join is trimmed when the ratio of miter length to stroke width is greater than the miterLimit value. The miter length is the diagonal length of the miter, which is the distance between the inside corner and the outside corner of the intersection. The smaller the angle formed by two line segments, the longer the miter length and the sharper the angle of intersection. The default value is 10.0, which trims all angles less than 11 degrees. Trimming miters converts the decoration of the line join to bevel.<br /><br />dashArray: An array of numbers that indicates the dash pattern. For example. if dashArray is (8,4), the dash pattern is 8 pixels solid, 4 pixels blank, 8 pixels solid, 4 pixels blank, and so on.<br /><br />dash_phases: An offset into the dash pattern. For example, a dash_phase of 2, and a dashArray of (8,4) produces the dash pattern of 6 pixels solid, 4 pixels blank, 8 pixels solid, 4 pixels blank, and so on. |

## Tag Syntax

This example shows how to create an attribute collection for the imageSetDrawingStroke function and draws a line with those attributes.

```javascript
<!--- Use the imageNew function to create a ColdFusion image. ---> 
 <cfset myImage=imageNew("",200,200)> 
 <!--- Create an attribute collection to pass to the imageSetDrawingStroke function. Create a stroke that is 10-pixels wide, has round endcaps, and has a dash pattern of (8,4). ---> 
 <cfset attr = structNew()> 
 <cfset attr.width = 2> 
 <cfset attr.endcaps = "round"> 
 <cfset dashPattern = arrayNew(1)> 
 <cfset dashPattern[1] = 8> 
 <cfset dashPattern[2] = 4> 
 <cfset attr.dashArray = dashPattern> 
 <!--- Apply the attribute collection to the imageSetDrawingStroke function for the image. ---> 
 <cfset imageSetDrawingStroke(myImage,attr)> 
 <!--- Draw a line on the ColdFusion image with the drawing stroke attributes. ---> 
 <cfset imageDrawLine(myImage,20,20,40,150)> 
 <!--- Display the image in a browser. ---> 
 <cfimage source="#myImage#" action="writeToBrowser">
```

## Using setDrawingStroke member function

CF11+ Lucee4.5+ Create a new image. With the new image draw a 'W' with a dashed line stroke

```javascript
lineAttributes = { width="2", endcaps="round", dashArray=[8,4]};
imgObj = imageNew("",152,152,"rgb","149c82");
imgObj.setDrawingStroke(lineAttributes);
imgObj.drawLines([0,38,76,114,152],[0,152,0,152,0],"no","no");
cfimage(action="writeToBrowser", source=imgObj);
```
