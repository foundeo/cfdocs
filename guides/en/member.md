# ColdFusion Member Functions

CF11+ Member Functions allow variables of certain CFML data types to be treated as objects with functions. Invoking a member function on the object (the variable) allows you to skip passing the variable into the function because it already has a reference to the value.
The use of member functions often lead to more concise and readable code.

For instance, consider the following headless function:

    arrayAppend(empArr, emp)

Using a member function it can be written as:

    empArr.append(emp)

Where `empArr` is a reference to an instance of a CFArray class (possibly a variable created with arrayNew).

The following example depicts the new usage of member functions:

    // The standard way
    var myArray = arrayNew(1);
    arrayAppend(myArray, "objec_new");
    arraySort(myArray, "ASC");

    // The member way
    myArray.append("objec_new");
    myArray.sort("ASC");

    // The member way
    var myProductObject = createObject("java", "myJavaclass");
    myjavaList = myProductObject.getProductList();
    myjavaList.add("newProduct"); // Java API

    myjavaList.append("newProduct"); // CF API
    myjavaList.sort("ASC");

Member functions for the following data types are supported:

- Array
- String
- List
- Struct
- Date
- Spreadsheet
- XML
- Query
- Image

CF 2016 changed the return type for append member functions:
`anystruct.append()` returns the appended structure
`anyarray.append()` returns the appended array

## Array member functions

- arrayAppend : `someVar.append()`
- arrayAvg : `someVar.avg()`
- arrayClear : `someVar.clear()`
- arrayContains : `someVar.contains()`
- arrayContainsNoCase : `someVar.containsNoCase()`
- arrayDelete : `someVar.delete()`
- arrayDeleteAt : `someVar.deleteAt()`
- arrayDeleteNoCase : `someVar.deleteNoCase()`
- arrayEach : `someVar.each()`
- arrayEvery : `someVar.every()`
- arrayFilter : `someVar.filter()`
- arrayFind : `someVar.find()`
- arrayFindAll : `someVar.findAll()`
- arrayFindAllNoCase : `someVar.findAllNoCase()`
- arrayFindNoCase : `someVar.findNoCase()`
- arrayFirst : `someVar.first()`
- arrayGetMetaData : `someVar.getMetaData()`
- arrayInsertAt : `someVar.insertAt()`
- arrayIsDefined : `someVar.isDefined()`
- arrayIsEmpty : `someVar.isEmpty()`
- arrayLast : `someVar.last()`
- arrayLen : `someVar.len()`
- arrayMap : `someVar.map()`
- arrayMax : `someVar.max()`
- arrayMin : `someVar.min()`
- arrayPrepend : `someVar.prepend()`
- arrayReduce : `someVar.reduce()`
- arrayReduceRight : `someVar.reduceRight()`
- arrayResize : `someVar.resize()`
- arraySet : `someVar.set()`
- arraySlice : `someVar.slice()`
- arraySome : `someVar.some()`
- arraySort : `someVar.sort()`
- arraySplice : `someVar.splice()`
- arraySum : `someVar.sum()`
- arraySwap : `someVar.swap()`
- arrayToList : `someVar.toList()`
- serializeJSON : `someVar.toJSON()`

## String member functions

