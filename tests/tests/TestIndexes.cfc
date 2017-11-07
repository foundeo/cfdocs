component extends="testbox.system.BaseSpec" {
	function run(testResults, testBox) {
		dataDir = ExpandPath("../data/en");
		files = directoryList(dataDir, false, "array");
		tags = deserializeJSON(fileRead(dataDir & "/tags.json"));
		index = deserializeJSON(fileRead(dataDir & "/index.json"));
		funcs = deserializeJSON(fileRead(dataDir & "/functions.json"));
		describe("JSON Index Tests", function() {
			it("should be in index.json if it is a tag or a function", function() {
				for (filePath in files) {
					var json = fileRead(filePath);
					var isItJson = isJSON(json);
					var fileName = getFileFromPath(filePath);
					if (isItJson) {
						json = deserializeJSON(json);
						if (structKeyExists(json, "type")) {
							if (json.type IS "tag") {
								expect(ArrayFind(index.tags, listFirst(fileName, ".")) NEQ 0).toBeTrue("#json.name# was not in index.json tags index");
							} else if (json.type IS "function") {
								expect(ArrayFind(index.functions, listFirst(fileName, ".")) NEQ 0).toBeTrue("#json.name# was not in index.json function index");
							} else if (json.type IS "listing") {
								expect(ArrayFind(index.categories, listFirst(fileName, ".")) NEQ 0).toBeTrue("#json.name# was not in index.json categories index");
							}
						}
					}
				}
			});
			
			fileTypes = {tags=[], functions=[], listings=[]};
			for (filePath in files) {
				json = fileRead(filePath);
				isItJson = isJSON(json);
				fileName = getFileFromPath(filePath);
				if (isItJson) {
					json = deserializeJSON(json);
					if (structKeyExists(json, "type")) {
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

			it("should be in tags.json if it is a tag", function() {
				for (tag in fileTypes.tags) {
					expect(ArrayFind(tags.related, lCase(tag)) NEQ 0).toBeTrue("#tag# was not in tags.json index");
				}
			});

			it("should be in functions.json if it is a function", function() {
				for (func in fileTypes.functions) {
					expect(ArrayFind(funcs.related, lCase(func)) NEQ 0).toBeTrue("#func# was not in functions.json index");
				}
			});
		});
	}
}
