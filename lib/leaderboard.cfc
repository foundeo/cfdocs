component {

/* **********************************************************************************
 *    name: init                                                                    *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose: component constructor. requires a gitHUB.com REPO stats URL             *
 * example: https://api.github.com/repos/{login}/{repo}/stats/contributors          *
 * *********************************************************************************/
	public component function init( required struct config ){
		setConfig( config );
		checkConfig();
		processConfig();

		return this;
	}

/* **********************************************************************************
 *    name: checkConfig                                                             *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-10                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private void function setConfig( required struct config ){
		var defaults = {
			  'url':''
			, 'lookup':false
			, 'timeout':2
			, 'token':''
		};

		structAppend( defaults, arguments.config );  // overlay user config on defaults

		variables['config'] = defaults;
	}

/* **********************************************************************************
 *    name: checkConfig                                                             *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-10                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private void function checkConfig(){
		if( !len(variables.config.url) ){
			throw( "The gitHub API endpoint is required.  Please add a valid url." );
		}
	}

/* **********************************************************************************
 *    name: processConfig                                                           *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-10                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private void function processConfig(){
		if( len(variables.config.token) ){
			variables.config['token'] = toBase64( variables.config.token );
		}
	}

/* **********************************************************************************
 *    name: get                                                                     *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose: retrieves the gitHub contributor statistics processed into a array      *
 * *********************************************************************************/
	public query function get(){
		var stats = getContributors();
		var qPeople = processContributors( stats );
		return sortPeople( qPeople );
	}

/* **********************************************************************************
 *    name: getContributors                                                         *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private any function getContributors(){
		return call( variables.config.url );
	}

/* **********************************************************************************
 *    name: getPerson                                                               *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private struct function getPerson( required string url, required string login ){
		var person = {};
		person['name'] = left(login,8) != "invalid-" ? login : '-unknown-';

		if( variables.config.lookup && person.name != '-unknown-' ){
			var profile = call( arguments.url );
			person['name'] = NOT isNull(profile.name) ? profile.name : profile.login;
		}

		return person;
	}

/* **********************************************************************************
 *    name: call                                                                    *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private any function call( required string url ){
		var service = new http(
			  url       = arguments.url
			, method    = "GET"
			, charset   = "utf-8"
			, timeout   = variables.config.timeout
			, throwonerror = "false"
		);

		service.addParam( type="header", name="Accept", value="application/vnd.github.json" );
		service.addParam( type="header", name="X-GitHub-Api-Version", value="2022-11-28" );

		if( len(variables.config.token) ){
			service.addParam( type="header", name="Authorization", value="Bearer #variables.config.token#:" );
		}

		var response = service.send().getPrefix();

		if( val(response.statusCode) == 200 && isJSON( response.fileContent ) ){
			return deserializeJSON( response.fileContent );
		}

		return {};
	}

/* **********************************************************************************
 *    name: processContributors                                                     *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private query function processContributors( required any stats ){
		var qContributors = createQuery();

		for( var stat in stats ){
			if( structKeyExists(stat, "author") and isStruct(stat.author) and structKeyExists(stat.author, "html_url") ){
				var person = getPerson( stat.author.url, stat.author.login );

				person['link']   = stat.author.html_url;
				person['avator'] = len(stat.author.gravatar_id) ? stat.author.gravatar_id : stat.author.avatar_url;

				structAppend( person, calcStatistics( stat.weeks ) );
				addRow( qContributors, person );
			}
		}
		return qContributors;
	}

/* **********************************************************************************
 *    name: calcStatistics                                                          *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose: calculate the statistics of a constibutor                               *
 * *********************************************************************************/
	private struct function calcStatistics( required array weeks ){
		var contributor = {};
		var additions = 0;
		var deletions = 0;
		var commits = 0;
		var lastMod = 0;
		var factor = 10; // give more weight to commits over lines altered

		for( var wk in weeks ){
			additions = additions + wk.a;
			deletions = deletions + wk.d;
			commits = commits + wk.c;

			if( wk.a > 0 OR wk.d > 0 OR wk.c > 0 AND wk.w > lastMod ){
				lastMod = wk.w;
			}
		}

		contributor['lines'] = additions + deletions;
		contributor['commits'] = commits;
		contributor['lastcommit'] = DateAdd("s", lastMod, "1970-01-01 00:00:00");
		contributor['weeksAgo'] = val( DateDiff( "w", contributor.lastcommit, now() ) );
		contributor['effort'] = ( contributor.lines/(1+contributor.weeksAgo) ) + ( contributor.commits * factor );

		return contributor;
	}

/* **********************************************************************************
 *    name: sortPeople                                                              *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-10-14                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private query function sortPeople( required query qPeople ){
		var qry = new Query();

		qry.setDBType('query');
		qry.setAttributes(p:qPeople);
		qry.setSQL( "SELECT * FROM p ORDER BY p.effort DESC" );

		return qry.execute().getResult();
	}

/* **********************************************************************************
 *    name: createQuery                                                             *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private query function createQuery(){
		var columns = "name,link,avator,lines,commits,effort,lastcommit,weeksago";
		var dbtypes = "varchar,varchar,varchar,integer,integer,integer,date,integer";

		return queryNew( columns, dbtypes );
	}

/* **********************************************************************************
 *    name: addRow                                                                  *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private void function addRow( required query qContributors, required struct person ){
		queryAddRow( qContributors, person );
	}
}
