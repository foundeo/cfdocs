component extends="testbox.system.BaseSpec" {
	function run(testResults, testBox) {
		dataDir = ExpandPath("../data/en");
		files = directoryList(dataDir, false, "array");
		describe("JSON Format Tests", function() {
			
			for (filePath in files) {
				it("#getFileFromPath(filePath)# should be valid JSON", function() {
					var json = fileRead(filePath);
					var isItJson = isJSON(json);
					expect(json).notToBeEmpty();
					expect(isItJson).toBeTrue();
					if (isItJson) {
						var data = deserializeJSON(json);
						if (getFileFromPath(filePath) != "index.json") {
							expect(data).toHaveKey("name");
							expect(data).toHaveKey("type");
						}
					}
					
				});
			}

		});


	}
}