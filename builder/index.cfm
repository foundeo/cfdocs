
<!--- CFDOC JSON BUILDER --->

<!--- ///
        TODOS:

        Better/Robust Validation
        Auto Parse Syntax arguments into rows for params
        Hook in CSRF (need to enable Sessions)
        Related functions/tags autocomplete tags (Select2 tags)
        Create functional field schemas for easier JSON attributes creation, etc...

        /// --->

<!--- ///
        init some options
        /// --->

   
        <cfscript>

/**
 *  languages (en only for now)
 */

variables.languages = ["en"];

// language select option
// add select box cache options for future language. no need for now.

/**
 *  types
 */
 variables.types = ["tag","function"];

/**
 *  returntypes
 */

 variables.returntypes = ["Any","Array","Binary","Boolean","DateTime","GUID","Numeric","Query","String","Struct","UUID","variableName","void","xml"];

        //return select options cache
        variables.returnTypeSelectOptions ='';
         variables.returntypes.each(function(i){

            variables.returnTypeSelectOptions&= "<option value='#i#'>#i#</option>";
            });


/**
 *  engines
 */
 variables.engines = ["coldfusion","railo","openbd"];



</cfscript>

<cfoutput>
<!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <cfif NOT FindNoCase("cfdocs.org", cgi.server_name)><meta name="ROBOTS" content="NOINDEX, NOFOLLOW"></cfif>
        <cfparam name="request.title" default="">
        <title><cfoutput>#ReReplace(request.title, "[^a-zA-Z0-9 ._-]", "", "ALL")# CFML Documentation</cfoutput></title>
        <link href="//netdna.bootstrapcdn.com/bootswatch/3.0.0/flatly/bootstrap.min.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->

      </head>

      <body>
          <div class="container">
            <div class="page-header" >
              <h3>CFDoc JSON Builder</h3>
          </div>
          <form role="form" style="margin-bottom:400px;" action="buildJson.cfm" id="formdocbuilder" target="_blank" method="POST">
            <div class="form-group">
