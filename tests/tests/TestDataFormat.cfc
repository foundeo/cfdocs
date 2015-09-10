component extends="testbox.system.BaseSpec" {
	function run(testResults, testBox) {
		dataDir = ExpandPath("../data/en");
		files = directoryList(dataDir, false, "array");
		filesWithErrors = [];


		describe("JSON Format Tests", function() {
			debug(arguments,"inside describe args");
			it("should be valid isJSON==true", function() {
				for (filePath in files) {
					var json = fileRead(filePath);
					var isItJson = isJSON(json);
					if (!isItJSON) {
						filesWithErrors.append(getFileFromPath(filePath));	
					}
					expect(isItJSON).toBeTrue();
					
					
				}
				debug(arguments,"inside it args");
			});

			it("should have key: name, type", function() {
				for (filePath in files) {
					var json = fileRead(filePath);
					var isItJson = isJSON(json);
					var fileName = getFileFromPath(filePath);
					if (isItJSON && fileName != "index.json") {
						json = deserializeJSON(json);
						if (!json.keyExists("name") || !json.keyExists("type")) {
							filesWithErrors.append(fileName);
							debug(json, "Missing key name or type in #fileName#");	
						}
						expect(json).toHaveKey("name");
						expect(json).toHaveKey("type");
					}
					
				}
				debug(arguments,"inside it args");
			});

				

		});

		describe("There should be no errors", function(){
			it("filesWithErrors should be empty", function() {
				expect(filesWithErrors).toBe([]);
			});	
		});


	}
}