# csrfGenerateToken

Generates a random token and stores it in the session to protect against Cross-Site Request Forgery (CSRF) attacks. You can optionally provide a specific key to store in the session, and optionally force the generation of a new token.

```javascript
csrfGenerateToken( [key] [,forceNew] )
```

```javascript
returns string
```