<label>Language</label> <select class="form-control" name="language"><option value="en">EN</option></select>
            </div>
              <div class="row form-group">

                  <!---///---     name    ---///--->
                  <div class="col-md-6">
                    <label class="control-label"  >Name</label>
                    <input type="text" class="form-control" name="name" placeholder="Enter function/tag name" />


                </div>

                <!---///---     type    ---///--->
                <div class="col-md-6">
                   <label class="control-label" >Type</label>
                   <select class="form-control" name="type"><option value="tag">tag</option><option value="function">function</option></select>

               </div>
           </div>
           <!---///---     syntax    ---///--->
           <div class="form-group">

            <label class="control-label" >Syntax</label>
            <input type="text" class="form-control" name="syntax" placeholder="Enter function/tag syntax" />
            </div>

          
            <div class="row form-group">
           <!---///---     return type    ---///--->
           <div class="col-md-6">
            <label class="control-label"  >Returns</label>
            <select class="form-control" name="returns">#variables.returnTypeSelectOptions#</select>
             </div>

             <!---///---     related    ---///--->
             <div class="col-md-6">
                <label class="control-label"  >Related <small>(space separated)</small></label>
                <input type="text" class="form-control" name="related" placeholder="Enter space separated related tags/functions" />
            </div>

            </div>

            <div class="form-group">
                <label class="control-label" >Description <small class="text-info"> (hopefully something quasi-original. But hey we are developers and we are lazy!)</small></label>

                <textarea name="description" class="form-control" rows="3"></textarea>

            </div>



   <!--- ///
                    Parameters!
                    /// --->
              
                                <div class="panel panel-primary">
                                  <div class="panel-heading ">Params <button type="button" data-tbody="params" id="btnaddParams" class="btn btn-xs btn-info pull-right"><i class="glyphicon glyphicon-plus"></i> add more </button></div>
                                
                                   <table class="table table-striped table-bordered table-condensed">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Type</th>
                                            <th>Required</th>
                                            <th>Default</th>
                                            <th>Description</th>
                                            <th>Example Values <small>(space separated)</small> </th>
                                            <th width="75"></th>
                                        </tr>
                                    </thead>
                                    <tbody id="paramsTbody">
                                        <tr>
                                            <td><input type="text" class="form-control input-sm" name="param-name[]" /></td>
                                            <td><select class="form-control input-sm" name="param-type[]">#variables.returnTypeSelectOptions#</select></td>
                                            <td> <select class="form-control input-sm" name="param-required[]"><option value="0">No</option><option value="1">Yes</option></select></td>
                                            <td><input type="text" class="form-control input-sm" name="param-default[]" /></td>
                                            <td><textarea  class="form-control input-sm" name="param-description[]" rows="3" ></textarea></td>
                                            <td><input type="text" class="form-control input-sm" name="param-values[]" /></td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                          
                        </div>

                    <!--- ///
                            End Parameters
                            /// --->



                    <!--- ///
                            Engines!
                            /// --->
                        
                            <div class="panel panel-primary">
                              <div class="panel-heading ">Engines</div>




                              <table class="table table-striped table-bordered table-condensed">
                                <thead>
                                    <tr>
                                        <th>Engine</th>
                                        <th>Supported</th>
                                        <th width="80">Min Version</th>
                                        <th>Notes</th>
                                        <th>Doc Link</th>

                                    </tr>
                                </thead>
                                <tbody >
                                    <!---///---     Adbo    ---///--->
                                    <tr>
                                        <td>Adobe Coldfusion</td>
                                        <td><select class="form-control input-sm" name="enginecoldfusion-supported"><option value="1">Yes</option><option value="0">No</option></select></td>
                                        <td><input type="text" class="form-control input-sm" name="enginecoldfusion-minimum_version" /></td>
                                        <td><textarea  class="form-control input-sm" name="enginecoldfusion-notes" rows="3" ></textarea></td>
                                        <td><input type="text" class="form-control input-sm" name="enginecoldfusion-docs" /></td>
                                      
                                    </tr>
                                    <!---///---     railo    ---///--->
                                    <tr>
                                        <td>Railo</td>
                                        <td><select class="form-control input-sm" name="engineRailo-supported"><option value="1">Yes</option><option value="0">No</option></select></td>
                                        <td><input type="text" class="form-control input-sm" name="engineRailo-minimum_version" /></td>
                                        <td><textarea  class="form-control input-sm" name="engineRailo-notes" rows="3" ></textarea></td>
                                        <td><input type="text" class="form-control input-sm" name="engineRailo-docs" /></td>
                                       
                                    </tr>

                                    <!---///---     openbd    ---///--->
                                    <tr>
                                        <td>OpenBD</td>
                                        <td><select class="form-control input-sm" name="engineOpenBD-supported"><option value="1">Yes</option><option value="0">No</option></select></td>
                                        <td><input type="text" class="form-control input-sm" name="engineOpenBD-minimum_version" /></td>
                                        <td><textarea  class="form-control input-sm" name="engineOpenBD-notes" rows="3" ></textarea></td>
                                        <td><input type="text" class="form-control input-sm" name="engineOpenBD-docs" /></td>
                                       
                                    </tr>
                                </tbody>
                            </table>
                        </div>


                    <!--- ///
                            Links
                            /// --->
                        
                            <div class="panel panel-default">
                              <div class="panel-heading ">Links <button type="button" data-tbody="link" id="btnaddLinks" class=" btn btn-xs btn-default pull-right"><i class="glyphicon glyphicon-plus"></i> add more </button></div>




                              <table class="table table-striped table-bordered table-condensed">
                                <thead>
                                    <tr>
                                        <th>Url</th>
                                        <th>Title</th>
                                        <th>Description</th>
                                         <th width="75"></th>
                                       
                                    </tr>
                                </thead>
                                <tbody id="linkTbody" >
                                 
                                    <tr>
                                        <td><input type="text" class="form-control input-sm" name="link-url[]" /></td>
                                         <td><input type="text" class="form-control input-sm" name="link-title[]" /></td>
                                            <td><textarea  class="form-control input-sm" name="link-description[]" rows="3" ></textarea></td>
                                      <td></td>
                                      
                                    </tr>
                                  
                                </tbody>
                            </table>
                        </div>



                    <!--- ///
                            examples
                            /// --->
                        
                            <div class="panel panel-default">
                              <div class="panel-heading ">Examples <button type="button" data-tbody="ex" id="btnaddExamples" class="btn btn-xs btn-default pull-right"><i class="glyphicon glyphicon-plus"></i> add more </button></div>




                              <table class="table table-striped table-bordered table-condensed">
                                <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Description</th>
                                        <th>Code</th>
                                        <th>Result</th>
                                         <th width="75"></th>
                                       
                                    </tr>
                                </thead>
                                <tbody id="exTbody" >
                                 
                                    <tr>
                                        <td><input type="text" class="form-control input-sm" name="ex-title[]" /></td>
                                        <td><textarea  class="form-control input-sm" name="ex-description[]" rows="3" ></textarea></td>
                                         <td><textarea  class="form-control input-sm" name="ex-code[]" rows="3" ></textarea></td>
                                             <td><input type="text" class="form-control input-sm" name="ex-result[]" /></td>
                                      <td></td>
                                      
                                    </tr>
                                  
                                </tbody>
                            </table>
                        </div>

