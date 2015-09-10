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
						expect(json).toHaveKey("type", "#fileName# did not have key: name");
					}
					
				}
			});

				

		});

		

	}
}