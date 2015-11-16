# ColdFusion Member Functions

Member Functions are operators and functions that are declared as a member of a class.
These are more in line with true object oriented style of coding.

For instance, consider the following headless function:


    ArrayAppend (empArr, emp)


It can now be written as:


    empArr.append(emp)


where `arrayObj` is a reference to the CFArray class.

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


Member functions for ColdFusion data types

Member function for the following data types are supported:

* Array
* String
* List
* Struct
* Date
* Spreadsheet
* XML
* Query
* Image                                                             

The following _Array_ member functions are supported:

* ArrayAppend:  someVar.append()
* ArrayAvg:   someVar.avg()
* ArrayClear:   someVar.clear()
* ArrayContains:   someVar.contains()
* ArrayDelete:   someVar.delete()
* ArrayDeleteAt:   someVar.deleteAt()
* ArrayEach:   someVar.each()
* ArrayFilter:   someVar.filter()
* ArrayFind:   someVar.find()
* ArrayFindAll:   someVar.findAll()
* ArrayFindAllNoCase:   someVar.findAllNoCase()
* ArrayFindNoCase:   someVar.findNoCase()
* ArrayInsertAt:   someVar.insertAt()
* ArrayIsDefined:   someVar.isDefined()
* ArrayIsEmpty:   someVar.isEmpty()
* ArrayLen:   someVar.len()
* ArrayMap:   someVar.map()
* ArrayMax:   someVar.max()
* ArrayMin:   someVar.min()
* ArrayPrepend:   someVar.prepend()
* ArrayResize:   someVar.resize()
* ArraySet:   someVar.set()
* ArraySlice:   someVar.slice()
* ArraySort:   someVar.sort()
* ArraySum:   someVar.sum()
* ArraySwap:   someVar.swap()
* ArrayToList:   someVar.toList()

The following _String_ member functions are supported:

* CJustify:	someVar.cJustify()
* Compare:	someVar.compare()
* CompareNoCase:	someVar.compareNocase()
* Find:	someVar.find()
* FindNoCase:	someVar.findNoCase()
* FindOneOf:	someVar.findOneOf()
* GetToken:	someVar.getToken()
* Insert:	someVar.insert()
* LCase:	someVar.lCase()
* LJustify:	someVar.lJustify()
* Left:	someVar.left()
* Len:	someVar.len()
* Mid:	someVar.mid()
* RJustify:	someVar.rJustify()
* RTrim:	someVar.trim()
* RemoveChars:	someVar.removeChars()
* RepeatString:	someVar.repeatString()
* Replace:	someVar.replace()
* ReplaceList:	someVar.replaceList()
* ReplaceNoCase:	someVar.replaceNocase()
* Reverse:	someVar.reverse()
* Right:	someVar.right()
* SpanExcluding:	someVar.spanExcluding()
* SpanIncluding:	someVar.spanIncluding()
* StripCR:	someVar.stripCR()
* Trim:	someVar.trim()
* UCase:	someVar.uCase()
* Wrap:	someVar.wrap()

Similarly, the following _String_ member functions are also supported:

    Decrypt, Encrypt, BinaryDecode, BinaryEncode, CharsetDecode, CharsetEncode, URLDecode, URLEncodedFormat, HTMLEditFormat, HTMLCodeFormat, ParagraphFormat, JSStringFormat, XmlFormat, FormatBaseN, HTMLEditFormat, HTMLCodeFormat, ParagraphFormat, ToBinary, ToString, ToBase64, Val, GenerateSecretKey, Hash, REFind, REFindNoCase, REMatch, REMatchNoCase, REReplace, REReplaceNoCase, ReplaceList, LSParseEuroCurrency, LSParseDateTime, LSIsCurrency, LSIsDate, LSIsNumeric, LSParseCurrency, LSParseNumber, and ParseDateTime


The following _List_ member functions are supported:

* ListAppend:	someVar.listAppend()
* ListChangeDelims:	someVar.listChangeDelims()
* ListContains:	someVar.listContains()
* ListContainsNoCase:	someVar.listContainsNoCase()
* ListDeleteAt:	someVar.listDeleteAt()
* ListEach:	someVar.listEach()
* ListFind:	someVar.listFind()
* ListFindNoCase:	someVar.listFindNoCase()
* ListFirst:	someVar.listFirst()
* ListGetAt:	someVar.listGetAt()
* ListInsertAt:	someVar.listInsertAt()
* ListLast:	someVar.listLast()
* ListLen:	someVar.listLen()
* ListMap:	someVar.listMap()
* ListPrepend:	someVar.listPrepend()
* ListQualify:	someVar.listQualify()
* ListReduce:	someVar.listReduce()
* ListRest:	someVar.listRest()
* ListSetAt:	someVar.listSetAt()
* ListSort:	someVar.listSort()
* ListToArray:	someVar.listToArray()
* ListValueCount:	someVar.listValueCount()
* ListValueCountNoCase:	someVar.listValueCountNoCase()

The following _Struct_ member functions are supported:

* StructIsEmpty:	someVar.isEmpty()
* StructAppend:	someVar.append()
* StructClear:	someVar.clear()
* StructCopy:	someVar.copy()
* StructCount:	someVar.count()
* StructDelete:	someVar.delete()
* StructFind:	someVar.find()
* StructFindValue:	someVar.findValue()
* StructUpdate:	someVar.update()
* StructSort:	someVar.sort()
* StructInsert:	someVar.insert()
* StructEach:	someVar.each()
* StructKeyArray:	someVar.keyArray()
* StructKeyExists:	someVar.keyExists()
* StructKeyList:	someVar.keyList()

The following _Date_ member functions are supported:

* CreateODBCDate:	someVar.createODBCDate()
* CreateODBCDateTime:	someVar.createODBCDateTime()
* DateDiff:	someVar.diff()
* CreateODBCTime:	someVar.createODBCTime()
* LSDateFormat:	someVar.lsDateFormat()
* DatePart:	someVar.datepart()
* DaysInYear:	someVar.daysIn
* Second:	someVar.second()
* Minute:	someVar.minute()
* Hour:	someVar.hour()
* Day:	someVar.day()
* Week:	someVar.week()
* Month:	someVar.month()
* Quarter:	someVar.quarter()
* Year:	someVar.year()
* DaysInMonth:	someVar.daysInMonth()
* DayOfWeek:	someVar.dayOfweek()
* DayOfYear:	someVar.dayOfYear()
* FirstDayOfMonth:	someVar.firstDayOfMonth()
* DateTimeFormat:	someVar.dateTimeFormat()
* TimeFormat:	someVar.timeFormat()
* DateFormat:	someVar.dateFormat()
* DateAdd:	someVar.add()
* DateConvert:	someVar.convert()

The following _Image_ member functions are supported:

* ImageGetWidth:	someVar.getWidth()
* ImageSetDrawingColor:	someVar.setDrawingColor()
* ImageGetBufferedImage:	someVar.getBufferedImage()
* ImageTranslateDrawingAxis:	someVar.translateDrawingAxis()
* ImageSetDrawingStroke:	someVar.setDrawingStroke()
* ImageNegative:	someVar.negative()
* ImageCopy:	someVar.copy()
* ImageDrawRect:	someVar.drawRect()
* ImageCrop:	someVar.crop()
* ImageGetHeight:	someVar.getHeight()
* ImageGetIPTCTag:	someVar.getIPTCTag()
* ImageDrawOval:	someVar.drawOval()
* ImageSharpen:	someVar.sharpen()
* ImageOverlay:	someVar.overlay()
* ImageGetEXIFTag:	someVar.getEXIFTag()
* ImageDrawBeveledRect:	someVar.drawBeveledRect()
* ImageAddBorder:	someVar.addBorder()
* ImageShear:	someVar.shear()
* ImageInfo:	someVar.info()
* ImagePaste:	someVar.paste()
* ImageDrawArc:	someVar.drawArc()
* ImageShearDrawingAxis:	someVar.shearDrawingAxis()
* ImageDrawRoundRect:	someVar.drawRoundRect()  
* ImageGrayscale:	someVar.grayscale()
* ImageSetDrawingTransparency:	someVar.setDrawingTransparency()
* ImageScaleToFit:	someVar.scaleToFit()
* ImageClearRect:	someVar.clearRect()
* ImageTranslate:	someVar.translate()
* ImageFlip:	someVar.flip()
* ImageWriteBase64:	someVar.writeBase64()
* ImageSetBackgroundColor:	someVar.setBackgroundColor()
* ImageDrawLine:	someVar.drawLine()
* ImageDrawQuadraticCurve:	someVar.drawQuadraticCurve()
* ImageRotate:	someVar.rotate()
* ImageGetBlob:	someVar.getBlob()
* ImageWrite:	someVar.write()
* ImageBlur:	someVar.blur()
* ImageRotateDrawingAxis:	someVar.rotateDrawingAxis()
* ImageSetAntialiasing:	someVar.setAntialiasing()
* ImageDrawPoint:	someVar.drawPoint()
* ImageDrawCubicCurve:	someVar.drawCubicCurve()
* ImageXORDrawingMode:	someVar.xorDrawingMode()
* ImageDrawText:	someVar.drawText()
* ImageDrawLines:	someVar.drawLines()
* ImageResize:	someVar.resize()

