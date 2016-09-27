component {

/* **********************************************************************************
 *    name: init                                                                    *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-26                                                              *
 * purpose: component constructor.                                                  *
 * *********************************************************************************/
	public component function init(){
		return this;
	}

/* **********************************************************************************
 *    name: processFunctions                                                        *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-26                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	public struct function processFunctions( required array functions ){
		var tmp = {};

		for( f in functions ){
			var filePath = ExpandPath("../data/en/#LCase(i)#.json");

			if( fileExists( filePath ){
				d = DeserializeJSON( FileRead(filePath) );

				if( NOT StructKeyExists(d, "examples") OR NOT IsArray(d.examples) OR NOT ArrayLen(d.examples) ){
					if( StructKeyExists(d, "params") AND ArrayLen(d.params) GT 1 ){
						if(    NOT StructKeyExists(d.params[1], "description")
						    OR NOT Len(d.params[1].description)
						    OR d.params[1].description contains "No Help" ){

							<cfset arrayAppend(data.related, i)>
						}
					}
				}
			}
		}

		return tmp;
	}

/* **********************************************************************************
 *    name: processTags                                                             *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-26                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	public struct function processTags( required array tags ){
		var tmp = {};

		<cfloop array="#application.index.tags#" index="i">
		    <cfset filePath = ExpandPath("../data/en/#LCase(i)#.json")>
		    <cfif fileExists(filePath)>
		        <cfset d = DeserializeJSON( FileRead(filePath))>
		        <cfif NOT StructKeyExists(d, "examples") OR NOT IsArray(d.examples) OR NOT ArrayLen(d.examples)>
		            <cfif StructKeyExists(d, "params") AND ArrayLen(d.params) GT 1>
		                <cfset arrayAppend(data.related, i)>
		            </cfif>
		        <cfelse>
		            <cfset hasExample = hasExample+1>
		        </cfif>
		    </cfif>
		</cfloop>
	}
}