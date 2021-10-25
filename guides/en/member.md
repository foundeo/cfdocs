# ColdFusion Member Functions

CF11+ Member Functions allow variables of certain CFML data types to be treated as objects with functions. Invoking a member function on the object (the variable) allows you to skip passing the variable into the function because it already has a reference to the value.
The use of member functions often lead to more concise and readable code.

For instance, consider the following headless function:

    ArrayAppend(empArr, emp)

Using a member function it can be written as:

    empArr.append(emp)

Where `empArr` is a reference to an instance of a CFArray class (possibly a variable created with arrayNew). 

The following example depicts the new usage of member functions:

    <cfscript>
        //The old way
        var myArray = ArrayNew(1);
        ArrayAppend(myArray, "objec_new");
        ArraySort(myArray, "ASC");

        // The new way
        myArray.append("objec_new");
        myArray.sort("ASC");

        // The new way
        var myProductObject = createObject("java", "myJavaclass");
        myjavaList = myProductObject.getProductList();
        myjavaList.add("newProduct"); // Java API

        myjavaList.append("newProduct"); // CF API
        myjavaList.sort("ASC");
    </cfscript>

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

- ArrayAppend : `someVar.append()` 
- ArrayAvg : `someVar.avg()` 
- ArrayClear : `someVar.clear()` 
- ArrayContains : `someVar.contains()` 
- ArrayContainsNoCase : `someVar.containsNoCase()` 
- ArrayDelete : `someVar.delete()` 
- ArrayDeleteAt : `someVar.deleteAt()` 
- ArrayDeleteNoCase : `someVar.deleteNoCase()` 
- ArrayEach : `someVar.each()` 
- ArrayEvery : `someVar.every()` 
- ArrayFilter : `someVar.filter()` 
- ArrayFind : `someVar.find()` 
- ArrayFindAll : `someVar.findAll()` 
- ArrayFindAllNoCase : `someVar.findAllNoCase()` 
- ArrayFindNoCase : `someVar.findNoCase()` 
- ArrayFirst : `someVar.first()` 
- ArrayGetMetaData : `someVar.getMetaData()` 
- ArrayInsertAt : `someVar.insertAt()` 
- ArrayIsDefined : `someVar.isDefined()` 
- ArrayIsEmpty : `someVar.isEmpty()` 
- ArrayLast : `someVar.last()` 
- ArrayLen : `someVar.len()` 
- ArrayMap : `someVar.map()` 
- ArrayMax : `someVar.max()` 
- ArrayMin : `someVar.min()` 
- ArrayPrepend : `someVar.prepend()` 
- ArrayReduce : `someVar.reduce()` 
- ArrayReduceRight : `someVar.reduceRight()` 
- ArrayResize : `someVar.resize()` 
- ArraySet : `someVar.set()` 
- ArraySlice : `someVar.slice()` 
- ArraySome : `someVar.some()` 
- ArraySort : `someVar.sort()` 
- ArraySplice : `someVar.splice()` 
- ArraySum : `someVar.sum()` 
- ArraySwap : `someVar.swap()` 
- ArrayToList : `someVar.toList()` 

## String member functions