The following _Spreadsheet_ member functions are supported:

* SpreadsheetDeleteRow:	someVar.deleteRow()
* SpreadsheetFormatColumn:	someVar.formatColumn()
* SpreadsheetShiftRows:	someVar.shiftRows()
* SpreadsheetCreateSheet:	someVar.createSheet()
* SpreadsheetReadBinary:	someVar.readBinary()
* SpreadsheetWrite:	someVar.write()
* SpreadsheetAddRow:	someVar.addRow()
* SpreadsheetShiftColumns:	someVar.shiftColumns()
* SpreadsheetGetCellFormula:	someVar.getCellFormula()
* SpreadsheetDeleteColumns:	someVar.deleteColumns()
* SpreadsheetAddFreezePane:	someVar.addFreezePane()
* SpreadsheetDeleteColumn:	someVar.deleteColumn()
* SpreadsheetSetCellComment:	someVar.setCellComment()
* SpreadsheetSetActiveSheetNumber:	someVar.setActiveSheetNumber()
* SpreadsheetSetHeader:	someVar.setHeader()
* SpreadsheetAddSplitPane:	someVar.addSplitPane()
* SpreadsheetMergeCells:	someVar.mergeCells()
* SpreadsheetFormatRows:	someVar.formatRows()
* SpreadsheetGetCellComment:	someVar.getCellComment()
* SpreadsheetGetCellValue:	someVar.getCellValue()
* SpreadsheetAddInfo:	someVar.addInfo()
* SpreadsheetSetCellValue:	someVar.setCellValue()
* SpreadsheetSetFooter:	someVar.setFooter()
* SpreadsheetRemoveSheet:	someVar.removeSheet()
* SpreadsheetSetRowHeight:	someVar.setRowHeight()
* SpreadsheetSetActiveSheet:	someVar.setActiveSheet()
* SpreadsheetFormatCellRange:	someVar.formatCellRange()
* SpreadsheetFormatCell:	someVar.formatCell()
* SpreadsheetAddRows:	someVar.addRows()
* SpreadsheetFormatColumns:	someVar.formatColumns()
* SpreadsheetAddImage:	someVar.addImage()
* SpreadsheetSetCellFormula:	someVar.setCellFormula()
* SpreadsheetAddColumn:	someVar.addColumn()
* SpreadsheetDeleteRows:	someVar.deleteRows()
* SpreadsheetSetColumnWidth:	someVar.setColumnWidth()
* SpreadsheetFormatRow:	someVar.formatRow()
* SpreadsheetInfo:	someVar.info()

The following _XML_ member functions are supported:

* XmlTransform:	someVar.transform()
* XmlGetNodeType:	someVar.getNodeType()
* XmlChildPos:	someVar.childPos()
* XmlElemNew:	someVar.elemNew()
* XmlSearch:	someVar.search()

The following _Query_ member functions are supported:

* QueryAddColumn:	someVar.addColumn()
* QueryGetRow:	someVar.getRow()
* QueryConvertForGrid:	someVar.convertForGrid()
* QuerySetCell:	someVar.setCell()
* QueryAddRow:	someVar.addRow()
*               someVar.getResult()
    
Member Functions can also be chained, for example:

    s.append("quick brown fox", " ").append("jumps over the lazy dog", " ").ucase().reverse();

result: GOD YZAL EHT REVO SPMUJ XOF NWORB KCIUQ EHT 

_Important Note on a potential Member Function Gotcha_: <br>
Some member functions might fall into underlying Java methods if the strict ColdFusion syntax is not followed. <br>
https://bugbase.adobe.com/index.cfm?event=bug&id=3753710
