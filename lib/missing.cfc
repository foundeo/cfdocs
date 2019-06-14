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
		var need = {
			  'file':[]
			, 'name':[]
			, 'type':[]
			, 'syntax':[]
			, 'returns':[]
			, 'related':[]
			, 'description':[]
			, 'params':[]
			, 'links':[]
			, 'examples':[]
		};

		for( r in routines ){
			var path2file = ExpandPath("../data/en/#LCase(r)#.json");

			if( fileExists( path2file ) ){
				var doc = DeserializeJSON( FileRead( path2file ) );

				if( !hasSimpleNode( "name", doc ) ){
					arrayAppend( need.name, r );
				}

				if( !hasSimpleNode( "type", doc ) ){
					arrayAppend( need.type, r );
				}

				if( !hasSimpleNode( "syntax", doc ) ){
					arrayAppend( need.syntax, r );
				}

				if( !hasSimpleNode( "returns", doc ) ){
					arrayAppend( need.returns, r );
				}

				if( !hasArrayNode( "related", doc ) ){
					arrayAppend( need.related, r );
				}

				if( !hasSimpleNode( "description", doc ) ){
					arrayAppend( need.description, r );
				}

				if( !hasArrayNode( "params", doc ) ){
					arrayAppend( need.params, r );
				}

				if( !hasArrayNode( "links", doc ) ){
					arrayAppend( need.links, r );
				}

				if( !hasArrayNode( "examples", doc ) ){
					arrayAppend( need.examples, r );
				}

			}
			else {
				arrayAppend( need.file, r );
			}
		}

		return need;
	}

/* **********************************************************************************
 *    name: hasName                                                                 *
 *  author: Andrew Penhorwood 	                                                    *
 * created: 2016-10-14                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	public boolean function hasSimpleNode( required string node, required struct doc ){
		if( structKeyExists(doc, node) AND len(doc[node]) ){
			return true;
		}
		return false;
	}

/* **********************************************************************************
 *    name: hasArrayNode                                                            *
 *  author: Andrew Penhorwood based on code by Pete Freitag                         *
 * created: 2016-09-26                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	public boolean function hasArrayNode( required string node, required struct doc ){
		if( structKeyExists(doc, node) AND isArray(doc[node]) AND ArrayLen(doc[node]) ){
			return true;
		}
		return false;
	}

}