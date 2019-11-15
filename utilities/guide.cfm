<cfscript>
	cfg = {
		'dataDir': expandPath('../data/en'),
		'guideDir': expandPath('../guides/en')
	};

	writeDump(cfg);

	for (file in directoryList(cfg['dataDir'])) {
		dataStruct = deserializeJSON(fileRead(file));

		if (structKeyExists(dataStruct, 'discouraged')) {
			//writeDump(file);
			
			writeDump(dataStruct['name']);
		}

		if (structCount(dataStruct['engines'] ?: {}) == 1) {
			writeDump(dataStruct['engines']);
		}
	}
</cfscript>