- BinaryDecode : `someVar.binaryDecode()` 
- BinaryEncode : `someVar.binaryEnecode()` 
- Canonicalize : `someVar.canonicalize()` 
- CharsetDecode : `someVar.charsetDecode()` 
- CharsetEncode : `someVar.charsetEncode()` 
- CJustify : `someVar.cJustify()` 
- Compare : `someVar.compare()` 
- CompareNoCase : `someVar.compareNocase()` 
- decodeForHTML : `someVar.decodeForHTML()` 
- decodeFromURL : `someVar.decodeFromURL()` 
- Decrypt : `someVar.decrypt()` 
- EncodeForCSS : `someVar.encodeforCSS()` 
- EncodeForHTML : `someVar.encodeforHTML()` 
- EncodeForHTMLAttribute : `someVar.encodeforHTMLAttribute()` 
- EncodeForJavaScript : `someVar.encodeforJavaScript()` 
- EncodeForURL : `someVar.encodeforURL()` 
- EncodeForXML : `someVar.encodeforXML()` 
- EncodeForXMLAttribute : `someVar.encodeforXMLAttribute()` 
- EncodeForXPath : `someVar.encodeforXPath()` 
- Encrypt : `someVar.encrypt()` 
- Find : `someVar.find()` 
- FindNoCase : `someVar.findNoCase()` 
- FindOneOf : `someVar.findOneOf()` 
- FormatBaseN : `someVar.formatBaseN()` 
- GenerateSecretKey : `someVar.generateSecretKey()` 
- getSafeHTML : `someVar.getSafeHTML()` 
- GetToken : `someVar.getToken()` 
- Hash : `someVar.hash()` 
- HTMLCodeFormat : `someVar.htmlCodeFormat()` 
- HTMLEditFormat : `someVar.htmlEditFormat()` 
- Insert : `someVar.insert()` 
- isSafeHTML : `someVar.isSafeHTML()` 
- JSStringFormat : `someVar.jssStringFormat()` 
- LCase : `someVar.lCase()` 
- Left : `someVar.left()` 
- Len : `someVar.len()` 
- LJustify : `someVar.lJustify()` 
- LSIsCurrency : `someVar.lsIsCurrency()` 
- LSIsDate : `someVar.lsIsDate()` 
- LSIsNumeric : `someVar.lsIsNumeric()` 
- LSParseCurrency : `someVar.lsParseCurrency()` 
- LSParseDateTime : `someVar.lsParseDateTime()` 
- LSParseEuroCurrency : `someVar.lsParseEuroCurrency()` 
- LSParseNumber : `someVar.lsParseNumber()` 
- Mid : `someVar.mid()` 
- ParagraphFormat : `someVar.paragraphFormat()` 
- ParseDateTime : `someVar.parseDateTime()` 
- REFind : `someVar.reFind()` 
- REFindNoCase : `someVar.reFindNoCase()` 
- REMatch : `someVar.reMatch()` 
- REMatchNoCase : `someVar.reMatchNoCase()` 
- RemoveChars : `someVar.removeChars()` 
- RepeatString : `someVar.repeatString()` 
- Replace : `someVar.replace()` 
- ReplaceList : `someVar.replaceList()` 
- ReplaceListNoCase : `someVar.replaceListNocase()` 
- ReplaceNoCase : `someVar.replaceNocase()` 
- REReplace : `someVar.reReplace()` 
- REReplaceNoCase : `someVar.reReplaceNoCase()` 
- Reverse : `someVar.reverse()` 
- Right : `someVar.right()` 
- RJustify : `someVar.rJustify()` 
- RTrim : `someVar.trim()` 
- SpanExcluding : `someVar.spanExcluding()` 
- SpanIncluding : `someVar.spanIncluding()` 
- StringEach : `someVar.each()` 
- StringEvery : `someVar.every()` 
- StringFilter : `somevar.filter()` 
- StringMap : `someVar.map()` 
- StringReduce : `somevar.reduce()` 
- StringReduceRight : `someVar.reduceRight()` 
- StringSome : `someVar.some()` 
- StringSort : `someVar.sort()` 
- StripCR : `someVar.stripCR()` 
- ToBase64 : `someVar.toBase64()` 
- ToBinary : `someVar.toBinary()` 
- ToString : `someVar.toString()` 
- Trim : `someVar.trim()` 
- UCase : `someVar.uCase()` 
- urlDecode : `someVar.urlDecode()` 
- urlEncodedFormat : `someVar.urlEncodedFormat()` 
- Val : `someVar.val()` 
- Wrap : `someVar.wrap()` 
- XmlFormat : `someVar.xmlFormat()` 

## List member functions

- ListAppend : `someVar.listAppend()` 
- ListChangeDelims : `someVar.listChangeDelims()` 
- ListContains : `someVar.listContains()` 
- ListContainsNoCase : `someVar.listContainsNoCase()` 
- ListDeleteAt : `someVar.listDeleteAt()` 
- ListEach : `someVar.listEach()` 
- ListFind : `someVar.listFind()` 
- ListFindNoCase : `someVar.listFindNoCase()` 
- ListFirst : `someVar.listFirst()` 
- ListGetAt : `someVar.listGetAt()` 
- ListInsertAt : `someVar.listInsertAt()` 
- ListLast : `someVar.listLast()` 
- ListLen : `someVar.listLen()` 
- ListMap : `someVar.listMap()` 
- ListPrepend : `someVar.listPrepend()` 
- ListQualify : `someVar.listQualify()` 
- ListReduce : `someVar.listReduce()` 
- ListReduceRight : `someVar.listReduceRight()` 
- ListRemoveDuplicates : `someVar.listRemoveDuplicates()` 
- ListRest : `someVar.listRest()` 
- ListSetAt : `someVar.listSetAt()` 
- ListSort : `someVar.listSort()` 
- ListToArray : `someVar.listToArray()` 
- ListValueCount : `someVar.listValueCount()` 
- ListValueCountNoCase : `someVar.listValueCountNoCase()` 
- ToJSON : `someVar.toJSON()` 

