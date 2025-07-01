# listAvg

Calculates average from all numeric values given in the list

```javascript
listAvg(list [, delimiters] [, multiCharacterDelimiter])
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
list.listAvg([delimiters] [, multiCharacterDelimiter])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| delimiters | string | No | , |  |
| multiCharacterDelimiter | boolean | No | false |  |

## Calculate average from query columns

```javascript
athletes = queryNew('id,name,bestTime', 'integer,varchar,decimal');
queryAddRow(athletes,[{
	id: 0,
	name: 'Anne',
	bestTime: 15.4
},{
	id: 1,
	name: 'John',
	bestTime: 12.8
},{
	id: 2,
	name: 'Sue',
	bestTime: 9.1
}]);
writeOutput('Athlete''s average best time is #NumberFormat(listAvg(ValueList(athletes.bestTime)),'0.00')# seconds.');
```

### Expected Result: Athlete's average best time is 12.43 seconds.
