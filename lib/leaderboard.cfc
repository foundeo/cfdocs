component {

/* **********************************************************************************
 *    name: init                                                                    *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose: component constructor. requires a gitHUB.com REPO stats URL             *
 * example: https://api.github.com/repos/{login}/{repo}/stats/contributors          *
 * *********************************************************************************/
	public component function init( required struct config ){
		variables['config'] = {
			  'url':''
			, 'timeout':2
			, 'lookup':false
			, 'token':''
		};

		structAppend( variables.config, arguments.config );  // overlay user config on defaults

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
		return processContributors( stats );
	}

/* **********************************************************************************
 *    name: getContributors                                                         *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private array function getContributors(){
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
 *    name: getContributors                                                         *
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

		service.addParam( type="header", name="Accept", value="application/vnd.github.v3+json" );

		if( len(variables.config.token) ){
			service.addParam( type="header", name="Authorization", value="Basic #variables.config.token#:" );
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
	private query function processContributors( required array stats ){
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
		contributor['weeksAgo']   = DateDiff( "w", contributor.lastcommit, now() );

		return contributor;
	}

/* **********************************************************************************
 *    name: createQuery                                                             *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose:                                                                         *
 * *********************************************************************************/
	private query function createQuery(){
		var columns = "name,link,avator,lines,commits,lastcommit,weeksago";
		var dbtypes = "varchar,varchar,varchar,integer,integer,date,integer";

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
