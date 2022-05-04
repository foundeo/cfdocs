 <cfscript>
	param name="url.name" default="";
	filepath = "/assets/img/opengraph/";
	data = {
		name:"CF Docs",
		type:"All",
		description:"UltraFast CFML Documentation Reference.",
		syntax:"",
		member:"",
		script:"",
		engines:{}
		
	}
	url.name = lcase(ReReplace(url.name, "[^a-zA-Z0-9_-]", "", "ALL"));
	if(FileExists(ExpandPath("./data/en/#url.name#.json"))){
		docsData = DeserializeJSON( FileRead(ExpandPath("./data/en/#url.name#.json")));
		filename = "#url.name#.jpg";
		//dump(docsData);
		structAppend(data,docsData,true);
		urlPath = '/' &  url.name;
	} else {
		urlPath = "";
		filename = "defaultimage.jpg";
	}

	if(FileExists( ExpandPath(filepath & filename) )){
		location(url=filepath & filename, addtoken=false);
	} 

    vPos = 55;
    hPos = 30;
    maxlength = 60;

	img=imageNew("",512,256,"RGB","##fafafa");
	img.setAntialiasing("on");

	//Write Tag/Function Name
	style={size="35", font="DejaVu Sans"};
	style2={size="15", font="DejaVu Sans"};
	style4={size="12", font="DejaVu Sans"};
	img.setDrawingColor("##333333")
	img.DrawText(data.name,hPos,vPos,style);
	vPos += 20;
	img.setDrawingColor("##c7254e")
	if(data.keyExists('returns'))img.DrawText("return <#data.returns#>;" ,hPos,vPos,style4);

	img.setDrawingColor("##333333")
	//write function/tag description
	vPos += 25;
	img.DrawText(mid(data.description,1,maxlength),hPos,vPos,style2);
	vPos += 20;
	if(len(data.description) > maxlength){
		secondLine = mid(data.description,maxlength+1,maxlength);
		if(len(data.description) > maxlength * 2) secondLine = trim(mid(data.description,maxlength+1,(maxlength-3))) & '...';
		img.DrawText(secondLine,hPos,vPos,style2);
		vPos += 20;
	}


	if(len(data.syntax)){
		//Write tag syntax
		img.setDrawingColor("##c7254e")
		vPos += 10;
		if(len(data.syntax) > maxlength) data.syntax = mid(data.syntax,1,maxlength-3) & "..."
		img.DrawText('## ' & data.syntax,hPos,vPos,style2);
	}
	if(len(data.script)){
		//Write script syntax
		img.setDrawingColor("##c7254e")
		vPos += 25;
		if(len(data.script) > maxlength) data.script = mid(data.script,1,maxlength-3) & "..."
		img.DrawText(data.script,hPos,vPos,style2);
	}
	if(len(data.member)){
		//Write script syntax
		img.setDrawingColor("##c7254e")
		vPos += 25;
		if(len(data.member) > maxlength) data.member = mid(data.member,1,maxlength-3) & "..."
		img.DrawText(data.member,hPos,vPos,style2);
	}

	//draw dividing line
	img.setDrawingColor("##cccccc")
	vPos += 20;
	img.DrawRect(hPos,vPos,384,2,true);

	vPos += 25;
	img.setDrawingColor("##3dbc9c")
	img.DrawRect(hPos,vPos-16,20,20,true);
	//show url and site name
	img.setDrawingColor("##ffffff")
	img.DrawText(decodeforhtml("CF"),hPos+1,vPos,style2);
	img.setDrawingColor("##444444")
	img.DrawText(decodeforhtml("Docs &bull; cfdocs.org#urlPath#"),hPos+24,vPos,style2);

	style3={size="11"};
	//Blue Dragon Engine Support
	if(data.engines.keyExists('openbd')){
		img.setDrawingColor("##2fa5d7");
		img.drawRect(380,15,23,16,true);
		img.setDrawingColor("##ffffff")
		img.DrawText("BD",385,27,style3);
	}
	
	//Lucee Engine Support
	if(data.engines.keyExists('lucee')){
		img.setDrawingColor("##449caf");
		img.drawRect(408,15,38,16,true);
		img.setDrawingColor("##ffffff")
		img.DrawText("Lucee",413,27,style3);
	}
	
	//ColdFusion Engine Support
	if(data.engines.keyExists('coldfusion')){
		cfversion =  data.engines.coldfusion.minimum_version;
		img.setDrawingColor("##006699");
		if(len(cfversion)){
			img.drawRect(452,15,35,16,true);
		} else {
			img.drawRect(452,15,22,16,true);
		}
		img.setDrawingColor("##ffffff")
		img.DrawText("CF" & cfversion,456,27,style3);
	}

	//Draw bottom green border
    img.setDrawingColor("##3dbc9c")
	img.DrawRect(0,240,512,16,true);
	if(!DirectoryExists(ExpandPath(filepath))) DirectoryCreate(ExpandPath(filepath));
	ImageWrite(img,ExpandPath(filepath & filename));
	cfcontent( reset="true", variable="#toBinary(toBase64(img))#", type="image/jpg");
</cfscript> 
