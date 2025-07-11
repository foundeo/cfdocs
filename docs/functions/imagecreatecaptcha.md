# imageCreateCaptcha

 Create a Completely Automated Public Turing test to tell Computers and Humans Apart (CAPTCHA) image, a distorted text image that is human-readable, but not machine-readable, used in a challenge-response test for preventing spam.

```javascript
imageCreateCaptcha (height, width, text [, difficulty, fonts, fontsize)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| height | numeric | Yes |  | Height in pixels of the image. |
| width | numeric | Yes |  | Width in pixels of the image. |
| text | string | Yes |  | Text string displayed in the CAPTCHA image. Use capital letters for better readability. Do not include spaces because users cannot detect them in the resulting CAPTCHA image.. |
| difficulty | string | No |  | Level of complexity of the CAPTCHA text. Specify one of the following levels of text distortion: low, medium, and high |
| font | string | No |  | One or more valid fonts to use for the CAPTCHA text. Separate multiple fonts with commas. ColdFusion supports only the system fonts that the JDK can recognize. For example, TTF fonts in the Windows directory are supported on Windows. |
| fontsize | numeric | No |  | Font size of the text in the CAPTCHA image. The value must be an integer. |

## Tag Syntax

```javascript
<h1>imageCreateCaptcha Method</h1> 
 <cfset funcimg1 = imageCreateCaptcha(35,400,'loner')>
 <cfimage action='writetoBrowser' source='#funcimg1#'>
 <cfset funcimg2 = imageCreateCaptcha(35,400,'loner','high')>
 <cfimage action='writetoBrowser' source='#funcimg2#'>
 <cfset funcimg3 = imageCreateCaptcha(35,400,'loner','high','serif,sansserif', '24')>
 <cfimage action='writetoBrowser' source='#funcimg3#'>
```
