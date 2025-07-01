# cf_socialplugin

Dynamically generate social elements for Facebook, Google +, Twitter.

The supported widgets are:

Like button
Tweet button
Facebook comment box
Google Plus button
Facebook subscribe button
Like box
Activity feed
Follow

### Syntax

```html
<cf_socialplugin .. />
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cf_socialplugin(.. /);
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| type | string | Yes |  |  | /Users/garethedwards/development/github/cfdocs/docs/tags/cf_socialplugin.md|tweet |
| colorscheme | string | No |  |  | /Users/garethedwards/development/github/cfdocs/docs/tags/cf_socialplugin.md|dark |

## Like Button

```html
<cf_socialplugin type = "like"
 url = ""
 layout = "standard|box_count|button_count"
 showfaces = "true|false"
 verb = "like|recommend"
 colorscheme = "light|dark"
 style = ""
 width = ""
 extraoptions = ""
>
```

## LikeBox Button

```html
<cf_socialplugin type = "likebox"
 url = ""
 showfaces = "true|false"
 showstream = "true|false"
 showheader = "true|false"
 colorscheme = "light|dark"
 style = ""
 height = ""
 width = ""
 extraoptions = ""
>
```

## ActivityFeed

```html
<cf_socialplugin type = "activityfeed" 
 appid= "facebook_app_id"
 width = ""
 height = ""
 colorscheme = "light|dark"
 showheader = "true|false"
 action = ""
 linktarget = ""
 recommendations = ""
 style = ""
 extraoptions = ""
>
```

## Follow Button

```html
<cf_socialplugin type = "follow"
 showcount= "true|false"
 buttonsize= "medium|large"
 language = "en|fr|.........."
 showusername = "true|false"
 username = ""
 style = ""
 extraoptions = ""
>
```

## PlusOne Button

```html
<cf_socialplugin type = "plusone"
 url = "url to plus one"
 buttonsize= "small|medium|large|tall"
 language = "en|fr|.........."
 width = ""
 annotation = "none|inline|bubble"
 style = ""
 extraoptions = ""
>
```

## Comment Box

```html
<cf_socialplugin type = "commentbox"
 url = "url"
 width= ""
 colorscheme = "dark|light"
 numberofposts = ""
 style = ""
 extraoptions = ""
>
```

## Subscribe Button

```html
<cf_socialplugin type = "subscribe"
 url = "profile to subscribe"
 width= ""
 colorscheme = "dark|light"
 showfaces = "true|false"
 layout = "standard|button_count|box_count"
 style = ""
 extraoptions
>
```

## Tweet Button

```html
<cf_socialplugin type = "tweet"
 url = "url to share"
 tweettext = "default tweet text"
 language = "en|fr|.........."
 count = "none|vertical|horizontal"
 hashtag = "comma separated hash tags appended to 
 tweet text"
 buttonsize = "small|large"
 via = ""
 recommend = ""
 style = ""
 extraoptions = ""
>
```
