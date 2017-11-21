component extends="testbox.system.BaseSpec" {
	function run(testResults, testBox) {
		dataDir = ExpandPath("../data/en");
		files = directoryList(dataDir, false, "array");
		
		describe("JSON Format Tests", function() {
			it("should be valid isJSON==true", function() {
				for (filePath in files) {
					var json = fileRead(filePath);
					var isItJson = isJSON(json);
					var fileName = getFileFromPath(filePath);
					expect(isItJSON).toBeTrue("#fileName# was NOT valid JSON");					
				}				
			});

			it("should have key: name, type", function() {
				for (filePath in files) {
					var json = fileRead(filePath);
					var isItJson = isJSON(json);
					var fileName = getFileFromPath(filePath);
					if (isItJSON && fileName != "index.json") {
						json = deserializeJSON(json);
						expect(json).toHaveKey("name", "#fileName# did not have key: name");
						expect(json).toHaveKey("type", "#fileName# did not have key: type");
					}					
				}
			});

			it("should have correct data types for all keys", function() {
				for (filePath in files) {
					var json = fileRead(filePath);
					var isItJson = isJSON(json);
					var fileName = getFileFromPath(filePath);
					if (isItJSON) {
						json = deserializeJSON(json);
						if (json.keyExists("related"))
							expect(json.related).toBeArray("#fileName# related key must be an array");
						if (json.keyExists("params"))
							expect(json.params).toBeArray("#fileName# params key must be an array");
						if (json.keyExists("engines"))
							expect(json.engines).toBeStruct("#fileName# engines key must be an struct");
						if (json.keyExists("links"))
							expect(json.links).toBeArray("#fileName# links key must be an array");

						if (json.keyExists("examples")) {
							expect(json.examples).toBeArray("#fileName# examples key must be an array");
							if (isArray(json.examples)) {
								for(var e in json.examples) {
									expect(e).toBeStruct("#fileName# example array element was not a struct.");
									if (isStruct(e)) {
										//example should have title and code at a minimum
										expect(e).toHaveKey("title", "#fileName# example element missing title.");
										expect(e).toHaveKey("code", "#fileName# example missing code.");
										expect(e.title).notToBeEmpty("#fileName# example has empty title.");
										expect(e.code).notToBeEmpty("#fileName# example has empty code.");
									}
								}
							}	
						}
					}					
				}
			});	

			it("should have lower case file names", function() {
				for (filePath in files) {
					var fileName = getFileFromPath(filePath);
					expect(fileName).toBeWithCase(lCase(fileName), "#fileName# was not all lower case");
				}
			});
		});
	}
}
