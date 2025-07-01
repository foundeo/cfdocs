# pagePoolClear

clear pages in pools

```javascript
pagePoolClear()
```

```javascript
returns boolean
```

## pagePoolClear Example

Clear out all the CFML code (cfm, cfcs) in the cache of compiled code. It is supported in Lucee.

```javascript
writeDump(pagePoolClear());
```
