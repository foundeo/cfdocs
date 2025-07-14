# sessionRotate

Creates a new session (using new session ids) and copies session scope into this new session, then invalidates the old session. Used after a valid login to prevent session fixation.

```javascript
sessionRotate()
```

```javascript
returns void
```