- binaryDecode : `someVar.binaryDecode()`
- binaryEncode : `someVar.binaryEncode()`
- canonicalize : `someVar.canonicalize()`
- charsetDecode : `someVar.charsetDecode()`
- charsetEncode : `someVar.charsetEncode()`
- cJustify : `someVar.cJustify()`
- compare : `someVar.compare()`
- compareNoCase : `someVar.compareNoCase()`
- decodeForHTML : `someVar.decodeForHTML()`
- decodeFromURL : `someVar.decodeFromURL()`
- decrypt : `someVar.decrypt()`
- encodeForCSS : `someVar.encodeForCSS()`
- encodeForHTML : `someVar.encodeForHTML()`
- encodeForHTMLAttribute : `someVar.encodeForHTMLAttribute()`
- encodeForJavaScript : `someVar.encodeForJavaScript()`
- encodeForURL : `someVar.encodeForURL()`
- encodeForXML : `someVar.encodeForXML()`
- encodeForXMLAttribute : `someVar.encodeForXMLAttribute()`
- encodeForXPath : `someVar.encodeForXPath()`
- encrypt : `someVar.encrypt()`
- find : `someVar.find()`
- findNoCase : `someVar.findNoCase()`
- findOneOf : `someVar.findOneOf()`
- formatBaseN : `someVar.formatBaseN()`
- generateSecretKey : `someVar.generateSecretKey()`
- getSafeHTML : `someVar.getSafeHTML()`
- getToken : `someVar.getToken()`
- hash : `someVar.hash()`
- htmlCodeFormat : `someVar.htmlCodeFormat()`
- htmlEditFormat : `someVar.htmlEditFormat()`
- insert : `someVar.insert()`
- isSafeHTML : `someVar.isSafeHTML()`
- jsStringFormat : `someVar.jsStringFormat()`
- lCase : `someVar.lCase()`
- left : `someVar.left()`
- len : `someVar.len()`
- lJustify : `someVar.lJustify()`
- lsIsCurrency : `someVar.lsIsCurrency()`
- lsIsDate : `someVar.lsIsDate()`
- lsIsNumeric : `someVar.lsIsNumeric()`
- lsParseCurrency : `someVar.lsParseCurrency()`
- lsParseDateTime : `someVar.lsParseDateTime()`
- lsParseEuroCurrency : `someVar.lsParseEuroCurrency()`
- lsParseNumber : `someVar.lsParseNumber()`
- mid : `someVar.mid()`
- paragraphFormat : `someVar.paragraphFormat()`
- parseDateTime : `someVar.parseDateTime()`
- reFind : `someVar.reFind()`
- reFindNoCase : `someVar.reFindNoCase()`
- reMatch : `someVar.reMatch()`
- reMatchNoCase : `someVar.reMatchNoCase()`
- removeChars : `someVar.removeChars()`
- repeatString : `someVar.repeatString()`
- replace : `someVar.replace()`
- replaceList : `someVar.replaceList()`
- replaceListNoCase : `someVar.replaceListNoCase()`
- replaceNoCase : `someVar.replaceNoCase()`
- reReplace : `someVar.reReplace()`
- reReplaceNoCase : `someVar.reReplaceNoCase()`
- reverse : `someVar.reverse()`
- right : `someVar.right()`
- rJustify : `someVar.rJustify()`
- rTrim : `someVar.trim()`
- serializeJSON : `someVar.toJSON()`
- spanExcluding : `someVar.spanExcluding()`
- spanIncluding : `someVar.spanIncluding()`
- stringEach : `someVar.each()`
- stringEvery : `someVar.every()`
- stringFilter : `someVar.filter()`
- stringMap : `someVar.map()`
- stringReduce : `someVar.reduce()`
- stringReduceRight : `someVar.reduceRight()`
- stringSome : `someVar.some()`
- stringSort : `someVar.sort()`
- stripCR : `someVar.stripCR()`
- toBase64 : `someVar.toBase64()`
- toBinary : `someVar.toBinary()`
- toString : `someVar.toString()`
- trim : `someVar.trim()`
- uCase : `someVar.uCase()`
- urlDecode : `someVar.urlDecode()`
- urlEncodedFormat : `someVar.urlEncodedFormat()`
- val : `someVar.val()`
- wrap : `someVar.wrap()`
- xmlFormat : `someVar.xmlFormat()`

## List member functions

- listAppend : `someVar.listAppend()`
- listChangeDelims : `someVar.listChangeDelims()`
- listContains : `someVar.listContains()`
- listContainsNoCase : `someVar.listContainsNoCase()`
- listDeleteAt : `someVar.listDeleteAt()`
- listEach : `someVar.listEach()`
- listFind : `someVar.listFind()`
- listFindNoCase : `someVar.listFindNoCase()`
- listFirst : `someVar.listFirst()`
- listGetAt : `someVar.listGetAt()`
- listInsertAt : `someVar.listInsertAt()`
- listLast : `someVar.listLast()`
- listLen : `someVar.listLen()`
- listMap : `someVar.listMap()`
- listPrepend : `someVar.listPrepend()`
- listQualify : `someVar.listQualify()`
- listReduce : `someVar.listReduce()`
- listReduceRight : `someVar.listReduceRight()`
- listRemoveDuplicates : `someVar.listRemoveDuplicates()`
- listRest : `someVar.listRest()`
- listSetAt : `someVar.listSetAt()`
- listSort : `someVar.listSort()`
- listToArray : `someVar.listToArray()`
- listValueCount : `someVar.listValueCount()`
- listValueCountNoCase : `someVar.listValueCountNoCase()`
- serializeJSON : `someVar.toJSON()`

## Struct member functions

