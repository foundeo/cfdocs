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
 *    name: process                                                                 *
 *  author: Andrew Penhorwood based on code by Pete Freitag                         *
 * created: 2016-09-26                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	public struct function process( required array routines ){
		var need = {'file':[],'examples':[],'related':[]};

		for( r in routines ){
			var path2file = ExpandPath("../data/en/#LCase(r)#.json");

			if( fileExists( path2file ) ){
				var doc = DeserializeJSON( FileRead( path2file ) );

				if( !hasExample( doc ) ){
					arrayAppend( need.examples, r );
				}

				if( !hasRelated( doc ) ){
					arrayAppend( need.related, r );
				}

			}
			else {
				arrayAppend( need.file, r );
			}
		}

		return need;
	}

/* **********************************************************************************
 *    name: hasExample                                                              *
 *  author: Andrew Penhorwood based on code by Pete Freitag                         *
 * created: 2016-09-26                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	public boolean function hasExample( required struct doc ){
		if( structKeyExists(doc, "examples") AND isArray(doc.examples) AND ArrayLen(doc.examples) ){
			return true;
		}
		return false;
	}

/* **********************************************************************************
 *    name: hasRelated                                                              *
 *  author: Andrew Penhorwood based on code by Pete Freitag                         *
 * created: 2016-09-27                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	public boolean function hasRelated( required struct doc ){
		if( structKeyExists(doc, "related") AND isArray(doc.related) AND ArrayLen(doc.related) ){
			return true;
		}
		return false;
	}
}