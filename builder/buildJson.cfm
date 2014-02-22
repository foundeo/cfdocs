<!--- BuildJSON --->
<!--- add form key exists validation etc..... --->

<cfparam name="form['_csrf']" default="" />

<Cfscript>

// fake csrf test -- need to implement if sessions = true
// if(compare(session.csrf,form['_csrf'])) doblah!!!
// dump test
//writedump(form);

variables.json = {

    "name":form.name,
    "type":form.type,
    "syntax":htmleditformat(form.syntax),
    "returns":form.returns,
    "description":form.description,
    "related":listtoarray(form['related'],' ')
    

};

// setup params
// only testing first field --- could enhance this further
variables.paramsNode = [];
if(isarray(form['param-name'])){

   
   //railo looping collection
   loop collection="#form['param-name']#" index="variables.i" item="variables.item"{


    variables.thisparamvalues = listtoarray(form['param-values'][variables.i],chr(10));
    variables.thisparam = {

        "name":variables.item,
        "description":form['param-description'][variables.i],
        "required":form['param-required'][variables.i],
        "default":form['param-default'][variables.i],
        "type":form['param-type'][variables.i],
        "values":variables.thisparamvalues

    };

    //add to main params node
    variables.paramsNode.append(variables.thisparam);


   }



}

// add params to main json
variables.json["params"] = variables.paramsNode;


//init engine form fields

variables.availableEngines = ["coldfusion","railo","openbd"];

// engines
variables.engineNode = {};

loop array="#variables.availableEngines#" index="variables.i" {

                    

                    if(form['engine#variables.i#-supported']){

                    variables.enginestruct = {

                        "minimum_version":form['engine#variables.i#-minimum_version'],
                        "notes":form['engine#variables.i#-notes'],
                        "docs":form['engine#variables.i#-docs']


                    }

                    variables.engineNode[variables.i] = variables.enginestruct;





                }


}

//check there is engines 

if(variables.engineNode.size()){

variables.json["engines"] = variables.engineNode;

}

//Links

variables.linkNode = [];

if(isarray(form['link-url'])){

 //railo looping collection
   loop collection="#form['link-url']#" index="variables.i" item="variables.item"{

     variables.thislink = {

        "url":variables.item,
        "description":form['link-description'][variables.i],
        "title":form['link-title'][variables.i]
        

    };

    variables.linkNode.append(variables.thislink);



   }


}

variables.json["links"] = variables.linkNode;

// Examples


variables.exNode = [];

if(isarray(form['ex-title'])){

 //railo looping collection
   loop collection="#form['ex-title']#" index="variables.i" item="variables.item"{

     variables.thisex = {

        "title":variables.item,
        "description":form['ex-description'][variables.i],
        "code":form['ex-code'][variables.i],
        "result":form['ex-result'][variables.i]
        

    };

    variables.exNode.append(variables.thisex);



   }


}


variables.json["examples"]=variables.exNode;



getPageContext().getOut().clearBuffer();

header name="content-type" value="text/plain";
</Cfscript><cfoutput>#serializeJson(variables.json)#</cfoutput>