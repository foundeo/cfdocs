<cfscript>
	/* settings */
	cfg = {
		'dataDir': expandPath('../data/en'),
		'guideDir': expandPath('../guides/en'),
		'crlf': chr(13) & chr(10),
		'engineMap': {	// copy from \views\doc.cfm
			'coldfusion': 'Adobe ColdFusion',
			'lucee': 'Lucee',
			'openbd': 'OpenBD',
			'railo': 'Railo'
		},
		'discouraged': {
			'fileName': 'discouraged.md',
			'fileHead': '## Discouraged'
		},
		'deprecated': {
			'fileName': 'deprecated.md',
			'fileHead': '## Deprecated'
		},
		'acfonly': {
			'fileName': 'acf-only.md',
			'fileHead': '## Adobe ColdFusion only'
		},
		'luceeonly': {
			'fileName': 'lucee-only.md',
			'fileHead': '## Lucee only'
		}
	};

	/* build discouraged filehead */
	discouragedFileContent = cfg['discouraged']['fileHead'];
	discouragedFileContent &= cfg['crlf'] & cfg['crlf'];
	discouragedFileContent &= '####The following tags/functions are discouraged to use';

	/* build deprecated filehead */
	deprecatedFileContent = cfg['deprecated']['fileHead'];
	deprecatedFileContent &= cfg['crlf'] & cfg['crlf'];
	deprecatedFileContent &= '####The following tags/functions are deprecated';

	/* build acfonly filehead */
	acfonlyFileContent = cfg['acfonly']['fileHead'];
	acfonlyFileContent &= cfg['crlf'] & cfg['crlf'];
	acfonlyFileContent &= '####The following tags/functions are Adobe ColdFusion only';

	/* build luceeonly filehead */
	luceeonlyFileContent = cfg['luceeonly']['fileHead'];
	luceeonlyFileContent &= cfg['crlf'] & cfg['crlf'];
	luceeonlyFileContent &= '####The following tags/functions are Lucee only';

	/* loopo all files from datadir */
	for (file in directoryList(cfg['dataDir'])) {
		dataStruct = deserializeJSON(fileRead(file));

		/* get files with discouraged tags/functions and append them to the file */
		if (structKeyExists(dataStruct, 'discouraged')) {
			discouragedFileContent &= cfg['crlf'] & cfg['crlf'];
			discouragedFileContent &= '###### `' & dataStruct['name'] & '`';

			discouragedFileContent &= cfg['crlf'] & cfg['crlf'];
			discouragedFileContent &= dataStruct['discouraged'];
		}

		/* get files with deprecated tags/functions and append them to the file */
		if (structCount(dataStruct['engines'] ?: {}) > 0) {
			for (engine in dataStruct['engines']) {
				if (structKeyExists(dataStruct['engines'][engine], 'deprecated')) {
					writeDump(dataStruct['name']);
					deprecatedFileContent &= cfg['crlf'] & cfg['crlf'];
					deprecatedFileContent &= '###### `' & dataStruct['name'] & '`';

					deprecatedFileContent &= cfg['crlf'] & cfg['crlf'];
					deprecatedFileContent &= 'Deprecated as of ' & cfg['engineMap'][engine] & ' ' & dataStruct['engines'][engine]['deprecated'];
				}
			}
		}

		/* get files with server only tags/functions and append them to the file */
		if (structCount(dataStruct['engines'] ?: {}) == 1) {
			writeDump(dataStruct['engines']);
		}
	}

	/* write all files */
	fileWrite(cfg['guideDir'] & '\' & cfg['discouraged']['fileName'], discouragedFileContent);

	fileWrite(cfg['guideDir'] & '\' & cfg['deprecated']['fileName'], deprecatedFileContent);

	fileWrite(cfg['guideDir'] & '\' & cfg['acfonly']['fileName'], acfonlyFileContent);

	fileWrite(cfg['guideDir'] & '\' & cfg['luceeonly']['fileName'], luceeonlyFileContent);
</cfscript>