## Struct member functions

- StructAppend : `someVar.append()` 
- StructClear : `someVar.clear()` 
- StructCopy : `someVar.copy()` 
- StructCount : `someVar.count()` 
- StructDelete : `someVar.delete()` 
- StructEach : `someVar.each()` 
- StructEvery : `someVar.every()` 
- StructFilter : `someVar.filter()` 
- StructFind : `someVar.find()` 
- StructFindKey : `someVar.findkey()` 
- StructFindValue : `someVar.findValue()` 
- StructGet : `someVar.get()` 
- StructGetMetadata : `someVar.getMetadata()` 
- StructInsert : `someVar.insert()` 
- StructIsCaseSensitive : `someVar.isCaseSensitive()` 
- StructIsEmpty : `someVar.isEmpty()` 
- StructIsOrdered : `someVar.isOrdered()`
- StructKeyArray : `someVar.keyArray()` 
- StructKeyExists : `someVar.keyExists()` 
- StructKeyList : `someVar.keyList()` 
- StructMap : `someVar.map()` 
- StructReduce : `someVar.reduce()` 
- StructSetMetadata : `someVar.setMetadata()` 
- StructSome : `someVar.some()` 
- StructSort : `someVar.sort()` 
- StructToSorted : `someVar.tosorted()` 
- StructUpdate : `someVar.update()` 

## Date member functions

- CreateODBCDate : `someVar.createODBCDate()` 
- CreateODBCDateTime : `someVar.createODBCDateTime()` 
- CreateODBCTime : `someVar.createODBCTime()` 
- DateAdd : `someVar.add()` 
- DateConvert : `someVar.convert()` 
- DateDiff : `someVar.diff()` 
- DateFormat : `someVar.dateFormat()` 
- DatePart : `someVar.datepart()` 
- DateTimeFormat : `someVar.dateTimeFormat()` 
- Day : `someVar.day()` 
- DayOfWeek : `someVar.dayOfweek()` 
- DayOfYear : `someVar.dayOfYear()` 
- DaysInMonth : `someVar.daysInMonth()` 
- DaysInYear : `someVar.daysIn` 
- FirstDayOfMonth : `someVar.firstDayOfMonth()` 
- Format : `someVar.format()` 
- Hour : `someVar.hour()` 
- LSDateFormat : `someVar.lsDateFormat()` 
- LSTimeFormat : `someVar.lsTimeFormat()` 
- Minute : `someVar.minute()` 
- Month : `someVar.month()` 
- Quarter : `someVar.quarter()` 
- Second : `someVar.second()` 
- setDay : `<DateObject>.setDay(day)` 
- setHour : `<DateObject>.setHour(hour)` 
- setMinute : `<DateObject>.setMinute(minute)` 
- setMonth : `<DateObject>.setMonth(month)` 
- setSecond : `<DateObject>.setSecond(second)` 
- setYear : `<DateObject>.setYear(year)` 
- TimeFormat : `someVar.timeFormat()` 
- Week : `someVar.week()` 
- Year : `someVar.year()` 


## Image member functions