- serializeJSON : `someVar.toJSON()`
- structAppend : `someVar.append()`
- structClear : `someVar.clear()`
- structCopy : `someVar.copy()`
- structCount : `someVar.count()`
- structDelete : `someVar.delete()`
- structEach : `someVar.each()`
- structEvery : `someVar.every()`
- structFilter : `someVar.filter()`
- structFind : `someVar.find()`
- structFindKey : `someVar.findKey()`
- structFindValue : `someVar.findValue()`
- structGet : `someVar.get()`
- structGetMetadata : `someVar.getMetadata()`
- structInsert : `someVar.insert()`
- structIsCaseSensitive : `someVar.isCaseSensitive()`
- structIsEmpty : `someVar.isEmpty()`
- structIsOrdered : `someVar.isOrdered()`
- structKeyArray : `someVar.keyArray()`
- structKeyExists : `someVar.keyExists()`
- structKeyList : `someVar.keyList()`
- structMap : `someVar.map()`
- structReduce : `someVar.reduce()`
- structSetMetadata : `someVar.setMetadata()`
- structSome : `someVar.some()`
- structSort : `someVar.sort()`
- structToSorted : `someVar.toSorted()`
- structUpdate : `someVar.update()`

## Date member functions

- createODBCDate : `someVar.createODBCDate()`
- createODBCDateTime : `someVar.createODBCDateTime()`
- createODBCTime : `someVar.createODBCTime()`
- dateAdd : `someVar.add()`
- dateConvert : `someVar.convert()`
- dateDiff : `someVar.diff()`
- dateFormat : `someVar.dateFormat()`
- datePart : `someVar.datePart()`
- dateTimeFormat : `someVar.dateTimeFormat()`
- day : `someVar.day()`
- dayOfWeek : `someVar.dayOfWeek()`
- dayOfYear : `someVar.dayOfYear()`
- daysInMonth : `someVar.daysInMonth()`
- daysInYear : `someVar.daysIn`
- firstDayOfMonth : `someVar.firstDayOfMonth()`
- format : `someVar.format()`
- hour : `someVar.hour()`
- lsDateFormat : `someVar.lsDateFormat()`
- lsTimeFormat : `someVar.lsTimeFormat()`
- minute : `someVar.minute()`
- month : `someVar.month()`
- quarter : `someVar.quarter()`
- second : `someVar.second()`
- setDay : `<DateObject>.setDay(day)`
- setHour : `<DateObject>.setHour(hour)`
- setMinute : `<DateObject>.setMinute(minute)`
- setMonth : `<DateObject>.setMonth(month)`
- setSecond : `<DateObject>.setSecond(second)`
- setYear : `<DateObject>.setYear(year)`
- timeFormat : `someVar.timeFormat()`
- week : `someVar.week()`
- year : `someVar.year()`

## Image member functions

- imageAddBorder : `someVar.addBorder()`
- imageBlur : `someVar.blur()`
- imageClearRect : `someVar.clearRect()`
- imageCopy : `someVar.copy()`
- imageCrop : `someVar.crop()`
- imageDrawArc : `someVar.drawArc()`
- imageDrawBeveledRect : `someVar.drawBeveledRect()`
- imageDrawCubicCurve : `someVar.drawCubicCurve()`
- imageDrawLine : `someVar.drawLine()`
- imageDrawLines : `someVar.drawLines()`
- imageDrawOval : `someVar.drawOval()`
- imageDrawPoint : `someVar.drawPoint()`
- imageDrawQuadraticCurve : `someVar.drawQuadraticCurve()`
- imageDrawRect : `someVar.drawRect()`
- imageDrawRoundRect : `someVar.drawRoundRect()`
- imageDrawText : `someVar.drawText()`
- imageFlip : `someVar.flip()`
- imageGetBlob : `someVar.getBlob()`
- imageGetBufferedImage : `someVar.getBufferedImage()`
- imageGetExifMetadata : `someVar.getExifMetadata()`
- imageGetEXIFTag : `someVar.getEXIFTag()`
- imageGetHeight : `someVar.getHeight()`
- imageGetIptcMetadata : `someVar.getIptcMetadata()`
- imageGetIPTCTag : `someVar.getIPTCTag()`
- imageGetWidth : `someVar.getWidth()`
- imageGrayscale : `someVar.grayscale()`
- imageInfo : `someVar.info()`
- imageNegative : `someVar.negative()`
- imageOverlay : `someVar.overlay()`
- imagePaste : `someVar.paste()`
- imageResize : `someVar.resize()`
- imageRotate : `someVar.rotate()`
- imageRotateDrawingAxis : `someVar.rotateDrawingAxis()`
- imageScaleToFit : `someVar.scaleToFit()`
- imageSetAntialiasing : `someVar.setAntialiasing()`
- imageSetBackgroundColor : `someVar.setBackgroundColor()`
- imageSetDrawingColor : `someVar.setDrawingColor()`
- imageSetDrawingStroke : `someVar.setDrawingStroke()`
- imageSetDrawingTransparency : `someVar.setDrawingTransparency()`
- imageSharpen : `someVar.sharpen()`
- imageShear : `someVar.shear()`
- imageShearDrawingAxis : `someVar.shearDrawingAxis()`
- imageTranslate : `someVar.translate()`
- imageTranslateDrawingAxis : `someVar.translateDrawingAxis()`
- imageWrite : `someVar.write()`
- imageWriteBase64 : `someVar.writeBase64()`
- imageXORDrawingMode : `someVar.xorDrawingMode()`

