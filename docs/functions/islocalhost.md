# isLocalhost

Determines whether the specified value is the localhost.

```javascript
isLocalhost(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | string | Yes |  | The value to check. |

## Is 127.0.0.1 localhost

```javascript
isLocalHost("127.0.0.1")
```

### Expected Result: YES

## Is ::1 localhost

Test the IPv6 Loopback address. IPv6 only has one loopback address.

```javascript
isLocalHost("::1")
```

### Expected Result: YES

## Is 127.8.8.8 localhost

IPv4 network standards reserve the entire 127.0.0.0/8 address block for loopback networking purposes however they are not usually mapped to `localhost` by default.

```javascript
isLocalHost("127.8.8.8")
```

### Expected Result: NO

## Is 8.8.8.8 localhost

Not a localhost IP.

```javascript
isLocalHost("8.8.8.8")
```

### Expected Result: NO
