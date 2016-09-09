component {

	public array function getContributors(){
		var link = "https://api.github.com/repos/foundeo/cfdocs/stats/contributors";

		oService = new http( url=link, method="GET", charset="utf-8", throwonerror="false", timeout="3" );
		response = oService.send().getPrefix();

		if( response.statusCode contains "200" AND IsJSON( response.fileContent ) ){
			return deserializeJSON( response.fileContent );
		}
		return {};
	}

	public array function calcStatistics( required array stats ){
		var contributors = [];
		var count = arrayLen(stats);

		for( x=count; x >= 1; x-- ){
			stat = stats[x];

			if(    !structKeyExists(stat, "author")
				OR isNull(stat.author)
				OR !isStruct(stat.author)
				OR !structKeyExists(stat.author, "html_url") ){
				continue;  // for some cases possibly a bug on github side the author key is null or empty
			}

			person = {};

			person['link']   = stat.author.html_url;
			person['avator'] = len(stat.author.gravatar_id) ? stat.author.gravatar_id : stat.author.avatar_url;
			person['login']  = stat.author.login;

			var additions = 0;
			var deletions = 0;
			var commits = 0;
			var lastMod = 0;

			for( w in stat.weeks ){
				additions = additions + w.a;
				deletions = deletions + w.d;
				commits = commits + w.c;

				if( w.a > 0 OR w.d > 0 OR w.c > 0 AND w.w > lastMod ){
					lastMod = w.w;
				}
			}

			person['lines'] = additions + deletions;
			person['commits'] = commits;
			person['weeksAgo'] = DateDiff( "w", DateAdd("s", lastMod, "1970-01-01 00:00:00"), now() );

			arrayAppend( contributors, person );
		}

		return contributors;
	}
}
