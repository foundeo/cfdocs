# canonicalize

Canonicalize or decode the input string. Canonicalization is simply the operation of reducing a possibly encoded string down to its simplest form. This is important because attackers frequently use encoding to change their input in a way that will bypass validation filters, but still be interpreted properly by the target of the attack. Note that data encoded more than once is not something that a normal user would generate and should be regarded as an attack.

```javascript
canonicalize(input, restrictMultiple, restrictMixed)
```

```javascript
returns string
```
