component {

/* **********************************************************************************
 *    name: init                                                                    *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose: component constructor. requires a gitHUB.com REPO stats URL             *
 * example: https://api.github.com/repos/{login}/{repo}/stats/contributors          *
 * *********************************************************************************/
	public component function init( required string url, numeric timeout = 2 ){
		variables['link'] = arguments.url;
		variables['timeout'] = arguments.timeout;

		return this;
	}

/* **********************************************************************************
 *    name: get                                                                     *
 *  author: Andrew Penhorwood                                                       *
 * created: 2016-09-09                                                              *
 * purpose: retrieves the gitHub contributor statistics processed into a array      *
 * *********************************************************************************/
	public array function get(){
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
		var service = new http( url=variables.link, method="GET", charset="utf-8", throwonerror="false", timeout=variables.timeout );
		var response = service.send().getPrefix();

		if( response.statusCode contains "200" AND IsJSON( response.fileContent ) ){
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
	private array function processContributors( required array stats ){
		var contributors = [];

		for( var stat in stats ){
			if( structKeyExists(stat, "author") and isStruct(stat.author) and structKeyExists(stat.author, "html_url") ){
				var person = {};

				person['link']   = stat.author.html_url;
				person['avator'] = len(stat.author.gravatar_id) ? stat.author.gravatar_id : stat.author.avatar_url;
				person['login']  = stat.author.login;

				structAppend( person, calcStatistics( stat.weeks ) );
				arrayAppend( contributors, person );
			}
		}
		return contributors;
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
}