- ImageAddBorder : `someVar.addBorder()` 
- ImageBlur : `someVar.blur()` 
- ImageClearRect : `someVar.clearRect()` 
- ImageCopy : `someVar.copy()` 
- ImageCrop : `someVar.crop()` 
- ImageDrawArc : `someVar.drawArc()` 
- ImageDrawBeveledRect : `someVar.drawBeveledRect()` 
- ImageDrawCubicCurve : `someVar.drawCubicCurve()` 
- ImageDrawLine : `someVar.drawLine()` 
- ImageDrawLines : `someVar.drawLines()` 
- ImageDrawOval : `someVar.drawOval()` 
- ImageDrawPoint : `someVar.drawPoint()` 
- ImageDrawQuadraticCurve : `someVar.drawQuadraticCurve()` 
- ImageDrawRect : `someVar.drawRect()` 
- ImageDrawRoundRect : `someVar.drawRoundRect()  ` 
- ImageDrawText : `someVar.drawText()` 
- ImageFlip : `someVar.flip()` 
- ImageGetBlob : `someVar.getBlob()` 
- ImageGetBufferedImage : `someVar.getBufferedImage()` 
- ImageGetExifMetadata : `someVar.getExifMetadata()` 
- ImageGetEXIFTag : `someVar.getEXIFTag()` 
- ImageGetHeight : `someVar.getHeight()` 
- ImageGetIptcMetadata : `someVar.getIptcMetadata()` 
- ImageGetIPTCTag : `someVar.getIPTCTag()` 
- ImageGetWidth : `someVar.getWidth()` 
- ImageGrayscale : `someVar.grayscale()` 
- ImageInfo : `someVar.info()` 
- ImageNegative : `someVar.negative()` 
- ImageOverlay : `someVar.overlay()` 
- ImagePaste : `someVar.paste()` 
- ImageResize : `someVar.resize()` 
- ImageRotate : `someVar.rotate()` 
- ImageRotateDrawingAxis : `someVar.rotateDrawingAxis()` 
- ImageScaleToFit : `someVar.scaleToFit()` 
- ImageSetAntialiasing : `someVar.setAntialiasing()` 
- ImageSetBackgroundColor : `someVar.setBackgroundColor()` 
- ImageSetDrawingColor : `someVar.setDrawingColor()` 
- ImageSetDrawingStroke : `someVar.setDrawingStroke()` 
- ImageSetDrawingTransparency : `someVar.setDrawingTransparency()` 
- ImageSharpen : `someVar.sharpen()` 
- ImageShear : `someVar.shear()` 
- ImageShearDrawingAxis : `someVar.shearDrawingAxis()` 
- ImageTranslate : `someVar.translate()` 
- ImageTranslateDrawingAxis : `someVar.translateDrawingAxis()` 
- ImageWrite : `someVar.write()` 
- ImageWriteBase64 : `someVar.writeBase64()` 
- ImageXORDrawingMode : `someVar.xorDrawingMode()` 

## Spreadsheet member functions

- SpreadsheetAddAutoFilter : `someVar.addAutoFilter()` 
- SpreadsheetAddColumn : `someVar.addColumn()` 
- SpreadsheetAddFreezePane : `someVar.addFreezePane()` 
- SpreadsheetAddImage : `someVar.addImage()` 
- SpreadsheetAddInfo : `someVar.addInfo()` 
- SpreadsheetAddPageBreaks : `someVar.addPageBreaks()` 
- SpreadsheetAddRow : `someVar.addRow()` 
- SpreadsheetAddRows : `someVar.addRows()` 
- SpreadsheetAddSplitPane : `someVar.addSplitPane()` 
- SpreadsheetCreateSheet : `someVar.createSheet()` 
- SpreadsheetDeleteColumn : `someVar.deleteColumn()` 
- SpreadsheetDeleteColumns : `someVar.deleteColumns()` 
- SpreadsheetDeleteRow : `someVar.deleteRow()` 
- SpreadsheetDeleteRows : `someVar.deleteRows()` 
- SpreadsheetFormatCell : `someVar.formatCell()` 
- SpreadsheetFormatCellRange : `someVar.formatCellRange()` 
- SpreadsheetFormatColumn : `someVar.formatColumn()` 
- SpreadsheetFormatColumns : `someVar.formatColumns()` 
- SpreadsheetFormatRow : `someVar.formatRow()` 
- SpreadsheetFormatRows : `someVar.formatRows()` 
- SpreadsheetGetCellComment : `someVar.getCellComment()` 
- SpreadsheetGetCellFormula : `someVar.getCellFormula()` 
- SpreadsheetGetCellValue : `someVar.getCellValue()` 
- SpreadsheetGetColumnCount : `someVar.getColumnCount()` 
- SpreadsheetInfo : `someVar.info()` 
- SpreadsheetMergeCells : `someVar.mergeCells()` 
- SpreadsheetReadBinary : `someVar.readBinary()` 
- SpreadsheetRemoveSheet : `someVar.removeSheet()` 
- SpreadsheetSetActiveSheet : `someVar.setActiveSheet()` 
- SpreadsheetSetActiveSheetNumber : `someVar.setActiveSheetNumber()` 
- SpreadsheetSetCellComment : `someVar.setCellComment()` 
- SpreadsheetSetCellFormula : `someVar.setCellFormula()` 
- SpreadsheetSetCellValue : `someVar.setCellValue()` 
- SpreadsheetSetColumnWidth : `someVar.setColumnWidth()` 
- SpreadsheetSetFooter : `someVar.setFooter()` 
- SpreadsheetSetHeader : `someVar.setHeader()` 
- SpreadsheetSetRowHeight : `someVar.setRowHeight()` 
- SpreadsheetShiftColumns : `someVar.shiftColumns()` 
- SpreadsheetShiftRows : `someVar.shiftRows()` 
- SpreadsheetWrite : `someVar.write()` 

