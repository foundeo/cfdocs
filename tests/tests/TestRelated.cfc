component extends="testbox.system.BaseSpec" {
	function run(testResults, testBox) {
		dataDir = ExpandPath("../data/en");
		files = directoryList(dataDir, false, "array");
		tags = deserializeJSON(fileRead(dataDir & "/tags.json"));
		index = deserializeJSON(fileRead(dataDir & "/index.json"));
		funcs = deserializeJSON(fileRead(dataDir & "/functions.json"));

		fileTypes = {tags=[], functions=[], listings=[]};
		for (filePath in files) {
			json = fileRead(filePath);
			isItJson = isJSON(json);
			fileName = getFileFromPath(filePath);
			if (isItJson) {
				json = deserializeJSON(json);
				if (structKeyExists(json, "type") AND structKeyExists(json,"related")) {
					if (json.type IS "tag") {
						arrayAppend(fileTypes.tags, json.name);
					} else if (json.type IS "function") {
						arrayAppend(fileTypes.functions, json.name);
					} else if (json.type IS "listing") {
						arrayAppend(fileTypes.listings, json.name);
					}
				}
			}
		}

		describe("JSON Related Tests", function() {
			it("should relate to an existing function or tag", function() {
				for(tag in fileTypes.tags) {
					unexisting = arrayFilter(tag.related,function(related) {
						return booleanFormat(arrayFind(index.tags,related) OR arrayFind(index.functions,related));
					});
					expect(arrayLen(unexisting) neq 0).toBeTrue("#arrayToList(unexisting,', ')# are non-existing functions/tags");
				}
			});			
			
			it("shouldn't relate to itself", function() {
				for(tag in fileTypes.tags) {
					expect(arrayFind(tag.related,tag.name) neq 0).toBeTrue("#tag.name# currently relates to itsef");
				}
			});
		});
	}
}