## Spreadsheet member functions

- spreadsheetAddAutoFilter : `someVar.addAutoFilter()`
- spreadsheetAddColumn : `someVar.addColumn()`
- spreadsheetAddFreezePane : `someVar.addFreezePane()`
- spreadsheetAddImage : `someVar.addImage()`
- spreadsheetAddInfo : `someVar.addInfo()`
- spreadsheetAddPageBreaks : `someVar.addPageBreaks()`
- spreadsheetAddRow : `someVar.addRow()`
- spreadsheetAddRows : `someVar.addRows()`
- spreadsheetAddSplitPane : `someVar.addSplitPane()`
- spreadsheetCreateSheet : `someVar.createSheet()`
- spreadsheetDeleteColumn : `someVar.deleteColumn()`
- spreadsheetDeleteColumns : `someVar.deleteColumns()`
- spreadsheetDeleteRow : `someVar.deleteRow()`
- spreadsheetDeleteRows : `someVar.deleteRows()`
- spreadsheetFormatCell : `someVar.formatCell()`
- spreadsheetFormatCellRange : `someVar.formatCellRange()`
- spreadsheetFormatColumn : `someVar.formatColumn()`
- spreadsheetFormatColumns : `someVar.formatColumns()`
- spreadsheetFormatRow : `someVar.formatRow()`
- spreadsheetFormatRows : `someVar.formatRows()`
- spreadsheetGetCellComment : `someVar.getCellComment()`
- spreadsheetGetCellFormula : `someVar.getCellFormula()`
- spreadsheetGetCellValue : `someVar.getCellValue()`
- spreadsheetGetColumnCount : `someVar.getColumnCount()`
- spreadsheetInfo : `someVar.info()`
- spreadsheetMergeCells : `someVar.mergeCells()`
- spreadsheetReadBinary : `someVar.readBinary()`
- spreadsheetRemoveSheet : `someVar.removeSheet()`
- spreadsheetSetActiveSheet : `someVar.setActiveSheet()`
- spreadsheetSetActiveSheetNumber : `someVar.setActiveSheetNumber()`
- spreadsheetSetCellComment : `someVar.setCellComment()`
- spreadsheetSetCellFormula : `someVar.setCellFormula()`
- spreadsheetSetCellValue : `someVar.setCellValue()`
- spreadsheetSetColumnWidth : `someVar.setColumnWidth()`
- spreadsheetSetFooter : `someVar.setFooter()`
- spreadsheetSetHeader : `someVar.setHeader()`
- spreadsheetSetRowHeight : `someVar.setRowHeight()`
- spreadsheetShiftColumns : `someVar.shiftColumns()`
- spreadsheetShiftRows : `someVar.shiftRows()`
- spreadsheetWrite : `someVar.write()`

## XML member functions

- duplicate : `someVar.duplicate()`
- toString : `someVar.toString()`
- xmlAppend : `someVar.append()`
- xmlChildPos : `someVar.childPos()`
- xmlCount : `someVar.count()`
- xmlElemNew : `someVar.elemNew()`
- xmlGetNodeType : `someVar.getNodeType()`
- xmlHasChild : `someVar.hasChild()`
- xmlKeyArray : `someVar.keyArray()`
- xmlKeyList : `someVar.keyList()`
- xmlLen : `someVar.len()`
- xmlSearch : `someVar.search()`
- xmlTransform : `someVar.transform()`
- xmlUpdate : `someVar.update()`

## Query member functions