## XML member functions

- Duplicate : `someVar.duplicate()` 
- ToString : `someVar.toString()` 
- XmlAppend : `someVar.append()` 
- XmlChildPos : `someVar.childPos()` 
- XmlCount : `someVar.count()` 
- XmlElemNew : `someVar.elemNew()` 
- XmlGetNodeType : `someVar.getNodeType()` 
- XmlHasChild : `someVar.hasChild()` 
- XmlKeyArray : `someVar.keyArray()` 
- XmlKeyList : `someVar.keyList()` 
- XmlLen : `someVar.len()` 
- XmlSearch : `someVar.search()` 
- XmlTransform : `someVar.transform()` 
- XmlUpdate : `someVar.update()` 

## Query member functions

- Len : `someVar.len()` 
- QueryAddColumn : ` someVar.addColumn()` 
- QueryAddRow : `someVar.addRow()` 
- QueryAppend : `someVar.append()` 
- QueryClear : `someVar.clear()` 
- QueryConvertForGrid : `someVar.convertForGrid()` 
- QueryDeleteAt : `someVar.deleteAt()` 
- QueryDeleteColumn : `someVar.deleteColumn()` 
- QueryDeleteRow : `someVar.deleteRow()` 
- QueryEach : `someVar.Each()` 
- QueryEvery : `someVar.every()` 
- QueryFilter : `someVar.Filter()` 
- QueryGetResult : `someVar.getResult()` 
- QueryGetRow : `someVar.getRow()` 
- QueryInsertAt : `someVar.insertAt()` 
- QueryKeyExists : `someVar.keyExists()` 
- QueryMap : `someVar.Map()` 
- QueryPrepend : `someVar.prepend()` 
- QueryRecordCount : `someVar.recordCount()` 
- QueryReduce : `someVar.Reduce()` 
- QueryRowSwap : `someVar.rowswap()` 
- QuerySetCell : `someVar.setCell()` 
- QuerySlice : `someVar.slice()` 
- QuerySome : `someVar.some()` 
- QuerySort : `someVar.Sort()` 
- ValueArray : `someVar.valueArray()` 

When using Query.cfc, you get your results from the execution by using:

- `someVar.getResult()`

## Display and Formatting member functions

- BooleanFormat : `someVal.booleanFormat()`
- YesNoFormat : `someVal.yesNoFormat()`

## Numeric member functions

- Abs : `someVar.abs()`
- ACos : `someVar.aCos()`
- ASin : `someVar.aSin()`
- Atn : `someVar.atn()`
- BitAnd : `someVar.bitAnd(number2)`
- BitMaskClear : `someVar.bitMaskClear(start, length)`
- BitMaskRead : `someVar.bitMaskRead(start, length)`
- BitMaskSet : `someVar.bitMaskSet(mask, start, length)`
- BitNOT : `someVar.bitNot()`
- BitOR : `someVar.bitOr(number2)`
- BitSHLN : `someVar.bitSHLN(count)`
- BitSHRN : `someVar.bitSHRN(count)`
- BitXOR : `someVar.bitXor(number2)`
- Ceiling : `someVar.ceiling()`
- Cos : `someVar.cos()`
- DecrementValue : `someVar.decrementValue()`
- Exp : `someVar.exp()`
- Fix : `someVar.fix()`
- Floor : `someVar.floor()`
- FormatBaseN : `someVar.formatBaseN(radix)`
- IncrementValue : `someVar.incrementValue()`
- InputBaseN : `someVar.inputbasen()`
- Log : `someVar.log()`
- Log10 : `someVar.log10()`
- Max : `someVar.max(number2)`
- Min : `someVar.min(number2)`
- PrecisionEvaluate : `someVar.precisionEvaluate()`
- Randomize : `someVar.randomize([algorithm])`
- RandRange : `someVar.randRange(number2[, algorithm])`
- Round : `someVar.round()`
- Sgn : `someVar.sgn()`
- Sin : `someVar.sin()`
- Sqr : `someVar.sqr()`
- Tan : `someVar.tan()`

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

    s="the";
    s = s.listAppend("quick brown fox", " ")
         .listAppend("jumps over the lazy dog", " ")
         .ucase()
         .reverse();

result: `GOD YZAL EHT REVO SPMUJ XOF NWORB KCIUQ EHT`

# Important Note on a potential Member Function Gotcha

Some member functions [might fall into underlying Java methods][note] if the strict ColdFusion syntax is not followed.

[note]: https://bugbase.adobe.com/index.cfm?event=bug&id=3753710