<div class="checkbox">
    <label>
      <input type="checkbox" disabled /> Force Overwrite of JSON File if exists. (not implemented)
    </label>
  </div>

  <div class="checkbox">
    <label>
      <input type="checkbox" value="1" disabled id="checkDownloadJson" /> Download JSON File (if checked will download file, otherwise new window shows json) NOT IMPLEMENTED
    </label>
  </div>


      <button type="submit" class="btn btn-info btn-block">Submit</button>

         <button id="btnReset" type="button" class="btn btn-inverse btn-block">Reset</button>
  </form>
</div>


<!--- good old iframe / who has time to code a jquery uploader/ dropzone  --->
<iframe src="" style="display:hidden;width:1px;height:1px" id="dlIframe" name="dlIframe"></iframe>
<!--- JS templates Quick and Dirty --->

<script id="paramsTemplate" type="text/template">
       <tr class="extrarow">
        <td><input type="text" class="form-control input-sm" name="param-name[]" /></td>
        <td><select class="form-control input-sm" name="param-type[]">#variables.returnTypeSelectOptions#</select></td>
         <td> <select class="form-control input-sm" name="param-required[]"><option value="0">No</option><option value="1">Yes</option></select></td>
         <td><input type="text" class="form-control input-sm" name="param-default[]" /></td>
         <td><textarea  class="form-control input-sm" name="param-description[]" rows="3" ></textarea></td>
         <td><input type="text" class="form-control input-sm" name="param-values[]" /></td>
         <td><button type="button" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> remove</button></td>
     </tr>
</script>


<script id="linkTemplate" type="text/template">
       <tr class="extrarow">
                                        <td><input type="text" class="form-control input-sm" name="link-url[]" /></td>
                                         <td><input type="text" class="form-control input-sm" name="link-title[]" /></td>
                                            <td><textarea  class="form-control input-sm" name="link-description[]" rows="3" ></textarea></td>
                                      <td><button type="button" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> remove</button></td>
                                      
                                    </tr>
</script>

<script id="exTemplate" type="text/template">
       <tr class="extrarow">
                                        <td><input type="text" class="form-control input-sm" name="ex-title[]" /></td>
                                        <td><textarea  class="form-control input-sm" name="ex-description[]" rows="3" ></textarea></td>
                                         <td><textarea  class="form-control input-sm" name="ex-code[]" rows="3" ></textarea></td>
                                             <td><input type="text" class="form-control input-sm" name="ex-result[]" /></td>
                                      <td><button type="button" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> remove</button></td>
                                      
                                    </tr>
</script>

  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/js/bootstrap.min.js"></script>

<!--- ///
        INLINE JS UGGGG!!!!! for quick and dirty / should be externalized.....
        /// --->

    <script>



$(window).load(function(){

$('##btnReset').on('click',function(){

resetForm();


});


// remove buttons
 $('##paramsTbody,##linkTbody,##exTbody').on('click','button',function(e){

    e.preventDefault();


   var $this = $(this), $row = $this.parents('tr'),c = confirm('Remove this row?');

   if(c===true){

    $row.remove();

   } 




});


// add rows
$btn = $('##btnaddExamples,##btnaddLinks,##btnaddParams').on('click',function(e){

    e.preventDefault();

    var $this = $(this),
    $section = '##'+$this.attr('data-tbody'),
    $template = $($section+'Template'),
    $tbody = $($section+'Tbody');
   // console.log($tbody);
    $tbody.append($template.html());


})


});

function resetForm(){

$('tr.extrarow').remove();
document.getElementById("formdocbuilder").reset();
$(window).scrollTop(0);

}
    </script>
</body>

</html></cfoutput>