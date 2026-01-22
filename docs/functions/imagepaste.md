# imagePaste

 Takes two images and an (x,y) coordinate and draws the second image over the first image with the upper-left corner at coordinate (x,y).

```javascript
imagePaste(image1, image2, x, y)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someImage.paste(image2, x, y)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| image1 | string | Yes |  | The bottom image. |
| image2 | string | Yes |  | The image that is pasted on top of image1. |
| x | numeric | Yes |  | The x coordinate where the upper-left corner of image2 is pasted. |
| y | numeric | Yes |  | The y coordinate where the upper-left corner of image2 is pasted. |

## Tag Syntax

This example shows how to copy a small rectangular area of one image and paste it over a larger image.

```javascript
<!--- Create a ColdFusion image from an existing JPEG file and name it "myImage1". ---> 
 <cfimage source="../cfdocs/images/artgallery/jeff05.jpg" name="myImage1"> 
 <!--- Create a ColdFusion image from an existing JPEG file and name it "myImage2". ---> 
 <cfimage source="../cfdocs/images/artgallery/maxwell01.jpg" name="myImage2"> 
 <!--- Copy a rectangular region of myImage1. ---> 
 <cfset resImage = imageCopy(myImage1,1,1,50,50)> 
 <!--- Paste the rectangular area over myImage2. ---> 
 <cfset imagePaste(myImage2,resImage,100,100)> 
 <!--- Write the second ColdFusion image to result.jpg. ---> 
 <cfimage source="#myImage2#" action="write" destination="test_myImage.jpg" overwrite="yes"> 
 <!--- Display the two source images and the new image. ---> 
 <img src="../cfdocs/images/artgallery/jeff05.jpg"/> 
 <img src="../cfdocs/images/artgallery/maxwell01.jpg"/> 
 <img src="test_myImage.jpg"/>
```

## Using paste member function

CF11+ Lucee4.5+ Copy the center of the image, rotate it 180 degrees about its center and paste it back into the original image

```javascript
imgObj = imageRead("http://cfdocs.org/apple-touch-icon.png");
copiedImgObj = imgObj.copy(50,50,50,50);
copiedImgObj.rotate(25,25,180,"bicubic");
imgObj.paste(copiedImgObj,50,50);
cfimage(action="writeToBrowser", source=imgObj);
```
