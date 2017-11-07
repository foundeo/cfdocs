component extends="testbox.system.BaseSpec" {
	function run(testResults, testBox) {
		dataDir = ExpandPath("../data/en");
		files = directoryList(dataDir, false, "array");
		index = deserializeJSON(fileRead(dataDir & "/index.json"));

		fileTypes = {tags=[], functions=[], listings=[], components=[]};
		for (filePath in files) {
			json = fileRead(filePath);
			isItJson = isJSON(json);
			fileName = getFileFromPath(filePath);
			if (isItJson) {
				json = deserializeJSON(json);
				if (structKeyExists(json, "type") AND structKeyExists(json,"related")) {
					if (json.type is "tag") {
						arrayAppend(fileTypes.tags, json);
					} else if (json.type is "function") {
						arrayAppend(fileTypes.functions, json);
					} else if (json.type is "listing") {
						arrayAppend(fileTypes.listings, json);
					} else if (json.type is "component") {
						arrayAppend(fileTypes.components, json);
					}
				}
			}
		}

		describe("JSON Related Tests", function() {
			it("should relate to an existing function or tag", function() {
				for(tag in fileTypes.tags) {
					unexisting = arrayFilter(tag.related,function(related) {
						// Added "component" to related types
						return not booleanFormat(arrayFind(index.tags,related) OR arrayFind(index.functions,related) OR arrayFind(index.components,related));
					});
					expect(arrayLen(unexisting) is 0).toBeTrue("#arrayToList(unexisting,', ')# is/are non-existing function(s)/tag(s)");
				}
			});			
			
			it("shouldn't relate to itself", function() {
				for(tag in fileTypes.tags) {
					expect(arrayFind(tag.related,tag.name) is 0).toBeTrue("#tag.name# currently relates to itsef");
				}
			});
		});
	}
}