- len : `someVar.len()`
- queryAddColumn : `someVar.addColumn()`
- queryAddRow : `someVar.addRow()`
- queryAppend : `someVar.append()`
- queryClear : `someVar.clear()`
- queryConvertForGrid : `someVar.convertForGrid()`
- queryDeleteAt : `someVar.deleteAt()`
- queryDeleteColumn : `someVar.deleteColumn()`
- queryDeleteRow : `someVar.deleteRow()`
- queryEach : `someVar.each()`
- queryEvery : `someVar.every()`
- queryFilter : `someVar.filter()`
- queryGetResult : `someVar.getResult()`
- queryGetRow : `someVar.getRow()`
- queryInsertAt : `someVar.insertAt()`
- queryKeyExists : `someVar.keyExists()`
- queryMap : `someVar.map()`
- queryPrepend : `someVar.prepend()`
- queryRecordCount : `someVar.recordCount()`
- queryReduce : `someVar.reduce()`
- queryRowSwap : `someVar.rowSwap()`
- querySetCell : `someVar.setCell()`
- querySlice : `someVar.slice()`
- querySome : `someVar.some()`
- querySort : `someVar.sort()`
- serializeJSON : `someVar.toJSON()`
- valueArray : `someVar.valueArray()`

When using Query.cfc, you get your results from the execution by using:

- `someVar.getResult()`

## Display and Formatting member functions

- booleanFormat : `someVal.booleanFormat()`
- yesNoFormat : `someVal.yesNoFormat()`

## Numeric member functions

- abs : `someVar.abs()`
- aCos : `someVar.aCos()`
- aSin : `someVar.aSin()`
- atn : `someVar.atn()`
- bitAnd : `someVar.bitAnd(number2)`
- bitMaskClear : `someVar.bitMaskClear(start, length)`
- bitMaskRead : `someVar.bitMaskRead(start, length)`
- bitMaskSet : `someVar.bitMaskSet(mask, start, length)`
- bitNOT : `someVar.bitNot()`
- bitOR : `someVar.bitOr(number2)`
- bitSHLN : `someVar.bitSHLN(count)`
- bitSHRN : `someVar.bitSHRN(count)`
- bitXOR : `someVar.bitXor(number2)`
- ceiling : `someVar.ceiling()`
- cos : `someVar.cos()`
- decrementValue : `someVar.decrementValue()`
- exp : `someVar.exp()`
- fix : `someVar.fix()`
- floor : `someVar.floor()`
- formatBaseN : `someVar.formatBaseN(radix)`
- incrementValue : `someVar.incrementValue()`
- inputBaseN : `someVar.inputBaseN()`
- log : `someVar.log()`
- log10 : `someVar.log10()`
- max : `someVar.max(number2)`
- min : `someVar.min(number2)`
- precisionEvaluate : `someVar.precisionEvaluate()`
- randomize : `someVar.randomize([algorithm])`
- randRange : `someVar.randRange(number2[, algorithm])`
- round : `someVar.round()`
- sgn : `someVar.sgn()`
- sin : `someVar.sin()`
- sqr : `someVar.sqr()`
- tan : `someVar.tan()`

## Future member functions

- cancel : `FutureObject.cancel()`
- error : `FutureObject.error(UDFMethod method)`
- error : `FutureObject.then((UDFMethod method, long timeout)`
- get : `FutureObject.get()`
- get : `FutureObject.get(long timeout)`
- get : `FutureObject.get(long timeout, String timeUnit)`
- isCancelled : `FutureObject.isCancelled()`
- isDone : `FutureObject.isDone()`
- then : `FutureObject.then(UDFMethod method)`
- then : `FutureObject.then((UDFMethod method, long timeout)`

## Empty Future member functions

- cancel : `EmptyFutureObject.cancel()`
- complete : `EmptyFutureObject.complete(Object val)`
- get : `EmptyFutureObject.get()`
- isCancelled : `EmptyFutureObject.isCancelled()`
- isDone : `EmptyFutureObject.isDone()`

Member Functions can also be chained (on Lucee or CF2018+), for example:

    s = "the";
    s = s.listAppend("quick brown fox", " ")
         .listAppend("jumps over the lazy dog", " ")
         .uCase()
         .reverse();

result: `GOD YZAL EHT REVO SPMUJ XOF NWORB KCIUQ EHT`

## Important Note on a potential Member Function Gotcha

Some member functions [might fall into underlying Java methods][note] if the strict ColdFusion syntax is not followed.

[note]: https://tracker.adobe.com/#/view/CF-3753710
