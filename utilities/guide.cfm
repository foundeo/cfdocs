<cfscript>
	/* settings */
	dataDir = expandPath('../data/en');
	guideDir = expandPath('../guides/en');
	crlf = chr(13) & chr(10);

	/* copy from \views\doc.cfm */
	engineMap = {
		'coldfusion': 'Adobe ColdFusion',
		'lucee': 'Lucee',
		'openbd': 'OpenBD',
		'railo': 'Railo'
	};

	/* build discouraged filehead */
	savecontent variable='discouragedFileContent' {
		writeOutput(
			'## Discouraged'
			& crlf & crlf
			& '#### The following tags/functions are discouraged to use'
		);
	}

	/* build deprecated filehead */
	savecontent variable='deprecatedFileContent' {
		writeOutput(
			'## Deprecated'
			& crlf & crlf
			& '#### The following tags/functions are deprecated'
		);
	}

	/* build acfonly filehead */
	savecontent variable='acfonlyFileContent' {
		writeOutput(
			'## Adobe ColdFusion only'
			& crlf & crlf
			& '#### The following tags/functions are Adobe ColdFusion only'
		);
	}

	/* build luceeonly filehead */
	savecontent variable='luceeonlyFileContent' {
		writeOutput(
			'## Lucee only'
			& crlf & crlf
			& '#### The following tags/functions are Lucee only'
		);
	}

	/* loop all files from datadir */
	for (file in directoryList(path=dataDir, sort="Name")) {
		dataStruct = deserializeJSON(fileRead(file));

		/* get files with discouraged tags/functions and append them to the file */
		if (structKeyExists(dataStruct, 'discouraged')) {
			discouragedFileContent &= crlf & crlf;
			discouragedFileContent &= '`' & dataStruct['name'] & '`';

			discouragedFileContent &= crlf & crlf;
			discouragedFileContent &= dataStruct['discouraged'];
		}

		/* get files with deprecated tags/functions and append them to the file */
		if (structCount(dataStruct['engines'] ?: {}) > 0) {
			for (engine in dataStruct['engines']) {
				if (structKeyExists(dataStruct['engines'][engine], 'deprecated')) {
					deprecatedFileContent &= crlf & crlf;
					deprecatedFileContent &= '`' & dataStruct['name'] & '`';

					deprecatedFileContent &= ' - Deprecated as of ' & engineMap[engine] & ' ' & dataStruct['engines'][engine]['deprecated'];
				}
			}
		}

		/* get files with server only tags/functions and append them to the file */
		if (structCount(dataStruct['engines'] ?: {}) == 1) {
			for (engine in dataStruct['engines']) {
				if (engine == 'coldfusion') {
					acfonlyFileContent &= crlf & crlf;
					acfonlyFileContent &= '`' & dataStruct['name'] & '`';

					if (dataStruct['engines'][engine]['minimum_version'] != '') {
						acfonlyFileContent &= ' - Minimum Version: ' & dataStruct['engines'][engine]['minimum_version'];
					}
				}
				else if (engine == 'lucee') {
					luceeonlyFileContent &= crlf & crlf;
					luceeonlyFileContent &= '`' & dataStruct['name'] & '`';

					if (dataStruct['engines'][engine]['minimum_version'] != '') {
						luceeonlyFileContent &= ' - Minimum Version: ' & dataStruct['engines'][engine]['minimum_version'];
					}
				}
			}
		}
	}

	/* write all files */
	fileWrite(guideDir & '\discouraged.md', discouragedFileContent);

	fileWrite(guideDir & '\deprecated.md', deprecatedFileContent);

	fileWrite(guideDir & '\acf-only.md', acfonlyFileContent);

	fileWrite(guideDir & '\lucee-only.md', luceeonlyFileContent);
</cfscript>